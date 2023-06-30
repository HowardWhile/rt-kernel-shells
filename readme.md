# Readme

調整文件`/etc/default/grub`之中的變數`GRUB_CMDLINE_LINUX_DEFAULT`



## Kernel Parameters

For our purposes we can focus just on a few of the kernel parameters:

“Power and clocking management” group:

- cpuidle.off=1
- intel_idle.max_cstate=0
- cpufreq.off=1
- processor.max_cstate=0
- processor_idle.max_cstate=0
- intel_pstate=disable
- rcupdate.rcu_cpu_stall_suppress=1
- idle=poll

“Core isolation” group:

- nohz_full=3
- isolcpus=3
- rcu_nocbs=3
- irqaffinity=0

“Graphics Settings” group:

- i915.enable_rc6=0

- i915.enable_dc=0
- i915.disable_power_well=0
- 915.enable_guc=2

The main idea with the kernel parameters is to combine and mix these  parameters for the best results depending on the particular use cases.

> 參考網站https://www.acontis.com/en/ubuntu-linux-realtime-howto.html

