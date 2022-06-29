package com.lzh.controller.light;

import com.lzh.constant.LightStageConstant;
import lombok.extern.slf4j.Slf4j;

import javax.swing.*;

/**
 * @author 志昊的刘
 * @date 2022/6/18
 */
@Slf4j
public class UpLight extends Light implements Runnable {
    // 子类共享父类的静态变量
    private static Integer stage;

    public UpLight(JLabel light) {
        super(light,
                new ImageIcon(DownLight.class.getResource("/com/lzh/resources/light_U_l.png")),
                new ImageIcon(DownLight.class.getResource("/com/lzh/resources/light_U_r+s.png")),
                new ImageIcon(DownLight.class.getResource("/com/lzh/resources/light_U_off.png")));
    }

    @Override
    public void run() {
        stage = LightStageConstant.STAGE_THREE.getStage();
        lightBeginChange(stage);
    }
}
