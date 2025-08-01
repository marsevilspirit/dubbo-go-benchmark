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
  Count:	1698710
  Total:	300.01 s
  Slowest:	72.02 ms
  Fastest:	0.10 ms
  Average:	6.45 ms
  Requests/sec:	5662.14

Response time histogram:
  0.096  [1]      |
  7.288  [667486] |∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎
  14.481 [275130] |∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎
  21.673 [46217]  |∎∎∎
  28.865 [7707]   |
  36.058 [2249]   |
  43.250 [844]    |
  50.442 [272]    |
  57.634 [74]     |
  64.827 [16]     |
  72.019 [4]      |

Latency distribution:
  10 % in 1.67 ms 
  25 % in 2.49 ms 
  50 % in 4.71 ms 
  75 % in 8.75 ms 
  90 % in 12.29 ms 
  95 % in 15.04 ms 
  99 % in 22.19 ms 

Status code distribution:
  [OK]            1698685 responses   
  [Unavailable]   25 responses   
```

### old triple

```sh
Summary:
  Count:	1669423
  Total:	300.01 s
  Slowest:	72.48 ms
  Fastest:	0.11 ms
  Average:	6.66 ms
  Requests/sec:	5564.61

Response time histogram:
  0.106  [1]      |
  7.344  [674929] |∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎
  14.582 [262283] |∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎
  21.819 [49372]  |∎∎∎
  29.057 [8955]   |∎
  36.295 [2896]   |
  43.533 [1063]   |
  50.770 [381]    |
  58.008 [90]     |
  65.246 [28]     |
  72.484 [2]      |

Latency distribution:
  10 % in 1.65 ms 
  25 % in 2.47 ms 
  50 % in 4.58 ms 
  75 % in 8.80 ms 
  90 % in 12.65 ms 
  95 % in 15.57 ms 
  99 % in 23.45 ms 

Status code distribution:
  [OK]            1669422 responses   
  [Unavailable]   1 responses   
```
