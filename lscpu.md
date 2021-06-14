#  <div align="center"> LSCPU COMMAND </div>

### Summary of Task
```
Explain lscpu command output and create a MD file
```
### Description

```
lscpu gathers CPU architecture information from sysfs, /proc/cpuinfo and any applicable architecture-specific libraries (e.g. libr‐
tas on Powerpc).  The command output can be optimized for parsing or for easy readability by humans.  The information includes, for
example,  the number of CPUs, threads, cores, sockets, and Non-Uniform Memory Access (NUMA) nodes.  There is also information about
the CPU caches and cache sharing, family, model, bogoMIPS, byte order, and stepping.
```

### Output the lscpu command
```
Architecture:                    x86_64
CPU op-mode(s):                  32-bit, 64-bit
Byte Order:                      Little Endian
Address sizes:                   39 bits physical, 48 bits virtual
CPU(s):                          4
On-line CPU(s) list:             0-3
Thread(s) per core:              2
Core(s) per socket:              2
Socket(s):                       1
NUMA node(s):                    1
Vendor ID:                       GenuineIntel
CPU family:                      6
Model:                           69
Model name:                      Intel(R) Core(TM) i5-4310U CPU @ 2.00GHz
Stepping:                        1
CPU MHz:                         1685.472
CPU max MHz:                     3000.0000
CPU min MHz:                     800.0000
BogoMIPS:                        5188.01
Virtualization:                  VT-x
L1d cache:                       64 KiB
L1i cache:                       64 KiB
L2 cache:                        512 KiB
L3 cache:                        3 MiB
NUMA node0 CPU(s):               0-3
Vulnerability Itlb multihit:     KVM: Mitigation: Split huge pages
Vulnerability L1tf:              Mitigation; PTE Inversion; VMX conditional cach
                                 e flushes, SMT vulnerable
Vulnerability Mds:               Mitigation; Clear CPU buffers; SMT vulnerable
Vulnerability Meltdown:          Mitigation; PTI
Vulnerability Spec store bypass: Mitigation; Speculative Store Bypass disabled v
                                 ia prctl and seccomp
Vulnerability Spectre v1:        Mitigation; usercopy/swapgs barriers and __user
                                  pointer sanitization
Vulnerability Spectre v2:        Mitigation; Full generic retpoline, IBPB condit
                                 ional, IBRS_FW, STIBP conditional, RSB filling
Vulnerability Srbds:             Mitigation; Microcode
Vulnerability Tsx async abort:   Not affected
Flags:                           fpu vme de pse tsc msr pae mce cx8 apic sep mtr
                                 r pge mca cmov pat pse36 clflush dts acpi mmx f
                                 xsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rd
                                 tscp lm constant_tsc arch_perfmon pebs bts rep_
                                 good nopl xtopology nonstop_tsc cpuid aperfmper
                                 f pni pclmulqdq dtes64 monitor ds_cpl vmx smx e
                                 st tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_
                                 1 sse4_2 x2apic movbe popcnt tsc_deadline_timer
                                  aes xsave avx f16c rdrand lahf_lm abm cpuid_fa
                                 ult epb invpcid_single pti ssbd ibrs ibpb stibp
                                  tpr_shadow vnmi flexpriority ept vpid ept_ad f
                                 sgsbase tsc_adjust bmi1 avx2 smep bmi2 erms inv
                                 pcid xsaveopt dtherm ida arat pln pts md_clear 
                                 flush_l1d
                                 
```


