package com.lzh.controller.car.left;

import com.lzh.constant.BoundsConstant;
import com.lzh.controller.car.Road;
import com.lzh.controller.light.Light;
import com.lzh.window.WindowInit;
import lombok.extern.slf4j.Slf4j;

import javax.swing.*;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.LockSupport;

/**
 * @author 志昊的刘
 * @date 2022/6/18
 */
@Slf4j
public class LeftRoadLeft extends Road implements Runnable {

    public LeftRoadLeft(JLabel car, Light light) {
        super(car, light);
    }


    @Override
    public void run() {
        log.info("左边-向左转的车发车");
        int x, y;
        JLabel car = getCar();
        Light light = getLight();

        while (true) {
            if (car.getBounds().y < BoundsConstant.UP.getNum()) break;
            // 车子的移动可以用线程通信来做
            // 看灯的情况进行移动
            if (light != null && light.isLeftGo()) {
                while (true) {
                    if (!WindowInit.state) {
                        LockSupport.park();
                    }
                    x = car.getBounds().x;
                    y = car.getBounds().y;
                    if (y < BoundsConstant.UP.getNum()) break;
                    if (x >= 465) {
                        car.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car3_up.png")));
                        car.setLocation(x, y - 4);
                    } else {
                        car.setLocation(x + 5, y);
                    }
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
