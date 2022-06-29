package com.lzh.controller.car;

import com.lzh.controller.light.Light;
import lombok.Data;

import javax.swing.*;

/**
 * @author 志昊的刘
 * @date 2022/6/18
 */
@Data
public abstract class Road {
    private JLabel car;
    private Light light;

    public Road(JLabel car, Light light) {
        this.car = car;
        this.light = light;
    }
}
