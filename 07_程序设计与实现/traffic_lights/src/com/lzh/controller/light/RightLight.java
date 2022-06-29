package com.lzh.controller.light;

import com.lzh.constant.LightStageConstant;
import lombok.extern.slf4j.Slf4j;

import javax.swing.*;

/**
 * @author 志昊的刘
 * @date 2022/6/18
 */
@Slf4j
public class RightLight extends Light implements Runnable {

    // 子类共享父类的静态变量
    private static Integer stage;

    public RightLight(JLabel light) {
        super(light,
                new ImageIcon(DownLight.class.getResource("/com/lzh/resources/light_R_l.png")),
                new ImageIcon(DownLight.class.getResource("/com/lzh/resources/light_R_r+s.png")),
                new ImageIcon(DownLight.class.getResource("/com/lzh/resources/light_R_off.png")));
    }

    @Override
    public void run() {
        stage = LightStageConstant.STAGE_ONE.getStage();
        lightBeginChange(stage);
    }

}
