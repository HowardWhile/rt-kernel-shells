#!/bin/bash

# 宣告各個參數
power_management_params=(
  "cpuidle.off=1"
  "intel_idle.max_cstate=0"
  # "cpufreq.off=1"
  "processor.max_cstate=0"
  # "processor_idle.max_cstate=0"
  # "intel_pstate=disable"
  # "rcupdate.rcu_cpu_stall_suppress=1"
  # "idle=poll"
)

core_isolation_params=(
  # "nohz_full=3"
  # "isolcpus=3"
  # "rcu_nocbs=3"
  # "irqaffinity=0"
)

graphics_settings_params=(
  # "i915.enable_rc6=0"
  # "i915.enable_dc=0"
  # "i915.disable_power_well=0"
  # "i915.enable_guc=2"
)

# 生成參數字串
power_management_str=$(IFS=" " ; echo "${power_management_params[*]}")
core_isolation_str=$(IFS=" " ; echo "${core_isolation_params[*]}")
graphics_settings_str=$(IFS=" " ; echo "${graphics_settings_params[*]}")

# 組合所有參數
all_params="$power_management_str $core_isolation_str $graphics_settings_str"

# 修改 GRUB 設定檔
sudo sed -i "/^GRUB_CMDLINE_LINUX_DEFAULT=/ s/\"$/ $all_params\"/" /etc/default/grub


# 更新 GRUB 設定
sudo update-grub