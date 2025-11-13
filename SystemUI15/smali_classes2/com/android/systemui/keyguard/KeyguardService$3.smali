.class public final Lcom/android/systemui/keyguard/KeyguardService$3;
.super Lcom/android/internal/policy/IKeyguardService$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;-><init>()V

    return-void
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 4

    const-string v0, "KeyguardService"

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1000

    const-string v2, "IKeyguardService"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    invoke-static {v0, v1, v2, p0, v3}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 1

    const-string v0, "addStateMonitorCallback"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    return-void
.end method

.method public final dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dismiss message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final dismissKeyguardToLaunch(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "dismissKeyguardToLaunch"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring dismissKeyguardToLaunch "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "doKeyguardTimeout"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onBootCompleted()V
    .locals 1

    const-string v0, "onBootCompleted"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onBootCompleted()V

    return-void
.end method

.method public final onDreamingStarted()V
    .locals 3

    const-string v0, "onDreamingStarted"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isDreaming:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStarted()V

    return-void
.end method

.method public final onDreamingStopped()V
    .locals 3

    const-string v0, "onDreamingStopped"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isDreaming:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStopped()V

    return-void
.end method

.method public final onFinishedBootAnim()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->firstKeyguardShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->bootAnimationFinishedTrigger:Lcom/android/systemui/BootAnimationFinishedTrigger;

    if-eqz v0, :cond_0

    const-string v0, "BootAnimationFinished"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onFinishedBootAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onFinishedBootAnimation$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->firstKeyguardShown:Z

    :cond_0
    return-void
.end method

.method public final onFinishedGoingToSleep(IZ)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinishedGoingToSleep pmSleepReason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cameraGestureTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onFinishedGoingToSleep(IZ)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardService;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    if-nez p2, :cond_1

    iget-object p2, p1, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->repository:Lcom/android/systemui/power/data/repository/PowerRepository;

    check-cast p2, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    iget-object p2, p2, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    iget-boolean p2, p2, Lcom/android/systemui/power/shared/model/WakefulnessModel;->powerButtonLaunchGestureTriggered:Z

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v4, p2

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    const/4 p2, 0x1

    goto :goto_0

    :goto_2
    sget-object v1, Lcom/android/systemui/power/shared/model/WakefulnessState;->ASLEEP:Lcom/android/systemui/power/shared/model/WakefulnessState;

    iget-object v0, p1, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->repository:Lcom/android/systemui/power/data/repository/PowerRepository;

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/power/data/repository/PowerRepository;->updateWakefulness$default(Lcom/android/systemui/power/data/repository/PowerRepository;Lcom/android/systemui/power/shared/model/WakefulnessState;Lcom/android/systemui/power/shared/model/WakeSleepReason;Lcom/android/systemui/power/shared/model/WakeSleepReason;ZI)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 7

    const-string v0, "onFinishedWakingUp"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    const-string v0, "KeyguardService.mBinder#onFinishedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/power/shared/model/WakefulnessState;->AWAKE:Lcom/android/systemui/power/shared/model/WakefulnessState;

    const/4 v3, 0x0

    const/16 v6, 0xe

    iget-object v1, v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->repository:Lcom/android/systemui/power/data/repository/PowerRepository;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/power/data/repository/PowerRepository;->updateWakefulness$default(Lcom/android/systemui/power/data/repository/PowerRepository;Lcom/android/systemui/power/shared/model/WakefulnessState;Lcom/android/systemui/power/shared/model/WakeSleepReason;Lcom/android/systemui/power/shared/model/WakeSleepReason;ZI)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->DEBUG_DISABLE_REMOTE_UNLOCK_ANIMATION:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onScreenTurnedOff()V
    .locals 2

    const-string v0, "onScreenTurnedOff"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    sget-object v1, Lcom/android/systemui/power/shared/model/ScreenPowerState;->SCREEN_OFF:Lcom/android/systemui/power/shared/model/ScreenPowerState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->onScreenPowerStateUpdated(Lcom/android/systemui/power/shared/model/ScreenPowerState;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOff()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mScreenOnCoordinator:Lcom/android/keyguard/mediator/ScreenOnCoordinator;

    iget-object p0, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator;->pendingTasks:Lcom/android/systemui/util/concurrency/PendingTasksContainer;

    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/PendingTasksContainer;->reset()V

    :cond_0
    return-void
.end method

.method public final onScreenTurnedOn()V
    .locals 2

    const-string v0, "onScreenTurnedOn"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    const-string v0, "KeyguardService.mBinder#onScreenTurnedOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    sget-object v1, Lcom/android/systemui/power/shared/model/ScreenPowerState;->SCREEN_ON:Lcom/android/systemui/power/shared/model/ScreenPowerState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->onScreenPowerStateUpdated(Lcom/android/systemui/power/shared/model/ScreenPowerState;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mScreenOnCoordinator:Lcom/android/keyguard/mediator/ScreenOnCoordinator;

    iget-object p0, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator;->foldAodAnimationController:Lcom/android/systemui/unfold/FoldAodAnimationController;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onScreenTurningOff()V
    .locals 2

    const-string v0, "onScreenTurningOff"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    sget-object v1, Lcom/android/systemui/power/shared/model/ScreenPowerState;->SCREEN_TURNING_OFF:Lcom/android/systemui/power/shared/model/ScreenPowerState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->onScreenPowerStateUpdated(Lcom/android/systemui/power/shared/model/ScreenPowerState;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public final onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 8

    const-string v0, "onScreenTurningOn"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    const-string v0, "KeyguardService.mBinder#onScreenTurningOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    sget-object v1, Lcom/android/systemui/power/shared/model/ScreenPowerState;->SCREEN_TURNING_ON:Lcom/android/systemui/power/shared/model/ScreenPowerState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->onScreenPowerStateUpdated(Lcom/android/systemui/power/shared/model/ScreenPowerState;)V

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const/4 v3, 0x3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->enableLooperLogController(IJ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->screenTuringOnTime:J

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-boolean v3, v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iput-object p1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    move-object p1, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x3ea

    invoke-virtual {v3, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    if-eqz v3, :cond_1

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isUnlockOnFoldOpened()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    if-nez v3, :cond_2

    sget-boolean v6, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz v6, :cond_4

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x3eb

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;

    invoke-virtual {p1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    if-nez v3, :cond_5

    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    if-eqz p1, :cond_b

    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->generateWakefulnessOrScreenStateByLastMsg(II)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;

    invoke-virtual {v3, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->generateWakefulnessOrScreenStateByLastMsg(II)V

    :cond_8
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "Waiting for KeyguardDrawnCallback#onDrawn"

    invoke-static {v1, v0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardService;->mScreenOnCoordinator:Lcom/android/keyguard/mediator/ScreenOnCoordinator;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardService$3$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardService$3$1;-><init>(Lcom/android/systemui/keyguard/KeyguardService$3;Lcom/android/internal/policy/IKeyguardDrawnCallback;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "ScreenOnCoordinator#onScreenTurningOn"

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, v1, Lcom/android/keyguard/mediator/ScreenOnCoordinator;->pendingTasks:Lcom/android/systemui/util/concurrency/PendingTasksContainer;

    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/PendingTasksContainer;->reset()V

    iget-object p1, v1, Lcom/android/keyguard/mediator/ScreenOnCoordinator;->foldAodAnimationController:Lcom/android/systemui/unfold/FoldAodAnimationController;

    if-eqz p1, :cond_9

    const-string v0, "fold-to-aod"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/PendingTasksContainer;->registerTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;

    invoke-direct {v3, p1, v0}, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;Ljava/lang/Runnable;)V

    iget-object p1, p1, Lcom/android/systemui/unfold/FoldAodAnimationController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_9
    iget-object p1, v1, Lcom/android/keyguard/mediator/ScreenOnCoordinator;->fullScreenLightRevealAnimations:Ljava/util/Set;

    if-eqz p1, :cond_a

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/FullscreenLightRevealAnimation;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/util/concurrency/PendingTasksContainer;->registerTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/systemui/unfold/FullscreenLightRevealAnimation;->onScreenTurningOn(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_a
    new-instance p1, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$2;

    invoke-direct {p1, v2, v1}, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$2;-><init>(Ljava/lang/Runnable;Lcom/android/keyguard/mediator/ScreenOnCoordinator;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/PendingTasksContainer;->onTasksComplete(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_b
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onShortPowerPressedGoHome()V
    .locals 1

    const-string v0, "onShortPowerPressedGoHome"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartedGoingToSleep pmSleepReason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onStartedGoingToSleep(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/power/shared/model/WakefulnessState;->STARTING_TO_SLEEP:Lcom/android/systemui/power/shared/model/WakefulnessState;

    sget-object v1, Lcom/android/systemui/power/shared/model/WakeSleepReason;->Companion:Lcom/android/systemui/power/shared/model/WakeSleepReason$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/systemui/power/shared/model/WakeSleepReason;->OTHER:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/android/systemui/power/shared/model/WakeSleepReason;->FOLD:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/power/shared/model/WakeSleepReason;->POWER_BUTTON:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->repository:Lcom/android/systemui/power/data/repository/PowerRepository;

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/power/data/repository/PowerRepository;->updateWakefulness$default(Lcom/android/systemui/power/data/repository/PowerRepository;Lcom/android/systemui/power/shared/model/WakefulnessState;Lcom/android/systemui/power/shared/model/WakeSleepReason;Lcom/android/systemui/power/shared/model/WakeSleepReason;ZI)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->generateWakefulnessOrScreenStateByLastMsg(II)V

    :cond_3
    return-void
.end method

.method public final onStartedWakingUp(IZ)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartedWakingUp pmWakeReason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cameraGestureTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    const-string v0, "KeyguardService.mBinder#onStartedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onStartedWakingUp(IZ)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    if-nez p2, :cond_1

    iget-object p2, v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->repository:Lcom/android/systemui/power/data/repository/PowerRepository;

    check-cast p2, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    iget-object p2, p2, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    iget-boolean p2, p2, Lcom/android/systemui/power/shared/model/WakefulnessModel;->powerButtonLaunchGestureTriggered:Z

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v5, p2

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    const/4 p2, 0x1

    goto :goto_0

    :goto_2
    sget-object v2, Lcom/android/systemui/power/shared/model/WakefulnessState;->STARTING_TO_WAKE:Lcom/android/systemui/power/shared/model/WakefulnessState;

    sget-object p2, Lcom/android/systemui/power/shared/model/WakeSleepReason;->Companion:Lcom/android/systemui/power/shared/model/WakeSleepReason$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/power/shared/model/WakeSleepReason$Companion;->fromPowerManagerWakeReason(I)Lcom/android/systemui/power/shared/model/WakeSleepReason;

    move-result-object v3

    iget-object v1, v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->repository:Lcom/android/systemui/power/data/repository/PowerRepository;

    const/4 v4, 0x0

    const/4 v6, 0x4

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/power/data/repository/PowerRepository;->updateWakefulness$default(Lcom/android/systemui/power/data/repository/PowerRepository;Lcom/android/systemui/power/shared/model/WakefulnessState;Lcom/android/systemui/power/shared/model/WakeSleepReason;Lcom/android/systemui/power/shared/model/WakeSleepReason;ZI)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iput p1, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    sget-boolean p2, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez p2, :cond_2

    sget-boolean p2, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->generateWakefulnessOrScreenStateByLastMsg(II)V

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onSystemKeyPressed(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSystemKeyPressed keycode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onSystemReady()V
    .locals 1

    const-string v0, "onSystemReady"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    const-string v0, "KeyguardService.mBinder#onSystemReady"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onSystemReady()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final setCoverOccluded(Z)V
    .locals 2

    const-string v0, "KeyguardService.mBinder#setCoverOccluded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setCoverOccluded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ee

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeMessage(I)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final setCurrentUser(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deprecated/NOT USED: setCurrentUser userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    invoke-static {}, Lcom/android/systemui/Flags;->refactorGetCurrentUser()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    return-void
.end method

.method public final setDexOccluded(Z)V
    .locals 2

    const-string v0, "KeyguardService.mBinder#setDexOccluded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setDexOccluded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeMessage(I)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final setKeyguardEnabled(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setKeyguardEnabled enabled"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardEnabledInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isKeyguardEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    return-void
.end method

.method public final setOccluded(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOccluded isOccluded="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " animate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOccluded("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardService.mBinder#setOccluded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ignoreKeyguardState"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isExternallyEnabled:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PI"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "FI"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public final setSwitchingUser(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSwitchingUser switching="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwitchingUser(Z)V

    return-void
.end method

.method public final showDismissibleKeyguard()V
    .locals 1

    const-string/jumbo v0, "showDismissibleKeyguard"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showDismissibleKeyguard()V

    sget p0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method

.method public final startFingerprintAuthentication()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->IS_SAFE_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchForceStartFingerprint()V

    :goto_0
    return-void
.end method

.method public final startKeyguardExitAnimation(JJ)V
    .locals 2

    const-string/jumbo v0, "startKeyguardExitAnimation startTime="

    const-string v1, " fadeoutDuration="

    invoke-static {v0, p1, p2, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    const-string v0, "KeyguardService.mBinder#startKeyguardExitAnimation"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final startedEarlyWakingUp(I)V
    .locals 3

    const-string v0, "KeyguardService.mBinder#startedEarlyWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->IS_SAFE_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "startedEarlyWakingUp"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator#startedEarlyWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x4

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->enableLooperLogController(IJ)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStartedEarlyWakingUp(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 1

    const-string/jumbo v0, "verifyUnlock"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService$3;->trace(Ljava/lang/String;)V

    const-string v0, "KeyguardService.mBinder#verifyUnlock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
