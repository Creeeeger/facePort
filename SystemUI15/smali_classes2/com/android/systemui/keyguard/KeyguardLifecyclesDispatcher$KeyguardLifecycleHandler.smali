.class public final Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    return-void
.end method


# virtual methods
.method public final getTraceName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/TraceNameSupplier;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 p1, 0xb

    if-eq p0, p1, :cond_2

    const/16 p1, 0xc

    if-eq p0, p1, :cond_1

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    goto :goto_0

    :pswitch_0
    const-string p0, "FINISHED_GOING_TO_SLEEP"

    goto :goto_0

    :pswitch_1
    const-string p0, "STARTED_GOING_TO_SLEEP"

    goto :goto_0

    :pswitch_2
    const-string p0, "FINISHED_WAKING_UP"

    goto :goto_0

    :pswitch_3
    const-string p0, "STARTED_WAKING_UP"

    goto :goto_0

    :pswitch_4
    const-string p0, "SCREEN_TURNED_OFF"

    goto :goto_0

    :pswitch_5
    const-string p0, "SCREEN_TURNING_OFF"

    goto :goto_0

    :pswitch_6
    const-string p0, "SCREEN_TURNED_ON"

    goto :goto_0

    :pswitch_7
    const-string p0, "SCREEN_TURNING_ON"

    goto :goto_0

    :cond_1
    const-string p0, "SCREEN_INTERNAL_TURNING_OFF"

    goto :goto_0

    :cond_2
    const-string p0, "SCREEN_INTERNAL_TURNING_ON"

    :goto_0
    const-string p1, "KeyguardLifecycleHandler#"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    const/16 v2, 0xb

    const/4 v3, 0x3

    if-eq v0, v2, :cond_9

    const/16 v2, 0xc

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    const-wide/16 v4, 0x1000

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iput v8, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const-string/jumbo v0, "wakefulness"

    invoke-static {v4, v5, v0, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    goto/16 :goto_4

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v6, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-ne v6, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iput v3, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const-string/jumbo v6, "wakefulness"

    invoke-static {v4, v5, v6, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iput v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    iput-object v7, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    new-instance v0, Landroid/graphics/Point;

    iget-object v4, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v5, v2

    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getPowerButtonOrigin()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    :goto_0
    iget-object v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v2, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v4, v2, v5}, Landroid/app/IWallpaperManager;->notifyGoingToSleep(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_1
    new-instance v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    goto/16 :goto_4

    :pswitch_2
    iget v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-ne v0, v2, :cond_4

    goto/16 :goto_4

    :cond_4
    iput v2, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const-string/jumbo v0, "wakefulness"

    invoke-static {v4, v5, v0, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    goto/16 :goto_4

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v8, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-ne v8, v6, :cond_5

    goto/16 :goto_4

    :cond_5
    iput v6, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const-string/jumbo v8, "wakefulness"

    invoke-static {v4, v5, v8, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iput v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    iget-object v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    iput-object v7, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    iget v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    if-eq v0, v6, :cond_6

    new-instance v0, Landroid/graphics/Point;

    iget-object v4, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v5, v2

    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getPowerButtonOrigin()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    :goto_2
    iget-object v0, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_7

    :try_start_1
    iget-object v2, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v4, v2, v5}, Landroid/app/IWallpaperManager;->notifyWakingUp(IILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_7
    :goto_3
    new-instance v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    goto :goto_4

    :pswitch_4
    iput v8, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const-string/jumbo v0, "screenState"

    invoke-static {v4, v5, v0, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    goto :goto_4

    :pswitch_5
    iput v3, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const-string/jumbo v0, "screenState"

    invoke-static {v4, v5, v0, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    goto :goto_4

    :pswitch_6
    iput v2, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const-string/jumbo v0, "screenState"

    invoke-static {v4, v5, v0, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    goto :goto_4

    :pswitch_7
    iput v6, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const-string/jumbo v0, "screenState"

    invoke-static {v4, v5, v0, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    :goto_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    if-eqz v0, :cond_c

    :cond_a
    iget p1, p1, Landroid/os/Message;->what:I

    if-gt p1, v3, :cond_b

    iget-object p1, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    monitor-enter p1

    :try_start_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_b
    iget-object p0, v1, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    monitor-enter p0

    :try_start_3
    iget-object p1, v1, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    monitor-exit p0

    :cond_c
    :goto_5
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
