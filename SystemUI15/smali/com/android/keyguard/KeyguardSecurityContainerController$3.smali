.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/keyguard/KeyguardSecurityContainerController$3;->dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    return-void
.end method

.method public final dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showNextSecurityScreenOrFinish(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p0

    return p0
.end method

.method public final finish(I)V
    .locals 2

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mWillRunDismissFromKeyguard:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    invoke-interface {v1}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->willRunAnimationOnKeyguard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mWillRunDismissFromKeyguard:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDonePending(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(I)V

    :cond_2
    :goto_0
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    return-void
.end method

.method public final onAttemptLockoutStart(J)V
    .locals 6

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$onPrimaryAuthLockedOut$callback$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor$onPrimaryAuthLockedOut$callback$1;-><init>(Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;)V

    const/16 v0, 0x3e8

    int-to-long v0, v0

    mul-long v1, p1, v0

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->countDownTimerUtil:Lcom/android/systemui/bouncer/domain/interactor/CountDownTimerUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/bouncer/domain/interactor/CountDownTimerUtil$startNewTimer$1;

    const-wide/16 v3, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/bouncer/domain/interactor/CountDownTimerUtil$startNewTimer$1;-><init>(JJLcom/android/systemui/bouncer/domain/interactor/CountDownTimerCallback;)V

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final onCancelClicked()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->onCancelClicked()V

    return-void
.end method

.method public final onSecurityModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0, p1}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    return-void
.end method

.method public final onUserInput()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->getDefaultMessage()Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepository;

    check-cast v0, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;->setMessage(Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    invoke-interface {p0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->onPrimaryBouncerUserInput()V

    return-void
.end method

.method public final reportUnlockAttempt(IIZ)V
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/bouncer/shared/model/BouncerMessageStrings;->INSTANCE:Lcom/android/systemui/bouncer/shared/model/BouncerMessageStrings;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt;->toAuthModel(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->isFingerprintAuthCurrentlyAllowedOnBouncer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_0

    const v1, 0x7f130a95

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pattern;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pattern;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lkotlin/Pair;

    const v3, 0x7f130a99

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Password;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Password;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lkotlin/Pair;

    const v3, 0x7f130a97

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pin;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lkotlin/Pair;

    const v3, 0x7f130a9b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/systemui/bouncer/shared/model/BouncerMessageStrings;->EmptyMessage:Lkotlin/Pair;

    :goto_1
    invoke-static {v2}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt;->toMessage(Lkotlin/Pair;)Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepository;

    check-cast v0, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepositoryImpl;->setMessage(Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;)V

    :cond_4
    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->access$100(Lcom/android/keyguard/KeyguardSecurityContainerController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    instance-of v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->access$200(Lcom/android/keyguard/KeyguardSecurityContainerController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    instance-of v3, v0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;

    if-eqz v3, :cond_5

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->isLeftAligned()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const/16 v3, 0x40

    if-eqz p3, :cond_7

    invoke-static {v3, v2, v0}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(III)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    new-instance p1, Lcom/android/keyguard/KeyguardSecurityContainerController$3$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_3

    :cond_7
    invoke-static {v3, v1, v0}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(III)V

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reportFailedUnlockAttempt(II)V

    :goto_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p2, Landroid/metrics/LogMaker;

    const/16 v0, 0xc5

    invoke-direct {p2, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    if-eqz p3, :cond_8

    const/16 v0, 0xa

    goto :goto_4

    :cond_8
    const/16 v0, 0xb

    :goto_4
    invoke-virtual {p2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p3, :cond_9

    sget-object p2, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_PASSWORD_SUCCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    goto :goto_5

    :cond_9
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_PASSWORD_FAILURE:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    :goto_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public final reset()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguard()V

    return-void
.end method

.method public final showCurrentSecurityScreen()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    return-void
.end method

.method public final userActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    return-void
.end method
