package com.lzh.constant;

import lombok.Getter;

/**
 * @author 志昊的刘
 * @date 2022/6/19
 */
@Getter
public enum LightStageConstant {
    STAGE_ONE("红绿灯第一阶段-左右", 100),
    STAGE_TWO("红绿灯第二阶段-直走", 200),
    STAGE_THREE("红绿灯第三阶段-右", 300),
    STAGE_FOUR("红绿灯第四阶段-右", 400);

    private final String message;
    private final Integer stage;

    LightStageConstant(String message, Integer stage) {
        this.message = message;
        this.stage = stage;
    }
}
