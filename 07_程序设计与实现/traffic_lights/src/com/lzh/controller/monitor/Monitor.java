package com.lzh.controller.monitor;

import com.lzh.controller.car.down.DownRoadLeft;
import com.lzh.controller.car.down.DownRoadRight;
import com.lzh.controller.car.down.DownRoadStraight;
import com.lzh.controller.car.left.LeftRoadLeft;
import com.lzh.controller.car.left.LeftRoadRight;
import com.lzh.controller.car.left.LeftRoadStraight;
import com.lzh.controller.car.right.RightRoadLeft;
import com.lzh.controller.car.right.RightRoadRight;
import com.lzh.controller.car.right.RightRoadStraight;
import com.lzh.controller.car.up.UpRoadLeft;
import com.lzh.controller.car.up.UpRoadRight;
import com.lzh.controller.car.up.UpRoadStraight;
import com.lzh.utils.BuildCarUtil;
import com.lzh.window.WindowInit;
import lombok.extern.slf4j.Slf4j;

import javax.swing.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ThreadPoolExecutor;

/**
 * @author 志昊的刘
 * @date 2022/6/19
 */
@SuppressWarnings("all")
@Slf4j
public class Monitor implements Runnable {

    private JFrame jFrame;
    private JMenu menu;
    private ThreadPoolExecutor pool;
    private List<Runnable> list;

    public Monitor(JFrame jFrame, JMenu menu, ThreadPoolExecutor pool) {
        this.jFrame = jFrame;
        this.menu = menu;
        this.pool = pool;
    }

    //            log.warn("线程池中正在执行任务的线程数量：{}", pool.getActiveCount());
//                log.warn("线程池当前的线程数量：{}", pool.getPoolSize());
//                log.warn("线程池的最大线程数量：{}", pool.getMaximumPoolSize());
    @Override
    public void run() {
        while (true) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("活动线程：");
            int activeCount = pool.getActiveCount();
            stringBuilder.append(activeCount);
            menu.setText(stringBuilder.toString());
            if (activeCount <= 9) {
                log.warn("添加车辆....");
                // 循环添加车辆
                for (int i = 0; i < 4; i++) {

                    randomAddCar();
                }
            }
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }


    private void randomAddCar() {
        int randomIndex = new Random().nextInt(12);
        switch (randomIndex) {
            case 0: {
                JLabel carLeftStraight = BuildCarUtil.leftStraightBuild();
                pool.execute(new LeftRoadStraight(carLeftStraight, WindowInit.getLeftLight()));
                break;
            }
            case 1: {
                JLabel carLeftRight = BuildCarUtil.leftRightBuild();
                pool.execute(new LeftRoadRight(carLeftRight, WindowInit.getLeftLight()));
                break;
            }
            case 2: {
                JLabel carLeftLeft = BuildCarUtil.leftLeftBuild();
                pool.execute(new LeftRoadLeft(carLeftLeft, WindowInit.getLeftLight()));
                break;
            }
            case 3: {
                JLabel carRightStraight = BuildCarUtil.rightStraightBuild();
                pool.execute(new RightRoadStraight(carRightStraight, WindowInit.getRightLight()));
                break;
            }
            case 4: {
                JLabel carRightRight = BuildCarUtil.rightRightBuild();
                pool.execute(new RightRoadRight(carRightRight, WindowInit.getRightLight()));
                break;
            }
            case 5: {
                JLabel carRightLeft = BuildCarUtil.rightLeftBuild();
                pool.execute(new RightRoadLeft(carRightLeft, WindowInit.getRightLight()));
                break;
            }
            case 6: {
                JLabel carUpLeft = BuildCarUtil.upLeftBuild();
                pool.execute(new UpRoadLeft(carUpLeft, WindowInit.getUpLight()));
                break;
            }
            case 7: {
                JLabel carUpStraight = BuildCarUtil.upStraightBuild();
                pool.execute(new UpRoadStraight(carUpStraight, WindowInit.getUpLight()));
                break;
            }
            case 8: {
                JLabel carUpRight = BuildCarUtil.upRightBuild();
                pool.execute(new UpRoadRight(carUpRight, WindowInit.getUpLight()));
                break;
            }
            case 9: {
                JLabel carDownLeft = BuildCarUtil.downLeftBuild();
                pool.execute(new DownRoadLeft(carDownLeft, WindowInit.getDownLight()));
                break;
            }
            case 10: {
                JLabel carDownRight = BuildCarUtil.downRightBuild();
                pool.execute(new DownRoadRight(carDownRight, WindowInit.getDownLight()));
                break;
            }
            case 11: {
                JLabel carDownStraight = BuildCarUtil.downStraightBuild();
                pool.execute(new DownRoadStraight(carDownStraight, WindowInit.getDownLight()));
                break;
            }

        }
        jFrame.validate();

    }
}
