.class public final Lcom/android/systemui/uithreadmonitor/SecVendorServices;
.super Lcom/android/systemui/VendorServices;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

.field public looperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public uiThreadMonitor:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/VendorServices;-><init>()V

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 13

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/SecVendorServices;->uiThreadMonitor:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "debug.sysui.anr_detector.disabled"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "UiThreadMonitor"

    if-eqz v3, :cond_1

    const-string v5, "disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->displayManager:Landroid/hardware/display/DisplayManager;

    new-instance v5, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$start$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$start$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    iget-object v6, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->bgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-static {v5}, Landroid/view/ViewRootImpl;->setSafeScheduleTraversals(Z)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAwakeTime:J

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->asyncRunnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    const-wide/16 v7, 0xbb8

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v3, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->monitorThread$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v3, v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "init exception: "

    invoke-static {v3, v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isAlreadyBooted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/SecVendorServices;->looperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    move-object v3, v0

    check-cast v3, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x7

    const-wide/16 v5, 0x1e

    const-wide/16 v7, 0x32

    const-wide/32 v9, 0xea60

    invoke-virtual/range {v3 .. v12}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    :cond_5
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/SecVendorServices;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    if-eqz p0, :cond_6

    move-object v2, p0

    :cond_6
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v4, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_DURATION:J

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_8

    sget p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_BUF_COUNT:I

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    const-string p0, "BinderCallMonitor"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;

    invoke-direct {p0, v3}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;-><init>(Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;)V

    invoke-static {p0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result p0

    sget v0, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    if-ne p0, v0, :cond_9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v0, 0xf4240

    div-long v5, v4, v0

    const-wide/16 v7, 0x1f40

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->startMonitoring(IJJ)Z

    :cond_9
    return-void
.end method
