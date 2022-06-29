package com.lzh.window;

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
import com.lzh.controller.light.DownLight;
import com.lzh.controller.light.LeftLight;
import com.lzh.controller.light.RightLight;
import com.lzh.controller.light.UpLight;
import com.lzh.controller.monitor.Monitor;
import com.lzh.threadFactory.MyThreadFactory;
import com.lzh.utils.BuildCarUtil;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;

import javax.swing.*;
import java.awt.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.*;
import java.util.concurrent.locks.LockSupport;

/**
 * @author 志昊的刘
 * @date 2022/6/17
 */
@Slf4j
@Data
public class WindowInit {
    private static JFrame jFrame;

    // 红绿灯
    private static DownLight downLight;
    private static UpLight upLight;
    private static LeftLight leftLight;
    private static RightLight rightLight;

    // 道路(车辆)
    private LeftRoadRight leftRoadRight;
    private LeftRoadStraight leftRoadStraight;
    private LeftRoadLeft leftRoadLeft;
    private RightRoadRight rightRoadRight;
    private RightRoadStraight rightRoadStraight;
    private RightRoadLeft rightRoadLeft;
    private UpRoadLeft upRoadLeft;
    private UpRoadStraight upRoadStraight;
    private UpRoadRight upRoadRight;
    private DownRoadRight downRoadRight;
    private DownRoadStraight downRoadStraight;
    private DownRoadLeft downRoadLeft;

    //    private ThreadPoolExecutor pool;
    private ThreadPoolExecutor pool;

    private JMenu menu;

    // 锁集合，用于线程之间的通信
    public static List<Thread> lockList;

    public static volatile boolean state = true;
    private Set<Thread> set;


    public WindowInit() {
        // 1.初始化窗口
        initFrame();
        // 2.初始化菜单条
        initMenuBar();
        // 5.初始化路灯
        initPauseButton();
        initLight();
        initCar();
        // 3.初始化车辆、道路、start按钮
        // 6.初始化Start按钮(启动线程)
        initStartButton();
        // 4.初始化地图、路标
        initMap();
    }

    private void initPauseButton() {

        JButton STOP = new JButton("");
        STOP.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/Pause.png")));
        STOP.addActionListener(e -> {

            state = !state;
            if (state) {
                // 使用LockSupport线程阻塞与唤醒工具类实现暂停功能
                for (Thread thread : set) {
                    LockSupport.unpark(thread);
                }

            }
//            pool
        });
        STOP.setBounds(662, 746, 160, 63);
//        jFrame.getContentPane().add(STOP);
        jFrame.getLayeredPane().add(STOP, JLayeredPane.PALETTE_LAYER);
    }

    private void initStartButton() {

        // start按钮
        JButton startButton = new JButton("");
        startButton.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/Start.png")));
        // 创建自定义线程池
        //BlockingQueue queue = new ArrayBlockingQueue<>(10);
        //pool = new ThreadPoolExecutor(20, 25, 5, TimeUnit.SECONDS, queue);
        pool = (ThreadPoolExecutor) Executors.newCachedThreadPool();
        set = new HashSet<>();
        // TODO 如何获取线程池中的线程 https://www.cnblogs.com/itbac/p/12210680.html
        ThreadFactory oldThreadFactory = pool.getThreadFactory();
        pool.setThreadFactory(new MyThreadFactory(oldThreadFactory, set));

        Monitor monitor = new Monitor(jFrame, menu, this.pool);
        // start开始事件
        startButton.addActionListener(e -> {
            this.pool.execute(downLight);
            this.pool.execute(upLight);
            this.pool.execute(leftLight);
            this.pool.execute(rightLight);

            this.pool.execute(leftRoadRight);
            this.pool.execute(leftRoadStraight);
            this.pool.execute(leftRoadLeft);

            this.pool.execute(rightRoadRight);
            this.pool.execute(rightRoadStraight);
            this.pool.execute(rightRoadLeft);

            this.pool.execute(upRoadLeft);
            this.pool.execute(upRoadStraight);
            this.pool.execute(upRoadRight);

            this.pool.execute(downRoadLeft);
            this.pool.execute(downRoadRight);
            this.pool.execute(downRoadStraight);

            this.pool.execute(monitor);

//            new Thread(downLight, "下边-路灯").start();
//            new Thread(upLight, "上面-路灯").start();
//            new Thread(leftLight, "左面-路灯").start();
//            new Thread(rightLight, "右面-路灯").start();
//
//
//            new Thread(leftRoadRight, "左边-向右转的车").start();
//            new Thread(leftRoadStraight, "左边-直走的车").start();
//            new Thread(leftRoadLeft, "左边-向左转的车").start();
//
//            new Thread(rightRoadRight, "右边-向右转的车").start();
//            new Thread(rightRoadStraight, "右边-直走的车").start();
//            new Thread(rightRoadLeft, "右边-向左转的车").start();
//

//            new Thread(upRoadLeft, "上边-向左转的车").start();
//            new Thread(upRoadStraight, "上边-直走的车").start();
//            new Thread(upRoadRight, "上边-向右转的车").start();
//
//            new Thread(downRoadRight, "下边-向右转的车").start();
//            new Thread(downRoadLeft, "下边-向左转的车").start();
//            new Thread(downRoadStraight, "下边-直走的车").start();

        });
        startButton.setBounds(662, 650, 160, 63);
//        jFrame.getContentPane().add(startButton);
        jFrame.getLayeredPane().add(startButton, JLayeredPane.PALETTE_LAYER);
    }

    public static void main(String[] args) {
        WindowInit window = new WindowInit();
        window.jFrame.setVisible(true);
    }


    private void initMap() {
        // 初始化路标
        JLabel compass = new JLabel("");
        compass.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/compass.jpg")));
        compass.setBounds(65, 62, 155, 155);
//        jFrame.getContentPane().add(compass);
        jFrame.getLayeredPane().add(compass, JLayeredPane.PALETTE_LAYER);

        // 初始化地图
        JLabel map = new JLabel();
        map.setBounds(0, 0, 896, 857);
//        jFrame.getContentPane().add(map);
        map.setHorizontalAlignment(SwingConstants.CENTER);
        map.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/road1.jpg")));
        jFrame.getLayeredPane().add(map, JLayeredPane.DEFAULT_LAYER);
    }

    /**
     * 初始化车辆、道路、按钮
     */
    private void initCar() {

        // 左侧车辆
        JLabel carLeftStraight = BuildCarUtil.leftStraightBuild();
        JLabel carLeftRight = BuildCarUtil.leftRightBuild();
        JLabel carLeftLeft = BuildCarUtil.leftLeftBuild();

        // 右侧车辆
        JLabel carRightStraight = BuildCarUtil.rightStraightBuild();
        JLabel carRightRight = BuildCarUtil.rightRightBuild();
        JLabel carRightLeft = BuildCarUtil.rightLeftBuild();

        // 上边车辆
        JLabel carUpLeft = BuildCarUtil.upLeftBuild();
        JLabel carUpStraight = BuildCarUtil.upStraightBuild();
        JLabel carUpRight = BuildCarUtil.upRightBuild();

        // 下边车辆
        JLabel carDownLeft = BuildCarUtil.downLeftBuild();
        JLabel carDownRight = BuildCarUtil.downRightBuild();
        JLabel carDownStraight = BuildCarUtil.downStraightBuild();

        leftRoadRight = new LeftRoadRight(carLeftRight, leftLight);
        leftRoadStraight = new LeftRoadStraight(carLeftStraight, leftLight);
        leftRoadLeft = new LeftRoadLeft(carLeftLeft, leftLight);

        rightRoadRight = new RightRoadRight(carRightRight, rightLight);
        rightRoadStraight = new RightRoadStraight(carRightStraight, rightLight);
        rightRoadLeft = new RightRoadLeft(carRightLeft, rightLight);

        upRoadLeft = new UpRoadLeft(carUpLeft, upLight);
        upRoadStraight = new UpRoadStraight(carUpStraight, upLight);
        upRoadRight = new UpRoadRight(carUpRight, upLight);

        downRoadRight = new DownRoadRight(carDownRight, downLight);
        downRoadLeft = new DownRoadLeft(carDownLeft, downLight);
        downRoadStraight = new DownRoadStraight(carDownStraight, downLight);
    }

    private void initLight() {
        JLabel Light_L = new JLabel("");
        Light_L.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/light.png")));
        Light_L.setBounds(305, 430, 54, 137);
//        jFrame.getContentPane().add(Light_L);
        jFrame.getLayeredPane().add(Light_L,JLayeredPane.PALETTE_LAYER);

        JLabel Light_U = new JLabel("");
        Light_U.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/light_U.png")));
        Light_U.setBounds(319, 272, 137, 54);
//        jFrame.getContentPane().add(Light_U);
        jFrame.getLayeredPane().add(Light_U,JLayeredPane.PALETTE_LAYER);

        JLabel Light_R = new JLabel("");
        Light_R.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/light_R.png")));
        Light_R.setBounds(557, 287, 54, 137);
//        jFrame.getContentPane().add(Light_R);
        jFrame.getLayeredPane().add(Light_R,JLayeredPane.PALETTE_LAYER);

        JLabel Light_D = new JLabel("");
        Light_D.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/light_D.png")));
        Light_D.setBounds(463, 534, 137, 54);
//        jFrame.getContentPane().add(Light_D);
        jFrame.getLayeredPane().add(Light_D,JLayeredPane.PALETTE_LAYER);

        downLight = new DownLight(Light_D);
        upLight = new UpLight(Light_U);
        leftLight = new LeftLight(Light_L);
        rightLight = new RightLight(Light_R);
    }

    private void initMenuBar() {
        // 菜单条
        JMenuBar jMenuBar = new JMenuBar();
        jMenuBar.setLocation(0, 0);
        jMenuBar.setSize(95, 22);
        jMenuBar.setBackground(Color.WHITE);
        // 刷新菜单
        menu = new JMenu("活动线程：0");
        menu.setBackground(Color.LIGHT_GRAY);
        menu.setHorizontalAlignment(SwingConstants.CENTER);

        jMenuBar.add(menu);
        jFrame.getLayeredPane().add(jMenuBar,JLayeredPane.PALETTE_LAYER);
    }

    private void initFrame() {
        jFrame = new JFrame();
        jFrame.setBounds(400, 100, 900, 900);
        // 退出即关闭
        jFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        // 禁止拉伸
        jFrame.setResizable(false);
        // 布局设空
        JPanel contentPane = new JPanel();
        jFrame.setContentPane(contentPane);
        contentPane.setLayout(null);
//        contentPane.setOpaque(true);

        JLayeredPane layeredPane = jFrame.getLayeredPane();
        layeredPane.setLayout(null);

    }


    public static JFrame getjFrame() {
        return jFrame;
    }

    public static LeftLight getLeftLight() {
        return leftLight;
    }

    public static DownLight getDownLight() {
        return downLight;
    }

    public static UpLight getUpLight() {
        return upLight;
    }

    public static RightLight getRightLight() {
        return rightLight;
    }
}
