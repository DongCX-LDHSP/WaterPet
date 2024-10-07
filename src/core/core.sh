# 基础功能实现

# 记录喝水量
function water_pet_record_mount {
    water_mount="$1"
    if [ "${water_mount}" == "" ];then
        # 没有传入喝水量时直接返回
        return 0
    fi
    # TODO 喝水量统计功能待实现
    echo -e "water mount reoord is NOT available currently"
}

# 记录喝水次数
function water_pet_record_count {
    let WATER_PET_DRINK_WATER_COUNT++
}

# 清除当前提醒喝水的标记
function water_pet_clear_current_remind {
    export WATER_PET_CURRENT_REMIND_COUNT=0
    export WATER_PET_DRINKING_WATER_DELAY_FLAG=0
}
