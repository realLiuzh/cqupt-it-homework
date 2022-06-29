package com.lzh.constant;

import lombok.Getter;

/**
 * @author 志昊的刘
 * @date 2022/6/20
 */
@Getter
public enum BoundsConstant {
    LEFT("左边界最小值", -65),
    RIGHT("右边界最大值", 880),
    UP("上边界最小值", -80),
    DOWN("下边界最大值", 950);
    private final String message;
    private final Integer num;

    BoundsConstant(String message, Integer num) {
        this.message = message;
        this.num = num;
    }
}
