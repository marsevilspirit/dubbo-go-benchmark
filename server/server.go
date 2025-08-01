package main

import (
	"context"
	"net/http"
	_ "net/http/pprof"

	_ "dubbo.apache.org/dubbo-go/v3/imports"
	"dubbo.apache.org/dubbo-go/v3/protocol"
	"dubbo.apache.org/dubbo-go/v3/server"
	"github.com/dubbogo/gost/log/logger"
	greet "github.com/marsevilspirit/dubbo-go-benchmark/proto"
)

type GreetTripleServer struct {
}

func (srv *GreetTripleServer) Greet(ctx context.Context, req *greet.GreetRequest) (*greet.GreetResponse, error) {
	resp := &greet.GreetResponse{Greeting: req.Name}
	return resp, nil
}

func main() {
	go func() {
		logger.Info("Starting pprof server on :6060")
		if err := http.ListenAndServe("0.0.0.0:6060", nil); err != nil {
			logger.Errorf("pprof server failed: %v", err)
		}
	}()

	srv, err := server.NewServer(
		server.WithServerProtocol(
			protocol.WithPort(20000),
			protocol.WithTriple(),
		),
	)
	if err != nil {
		panic(err)
	}

	if err := greet.RegisterGreetServiceHandler(srv, &GreetTripleServer{}); err != nil {
		panic(err)
	}

	if err := srv.Serve(); err != nil {
		logger.Error(err)
	}
}
