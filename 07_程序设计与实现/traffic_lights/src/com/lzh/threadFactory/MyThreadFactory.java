package com.lzh.threadFactory;

import java.util.Set;
import java.util.concurrent.ThreadFactory;

/**
 * 自定义线程生成方式
 *
 * @author 志昊的刘
 * @date 2022/6/20
 */
public class MyThreadFactory implements ThreadFactory {

    private final ThreadFactory threadFactory;
    private final Set<Thread> threadsContainer;

    public MyThreadFactory(ThreadFactory threadFactory, Set<Thread> threadsContainer) {
        this.threadFactory = threadFactory;
        this.threadsContainer = threadsContainer;
    }

    @Override
    public Thread newThread(Runnable r) {
        Thread thread = threadFactory.newThread(r);
        // 记录线程
        threadsContainer.add(thread);
        return thread;
    }
}
