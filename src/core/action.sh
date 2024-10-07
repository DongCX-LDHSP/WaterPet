#!/bin/bash

source ./core.sh

# 喝水动作, 当传入第一个参数时为喝水量
function drink_water {
    water_mount="$1"
    water_pet_record_count
    water_pet_record_mount "${water_mount}"
    water_pet_clear_current_remind
}

# 延迟喝水
function drink_water_later {
    export WATER_PET_DRINKING_WATER_DELAY_FLAG=1
}

# TODO 没办法进行方便的四则运算是个问题
export WATER_PET_LAST_REMIND_TIME_IN_REMIND_STATE=0

# 提醒喝水功能, 存在以下几种场景需要提醒喝水
function remind_water_drink {
    # 进入提醒喝水状态之后的提醒间隔, 单位 min, 不对外开放
    WATER_PET_REMIND_DRINK_WATER_GAP_IN_REMIND_STATE=5
    # 获取当前的分钟数
    cur_min
}
