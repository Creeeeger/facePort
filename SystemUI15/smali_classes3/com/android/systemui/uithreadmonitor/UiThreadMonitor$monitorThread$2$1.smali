.class public final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    const-string v2, "\n"

    const-string v3, "   "

    const-string v4, " ms) ***\n"

    const-string v5, "("

    const-string v6, ","

    const-string v7, "*** Traced call stack: count="

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    const-string v0, "debug.sysui.looper.msg_log"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperMsgLog:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looper:Landroid/os/Looper;

    sget-object v10, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$updateLooperMsgLog$1;->INSTANCE:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$updateLooperMsgLog$1;

    invoke-virtual {v0, v10}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    iput-boolean v9, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperMsgLog:Z

    goto :goto_1

    :cond_0
    iget-boolean v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperMsgLog:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looper:Landroid/os/Looper;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    iput-boolean v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperMsgLog:Z

    :cond_1
    :goto_1
    const-string v0, "debug.sysui.looper.slow_log"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-wide/16 v10, -0x1

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperSlowLog:Z

    if-nez v0, :cond_3

    const-string v0, "debug.sysui.looper.slow_dispatch"

    const-wide/16 v12, 0x1e

    invoke-static {v0, v12, v13}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v0, "debug.sysui.looper.slow_delivery"

    invoke-static {v0, v12, v13}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-boolean v9, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperSlowLog:Z

    goto :goto_2

    :cond_2
    iget-boolean v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperSlowLog:Z

    if-eqz v0, :cond_3

    iput-boolean v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperSlowLog:Z

    const-wide/16 v14, 0x0

    move-wide v12, v14

    goto :goto_2

    :cond_3
    move-wide v12, v10

    move-wide v14, v12

    :goto_2
    cmp-long v0, v14, v10

    const-string v8, "UiThreadMonitor"

    if-lez v0, :cond_4

    cmp-long v0, v12, v10

    if-lez v0, :cond_4

    const-string/jumbo v0, "updateShowLooperSlowLog dispatch="

    const-string v10, " ms, delivery="

    invoke-static {v0, v14, v15, v10}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    check-cast v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/4 v10, 0x0

    const/16 v23, 0x0

    move-wide v11, v14

    move-object v14, v0

    move v15, v10

    move-wide/from16 v16, v11

    move-wide/from16 v18, v11

    invoke-virtual/range {v14 .. v23}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    :cond_4
    iget-boolean v10, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    if-eqz v10, :cond_5

    const-wide/32 v11, 0x5265c00

    goto :goto_3

    :cond_5
    const-wide/16 v11, 0x1770

    :goto_3
    const-string/jumbo v0, "run isPaused="

    invoke-static {v0, v10}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-boolean v13, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    if-eqz v13, :cond_6

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    iget-object v14, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->runnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v10, :cond_7

    iget-object v14, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->runnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;

    move/from16 v16, v10

    const-wide/16 v9, 0xbb8

    invoke-virtual {v0, v14, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_7
    move/from16 v16, v10

    :goto_4
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wait "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v13, :cond_8

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v11, v12, v9}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v16, :cond_a

    if-nez v0, :cond_a

    iget v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    iget-wide v11, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    invoke-static {v11, v12}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    iget-wide v14, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    sub-long/2addr v12, v14

    invoke-static {v10, v7, v6, v11, v5}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v10, v0

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_9

    aget-object v12, v0, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    goto :goto_7

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "run exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v16, :cond_a

    iget v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    iget-wide v11, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    invoke-static {v11, v12}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    iget-wide v14, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    sub-long/2addr v12, v14

    invoke-static {v10, v7, v6, v11, v5}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v10, v0

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_9

    aget-object v12, v0, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    const-string v0, "debug.sysui.anr_detector.disabled"

    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v10, "disabled"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v0, :cond_c

    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    return-void

    :cond_c
    move v8, v9

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    const/4 v9, 0x0

    if-nez v16, :cond_e

    iget v10, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    iget-object v10, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread$delegate:Lkotlin/Lazy;

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    iget-wide v13, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    invoke-static {v13, v14}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    move-object/from16 v16, v10

    iget-wide v9, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    sub-long/2addr v14, v9

    invoke-static {v12, v7, v6, v13, v5}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v4, v16

    array-length v5, v4

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_d

    aget-object v7, v4, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    :cond_e
    throw v0
.end method
