#!/bin/bash
GPU_PATH="/sys/class/drm/card1/device"

gpu_usage=$(cat "$GPU_PATH/gpu_busy_percent" 2>/dev/null || echo "N/A")
used_gib=$(awk '{printf "%.1f", $1/1024/1024/1024}' "$GPU_PATH/mem_info_gtt_used")

echo "   ${gpu_usage}% - ${used_gib} GiB "
