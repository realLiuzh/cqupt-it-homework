package com.lzh.controller.car.up;

import com.lzh.constant.BoundsConstant;
import com.lzh.controller.car.Road;
import com.lzh.controller.light.Light;
import com.lzh.window.WindowInit;
import lombok.extern.slf4j.Slf4j;

import javax.swing.*;
import java.util.concurrent.locks.LockSupport;

/**
 * @author 志昊的刘
 * @date 2022/6/18
 */
@Slf4j
public class UpRoadStraight extends Road implements Runnable {

    public UpRoadStraight(JLabel car, Light light) {
        super(car, light);
    }

    @Override
    public void run() {
        log.info("上边-直走的车发车");
        int x, y;
        JLabel car = getCar();
        Light light = getLight();
        while (true) {
            if (car.getBounds().y > BoundsConstant.DOWN.getNum()) break;
            // 车子的移动可以用线程通信来做
            // 看灯的情况进行移动
            if (light != null && light.isStraightGo()) {
                while (true) {
                    if (!WindowInit.state) {
                        LockSupport.park();
                    }
                    x = car.getBounds().x;
                    y = car.getBounds().y;
                    if (y > BoundsConstant.DOWN.getNum()) break;
//                    log.info("y:{}",y);
                    car.setLocation(x, y + 10);

                    try {
                        Thread.sleep(100);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

    }
}
