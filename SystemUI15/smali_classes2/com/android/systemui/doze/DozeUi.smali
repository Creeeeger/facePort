.class public Lcom/android/systemui/doze/DozeUi;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field public final mBgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mCanAnimateTransition:Z

.field public final mCancelTimeTickerRunnable:Lcom/android/systemui/doze/DozeUi$1;

.field public final mContext:Landroid/content/Context;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mHandler:Landroid/os/Handler;

.field public final mHost:Lcom/android/systemui/doze/DozeHost;

.field public mMachine:Lcom/android/systemui/doze/DozeMachine;

.field public final mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/doze/DozeLog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p6, Lcom/android/systemui/doze/DozeUi$1;

    invoke-direct {p6, p0}, Lcom/android/systemui/doze/DozeUi$1;-><init>(Lcom/android/systemui/doze/DozeUi;)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    iput-object p4, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    iput-object p5, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/android/systemui/doze/DozeUi;->mBgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-virtual {p7}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    iput-object p7, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/util/AlarmTimeout;

    new-instance p3, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/doze/DozeUi;)V

    const-string p4, "doze_time_tick"

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    iput-object p9, p0, Lcom/android/systemui/doze/DozeUi;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    return-void
.end method


# virtual methods
.method public final setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 7

    sget-object v0, Lcom/android/systemui/doze/DozeUi$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    if-eq v1, v2, :cond_9

    const/4 p1, 0x7

    if-eq v1, p1, :cond_6

    const/16 p1, 0x8

    if-eq v1, p1, :cond_1

    const/16 p1, 0x9

    if-eq v1, p1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    check-cast p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->stopDozing()V

    goto/16 :goto_5

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    check-cast p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v5, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-eq v5, v4, :cond_5

    iget-object v5, v1, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    monitor-enter v5

    :try_start_0
    iget-object v1, v1, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lcom/android/systemui/keyguard/SecLifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/systemui/keyguard/SecLifecycle$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "DozeServiceHost"

    const-string/jumbo v5, "startDozing"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v5, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v5, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Z)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-eqz p1, :cond_b

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard(Z)Z

    goto/16 :goto_5

    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_2
    const-string p1, "DozeServiceHost"

    const-string/jumbo v1, "startDozing skipped"

    invoke-static {p1, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v1, p1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v1, v5, :cond_8

    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v1, v5, :cond_8

    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v1, v5, :cond_8

    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v1, v5, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    :goto_3
    move v1, v4

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "must be in pulsing state, but is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget p1, p1, Lcom/android/systemui/doze/DozeMachine;->mPulseReason:I

    new-instance v1, Lcom/android/systemui/doze/DozeUi$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/doze/DozeUi$2;-><init>(Lcom/android/systemui/doze/DozeUi;I)V

    iget-object v5, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    check-cast v5, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v5, v1, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeUi$2;I)V

    goto :goto_5

    :cond_9
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v1, :cond_a

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v1, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    check-cast p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeTimeTick()V

    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v5, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeHost;)V

    invoke-interface {v1, v6}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v5, 0x1f4

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    iget-object p2, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_DISABLE_CLOCK_TRANSITION:Z

    if-eqz p1, :cond_d

    check-cast p2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object p0, p2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-eq p0, v2, :cond_12

    if-ne p0, v4, :cond_c

    goto :goto_6

    :cond_c
    iput-boolean v3, p2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAnimateWakeup:Z

    goto :goto_6

    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    if-eqz p1, :cond_f

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-nez p1, :cond_e

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p0

    if-eqz p0, :cond_f

    :cond_e
    move v3, v4

    :cond_f
    check-cast p2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object p0, p2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-eq p0, v2, :cond_12

    if-ne p0, v4, :cond_10

    goto :goto_6

    :cond_10
    iput-boolean v3, p2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAnimateWakeup:Z

    goto :goto_6

    :pswitch_1
    check-cast p2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object p0, p2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-eq p0, v2, :cond_12

    if-ne p0, v4, :cond_11

    goto :goto_6

    :cond_11
    iput-boolean v4, p2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAnimateWakeup:Z

    :cond_12
    :goto_6
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
