# TOP

## Verificar consumo de CPU, Memória, Load AVG

```bash
top

top - 09:42:52 up 7 days, 16:02,  1 user,  load average: 0.02, 0.03, 0.12
Tasks: 106 total,   1 running, 105 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.6 us,  0.5 sy,  0.0 ni, 98.6 id,  0.0 wa,  0.0 hi,  0.3 si,  0.0 st
MiB Mem :   7868.0 total,   6300.8 free,   1126.2 used,    441.0 buff/cache
MiB Swap:   2048.0 total,   2048.0 free,      0.0 used.   6403.8 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                                                          
 406756 rfahham   20   0   11.3g 170560  47600 S   4.7   2.1 176:51.73 node                                                                                                             
 406677 rfahham   20   0 1335796 112100  46212 S   1.0   1.4   4:50.76 node                                                                                                             
    247 root      20   0 2168680  48820  29056 S   0.3   0.6  12:17.93 containerd                                                                                                       
 406697 rfahham   20   0 1077444  83100  40968 S   0.3   1.0  13:53.56 node                                                                                                             
1650157 root      20   0    2500    124      0 S   0.3   0.0   0:00.81 Relay(1650158)                                                                                                   
1650158 rfahham   20   0  992780  47800  37996 S   0.3   0.6   0:02.76 node                                                                                                             
1650184 rfahham   20   0  996324  51304  37884 S   0.3   0.6   0:05.80 node                                                                                                             
1666169 rfahham   20   0    7912   3764   3076 R   0.3   0.0   0:00.04 top                                                                                                              
      1 root      20   0  167196  14692   8264 S   0.0   0.2  18:37.01 systemd

```

## Verificar consumo dos cores

```bash
top

Depois, apertar o caracter "1"

top - 09:42:52 up 7 days, 16:02,  1 user,  load average: 0.02, 0.03, 0.12
Tasks: 106 total,   1 running, 105 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.6 us,  0.5 sy,  0.0 ni, 98.6 id,  0.0 wa,  0.0 hi,  0.3 si,  0.0 st
MiB Mem :   7868.0 total,   6300.8 free,   1126.2 used,    441.0 buff/cache
MiB Swap:   2048.0 total,   2048.0 free,      0.0 used.   6403.8 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                                                          
 406756 rfahham   20   0   11.3g 170560  47600 S   4.7   2.1 176:51.73 node                                                                                                             
 406677 rfahham   20   0 1335796 112100  46212 S   1.0   1.4   4:50.76 node                                                                                                             
    247 root      20   0 2168680  48820  29056 S   0.3   0.6  12:17.93 containerd                                                                                                       
 406697 rfahham   20   0 1077444  83100  40968 S   0.3   1.0  13:53.56 node                                                                                                             
1650157 root      20   0    2500    124      0 S   0.3   0.0   0:00.81 Relay(1650158)                                                                                                   
1650158 rfahham   20   0  992780  47800  37996 S   0.3   0.6   0:02.76 node                                                                                                             
1650184 rfahham   20   0  996324  51304  37884 S   0.3   0.6   0:05.80 node                                                                                                             
1666169 rfahham   20   0    7912   3764   3076 R   0.3   0.0   0:00.04 top                                                                                                              
      1 root      20   0  167196  14692   8264 S   0.0   0.2  18:37.01 systemd   

```

