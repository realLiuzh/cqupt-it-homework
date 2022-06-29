package com.lzh.controller.car.down;

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
public class DownRoadRight extends Road implements Runnable {

    public DownRoadRight(JLabel car, Light light) {
        super(car, light);
    }

    @Override
    public void run() {
        log.info("下边-向右转的车发车");
        int x, y;
        JLabel car = getCar();
        Light light = getLight();
        while (true) {
            if (car.getBounds().x > BoundsConstant.RIGHT.getNum()) break;

            // 车子的移动可以用线程通信来做
            // 看灯的情况进行移动
            if (light != null && light.isRightGo()) {
                while (true) {
                    if (!WindowInit.state) {
                        LockSupport.park();
                    }
                    x = car.getBounds().x;
//                    log.info("x:{}",x);
                    y = car.getBounds().y;
                    if (x > BoundsConstant.RIGHT.getNum()) break;
                    if (y <= 520) {
                        car.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car6_D_r.png")));
                        car.setLocation(x + 4, y);
                    } else {
                        car.setLocation(x, y - 4);
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
