package com.lzh.utils;

import com.lzh.window.WindowInit;

import javax.swing.*;

/**
 * @author 志昊的刘
 * @date 2022/6/20
 */
public class BuildCarUtil {

    public static JLabel leftStraightBuild() {
        JLabel carLeftStraight = new JLabel("");
        carLeftStraight.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car1.png")));
        carLeftStraight.setBounds(142, 470, 70, 70);
//        WindowInit.getjFrame().getContentPane().add(carLeftStraight);
        WindowInit.getjFrame().getLayeredPane().add(carLeftStraight, JLayeredPane.MODAL_LAYER);
        return carLeftStraight;
    }

    public static JLabel leftRightBuild() {
        JLabel carLeftRight = new JLabel("");
        carLeftRight.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car2.png")));
        carLeftRight.setBounds(142, 525, 70, 70);
//        WindowInit.getjFrame().getContentPane().add(carLeftRight);
        WindowInit.getjFrame().getLayeredPane().add(carLeftRight, JLayeredPane.MODAL_LAYER);
        return carLeftRight;
    }

    public static JLabel leftLeftBuild() {
        JLabel carLeftLeft = new JLabel("");
        carLeftLeft.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car3.png")));
        carLeftLeft.setBounds(142, 410, 80, 80);
//        WindowInit.getjFrame().getContentPane().add(carLeftLeft);
        WindowInit.getjFrame().getLayeredPane().add(carLeftLeft, JLayeredPane.MODAL_LAYER);
        return carLeftLeft;
    }

    public static JLabel rightStraightBuild() {
        JLabel carRightStraight = new JLabel("");
        carRightStraight.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car3_R_road.png")));
        carRightStraight.setBounds(691, 325, 80, 80);
//        WindowInit.getjFrame().getContentPane().add(carRightStraight);
        WindowInit.getjFrame().getLayeredPane().add(carRightStraight, JLayeredPane.MODAL_LAYER);
        return carRightStraight;
    }

    public static JLabel rightRightBuild() {
        JLabel carRightRight = new JLabel("");
        carRightRight.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car7_D_l.png")));
        carRightRight.setBounds(691, 270, 80, 80);
//        WindowInit.getjFrame().getContentPane().add(carRightRight);
        WindowInit.getjFrame().getLayeredPane().add(carRightRight, JLayeredPane.MODAL_LAYER);
        return carRightRight;
    }

    public static JLabel rightLeftBuild() {
        JLabel carRightLeft = new JLabel("");
        carRightLeft.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car4_R_s.png")));
        carRightLeft.setBounds(691, 370, 70, 70);
//        WindowInit.getjFrame().getContentPane().add(carRightLeft);
        WindowInit.getjFrame().getLayeredPane().add(carRightLeft, JLayeredPane.MODAL_LAYER);
        return carRightLeft;
    }

    public static JLabel upLeftBuild() {
        JLabel carUpLeft = new JLabel("");
        carUpLeft.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car1_U_d.png")));
        carUpLeft.setBounds(320, 105, 70, 70);
//        WindowInit.getjFrame().getContentPane().add(carUpLeft);
        WindowInit.getjFrame().getLayeredPane().add(carUpLeft, JLayeredPane.MODAL_LAYER);
        return carUpLeft;
    }

    public static JLabel upStraightBuild() {
        JLabel carUpStraight = new JLabel("");
        carUpStraight.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car4_R_d.png")));
        carUpStraight.setBounds(367, 105, 70, 70);
//        WindowInit.getjFrame().getContentPane().add(carUpStraight);
        WindowInit.getjFrame().getLayeredPane().add(carUpStraight, JLayeredPane.MODAL_LAYER);
        return carUpStraight;
    }

    public static JLabel upRightBuild() {
        JLabel carUpRight = new JLabel("");
        carUpRight.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car5_U_d.png")));
        carUpRight.setBounds(410, 105, 70, 70);
//        WindowInit.getjFrame().getContentPane().add(carUpRight);
        WindowInit.getjFrame().getLayeredPane().add(carUpRight, JLayeredPane.MODAL_LAYER);
        return carUpRight;
    }

    public static JLabel downLeftBuild() {
        JLabel carDownLeft = new JLabel("");
        carDownLeft.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car7_D_s.png")));
        carDownLeft.setBounds(465, 690, 70, 70);
//        WindowInit.getjFrame().getContentPane().add(carDownLeft);
        WindowInit.getjFrame().getLayeredPane().add(carDownLeft, JLayeredPane.MODAL_LAYER);
        return carDownLeft;
    }

    public static JLabel downRightBuild() {
        JLabel carDownRight = new JLabel("");
        carDownRight.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car6_D_s.png")));
        carDownRight.setBounds(562, 690, 70, 70);
//        WindowInit.getjFrame().getContentPane().add(carDownRight);
        WindowInit.getjFrame().getLayeredPane().add(carDownRight, JLayeredPane.MODAL_LAYER);
        return carDownRight;
    }

    public static JLabel downStraightBuild() {
        JLabel carDownStraight = new JLabel("");
        carDownStraight.setIcon(new ImageIcon(WindowInit.class.getResource("/com/lzh/resources/car3_up.png")));
        carDownStraight.setBounds(507, 690, 70, 70);
//        WindowInit.getjFrame().getContentPane().add(carDownStraight);
        WindowInit.getjFrame().getLayeredPane().add(carDownStraight, JLayeredPane.MODAL_LAYER);
        return carDownStraight;
    }


}
