# dubbo-go-benchmark

### 测试环境

```sh
Linux ROG 6.15.8-arch1-1 #1 SMP PREEMPT_DYNAMIC Thu, 24 Jul 2025 18:18:11 +0000 x86_64 GNU/Linux
LSB Version:	n/a
Distributor ID:	Arch
Description:	Arch Linux
Release:	rolling
Codename:	n/a
Architecture:                x86_64
  CPU op-mode(s):            32-bit, 64-bit
  Address sizes:             39 bits physical, 48 bits virtual
  Byte Order:                Little Endian
CPU(s):                      32
  On-line CPU(s) list:       0-31
Vendor ID:                   GenuineIntel
  Model name:                13th Gen Intel(R) Core(TM) i9-13980HX
    CPU family:              6
    Model:                   183
    Thread(s) per core:      2
    Core(s) per socket:      24
    Socket(s):               1
    Stepping:                1
    CPU(s) scaling MHz:      22%
    CPU max MHz:             5600.0000
    CPU min MHz:             800.0000
    BogoMIPS:                4838.40
    Flags:                   fpu vme de pse tsc msr pae mce cx8 apic sep mtrr p
                             ge mca cmov pat pse36 clflush dts acpi mmx fxsr ss
                             e sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm c
                             onstant_tsc art arch_perfmon pebs bts rep_good nop
                             l xtopology nonstop_tsc cpuid aperfmperf tsc_known
                             _freq pni pclmulqdq dtes64 monitor ds_cpl vmx est 
                             tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4
                             _2 x2apic movbe popcnt tsc_deadline_timer aes xsav
                             e avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_
                             fault epb ssbd ibrs ibpb stibp ibrs_enhanced tpr_s
                             hadow flexpriority ept vpid ept_ad fsgsbase tsc_ad
                             just bmi1 avx2 smep bmi2 erms invpcid rdseed adx s
                             map clflushopt clwb intel_pt sha_ni xsaveopt xsave
                             c xgetbv1 xsaves split_lock_detect user_shstk avx_
                             vnni dtherm ida arat pln pts hwp hwp_notify hwp_ac
                             t_window hwp_epp hwp_pkg_req hfi vnmi umip pku osp
                             ke waitpkg gfni vaes vpclmulqdq rdpid movdiri movd
                             ir64b fsrm md_clear serialize arch_lbr ibt flush_l
                             1d arch_capabilities
Virtualization features:     
  Virtualization:            VT-x
Caches (sum of all):         
  L1d:                       896 KiB (24 instances)
  L1i:                       1.3 MiB (24 instances)
  L2:                        32 MiB (12 instances)
  L3:                        36 MiB (1 instance)
NUMA:                        
  NUMA node(s):              1
  NUMA node0 CPU(s):         0-31
Vulnerabilities:             
  Gather data sampling:      Not affected
  Ghostwrite:                Not affected
  Indirect target selection: Not affected
  Itlb multihit:             Not affected
  L1tf:                      Not affected
  Mds:                       Not affected
  Meltdown:                  Not affected
  Mmio stale data:           Not affected
  Reg file data sampling:    Mitigation; Clear Register File
  Retbleed:                  Not affected
  Spec rstack overflow:      Not affected
  Spec store bypass:         Mitigation; Speculative Store Bypass disabled via 
                             prctl
  Spectre v1:                Mitigation; usercopy/swapgs barriers and __user po
                             inter sanitization
  Spectre v2:                Mitigation; Enhanced / Automatic IBRS; IBPB condit
                             ional; PBRSB-eIBRS SW sequence; BHI BHI_DIS_S
  Srbds:                     Not affected
  Tsa:                       Not affected
  Tsx async abort:           Not affected
               total        used        free      shared  buff/cache   available
Mem:            30Gi       6.1Gi        12Gi       308Mi        12Gi        24Gi
Swap:           15Gi          0B        15Gi

```

### new triple

```sh
Summary:
  Count:	1346820
  Total:	300.01 s
  Slowest:	87.09 ms
  Fastest:	0.10 ms
  Average:	8.22 ms
  Requests/sec:	4489.22

Response time histogram:
  0.098  [1]      |
  8.798  [609062] |∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎
  17.497 [339618] |∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎
  26.196 [42195]  |∎∎∎
  34.895 [6412]   |
  43.595 [1917]   |
  52.294 [617]    |
  60.993 [130]    |
  69.692 [34]     |
  78.392 [12]     |
  87.091 [2]      |

Latency distribution:
  10 % in 2.23 ms 
  25 % in 3.97 ms 
  50 % in 7.33 ms 
  75 % in 10.80 ms 
  90 % in 14.53 ms 
  95 % in 17.62 ms 
  99 % in 25.63 ms 

Status code distribution:
  [Unavailable]   4 responses         
  [OK]            1346816 responses   

Error distribution:
  [2]   rpc error: code = Unavailable desc = error reading from server: read tcp 127.0.0.1:54550->127.0.0.1:20000: use of closed network connection   
  [1]   rpc error: code = Unavailable desc = error reading from server: read tcp 127.0.0.1:54608->127.0.0.1:20000: use of closed network connection   
  [1]   rpc error: code = Unavailable desc = error reading from server: read tcp 127.0.0.1:54552->127.0.0.1:20000: use of closed network connection  
```

### old triple

```sh
``Summary:
  Count:	1549097
  Total:	300.01 s
  Slowest:	75.13 ms
  Fastest:	0.09 ms
  Average:	7.18 ms
  Requests/sec:	5163.53

Response time histogram:
  0.088  [1]      |
  7.593  [640594] |∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎
  15.098 [293952] |∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎
  22.602 [51919]  |∎∎∎
  30.107 [8965]   |∎
  37.612 [2935]   |
  45.116 [1161]   |
  52.621 [364]    |
  60.126 [82]     |
  67.630 [22]     |
  75.135 [5]      |

Latency distribution:
  10 % in 1.72 ms 
  25 % in 2.63 ms 
  50 % in 5.24 ms 
  75 % in 9.55 ms 
  90 % in 13.27 ms 
  95 % in 16.31 ms 
  99 % in 24.31 ms 

Status code distribution:
  [OK]            1549086 responses   
  [Canceled]      2 responses         
  [Unavailable]   9 responses         

Error distribution:
  [1]   rpc error: code = Unavailable desc = error reading from server: read tcp 127.0.0.1:43566->127.0.0.1:20000: use of closed network connection   
  [1]   rpc error: code = Unavailable desc = error reading from server: read tcp 127.0.0.1:43582->127.0.0.1:20000: use of closed network connection   
  [2]   rpc error: code = Unavailable desc = error reading from server: read tcp 127.0.0.1:43588->127.0.0.1:20000: use of closed network connection   
  [1]   rpc error: code = Unavailable desc = error reading from server: read tcp 127.0.0.1:43514->127.0.0.1:20000: use of closed network connection   
  [2]   rpc error: code = Unavailable desc = error reading from server: read tcp 127.0.0.1:43466->127.0.0.1:20000: use of closed network connection   
  [2]   rpc error: code = Canceled desc = grpc: the client connection is closing                                                                      
  [1]   rpc error: code = Unavailable desc = error reading from server: read tcp 127.0.0.1:43468->127.0.0.1:20000: use of closed network connection   
  [1]   rpc error: code = Unavailable desc = error reading from server: read tcp 127.0.0.1:43550->127.0.0.1:20000: use of closed network connection   
```
