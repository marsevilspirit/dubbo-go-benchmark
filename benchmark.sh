#!/usr/bin/env bash

set -e

DATE=$(date '+%Y-%m-%d')

OUTPUTFILE="${DATE}/ghz_result.json"
PPROFFILE="${DATE}/pprof_result.pb.gz"

echo "${OUTPUTFILE}"
echo "${PPROFFILE}"

mkdir -p "$(dirname ${OUTPUTFILE})"
mkdir -p "$(dirname ${PPROFFILE})"

# start dubbo-go triple server
go run server/server.go &
BACKEND_PID=$!
clean_up () {
    ARG=$?
    pkill -P $BACKEND_PID
    exit $ARG
}
trap clean_up EXIT

sleep 2

# Make sure the backend is still alive
ps -p $BACKEND_PID > /dev/null || (echo "> backend failed"; exit 1)

# Capture profiling data with pprof
go tool pprof -proto -output "${PPROFFILE}" "http://localhost:6060/debug/pprof/profile?seconds=30" &

echo "> running benchmark"
ghz --config ghz-test.json -o "${OUTPUTFILE}" -O json

mv "${OUTPUTFILE}" "${OUTPUTFILE}.full"
jq 'del(.details)' "${OUTPUTFILE}.full" > "$OUTPUTFILE"
rm "${OUTPUTFILE}.full"

jq -r '"rps: \(.rps), average: \(.average/100000), slowest: \(.slowest/100000), fastest: \(.fastest/100000)"' "$OUTPUTFILE"
echo "> finished benchmark"
