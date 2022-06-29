package com.lzh.controller.light;

import com.lzh.constant.LightChangeTimeConstant;
import com.lzh.constant.LightStageConstant;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;

import javax.swing.*;

/**
 * @author 志昊的刘
 * @date 2022/6/18
 */
@Data
@Slf4j
@SuppressWarnings("all")
public abstract class Light {
    // 交通灯的JLabel
    private JLabel light;

    // 三种红绿灯的状态图
    private ImageIcon lightLeftAndRight;
    private ImageIcon lightStraight;
    private ImageIcon lightRight;

    // 状态(汽车参考
    private volatile boolean isLeftGo = false;
    private volatile boolean isStraightGo = false;
    private volatile boolean isRightGo = false;

    public Light(JLabel light, ImageIcon lightLeftAndRight, ImageIcon lightStraight, ImageIcon lightRight) {
        this.light = light;
        this.lightLeftAndRight = lightLeftAndRight;
        this.lightStraight = lightStraight;
        this.lightRight = lightRight;
    }

    public void lightBeginChange(Integer stage) {
        while (true) {
            if (stage.equals(LightStageConstant.STAGE_ONE.getStage())) {
                goLeftAndRight();
                stage += 100;
            } else if (stage.equals(LightStageConstant.STAGE_TWO.getStage())) {
                goStraightAndRight();
                stage += 100;
            } else if (stage.equals(LightStageConstant.STAGE_THREE.getStage())) {
                goRight();
                stage += 100;
            } else if (stage.equals(LightStageConstant.STAGE_FOUR.getStage())) {
                goRight();
                stage = LightStageConstant.STAGE_ONE.getStage();
            }
            try {
                Thread.sleep(LightChangeTimeConstant.LIGHTWAITTIME);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public void goRight() {
        log.info("向右转");
        isRightGo = true;
        isLeftGo = false;
        isStraightGo = false;
        this.light.setIcon(lightRight);
    }

    public void goStraightAndRight() {
        log.info("直走+向右转");
        isStraightGo = true;
        isRightGo = true;
        isLeftGo = false;
        this.light.setIcon(lightStraight);

    }

    public void goLeftAndRight() {
        log.info("向右转+向右转");
        isLeftGo = true;
        isRightGo = true;
        isStraightGo = false;
        this.light.setIcon(lightLeftAndRight);

    }
}
