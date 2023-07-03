# Readme

## 開關桌面環境

`desktop-env-disable.sh` 終端機模式

`desktop-env-enable.sh ` 恢復成桌面模式

> 要重開機才會生效
>
> https://www.cyberciti.biz/faq/switch-boot-target-to-text-gui-in-systemd-linux/
>
> https://blog.csdn.net/wsp_1138886114/article/details/120909563
>
> https://blog.csdn.net/inthat/article/details/107140558



## IgH EtherCAT

配置好之後

`igh-ec-start.sh` 啟動etherlab的EC-master

`igh-ec-stop.sh` 停止etherlab的EC-master

其實就是

```shell
sudo /etc/init.d/ethercat start
sudo /etc/init.d/ethercat stop
```

> https://icube-robotics.github.io/ethercat_driver_ros2/quickstart/usage.html

## grub-patch

`grub-patch.sh` 調整文件`/etc/default/grub`之中的變數`GRUB_CMDLINE_LINUX_DEFAULT`

`grub-un-patch.sh` 還原

### Kernel Parameters

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

