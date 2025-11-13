.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;->$r8$classId:I

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-wide v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    iget-object v11, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    iget-object v12, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    iget-object v13, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mNonApps:[Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    sget-object v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "KeyguardViewMediator#handleStartKeyguardExitAnimation"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v6, "KeyguardViewMediator"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "handleStartKeyguardExitAnimation startTime="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " fadeoutDuration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v3

    :try_start_0
    iget-boolean v6, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-nez v6, :cond_1

    iget-boolean v6, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    if-nez v6, :cond_1

    iget-object v6, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguardDuringSwipeGesture:Z

    if-nez v6, :cond_1

    if-eqz p0, :cond_0

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "KeyguardViewMediator"

    const-string v4, "Failed to call onAnimationFinished"

    invoke-static {v1, v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-boolean p0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v3, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked$1(ZZ)V

    iget-object p0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;

    const/16 v4, 0x8

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    invoke-static {v1, v0}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    monitor-exit v3

    goto/16 :goto_3

    :cond_1
    iput-boolean v1, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    iget-object v9, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardExitAnimationRunner:Landroid/view/IRemoteAnimationRunner;

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardExitAnimationRunner:Landroid/view/IRemoteAnimationRunner;

    iget-object v6, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v6

    const/16 v10, 0xb

    invoke-virtual {v6, v10}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    if-eqz v9, :cond_2

    if-eqz p0, :cond_2

    new-instance v14, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;

    invoke-direct {v14, v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const-string v0, "RunRemoteAnimation"

    const/16 v1, 0x1d

    invoke-virtual {v3, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->createInteractionJankMonitorConf$1(ILjava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    const/4 v10, 0x7

    invoke-interface/range {v9 .. v14}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception p0

    :try_start_4
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onAnimationStart"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_2
    iget-object v6, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-nez v6, :cond_4

    if-eqz v11, :cond_4

    array-length v6, v11

    if-lez v6, :cond_4

    sget-object v4, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iput-object p0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iput-boolean v0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRunning:Z

    invoke-static {}, Landroid/service/dreams/Flags;->dismissDreamOnKeyguardDismiss()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v11}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda84;

    invoke-direct {v4, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda84;-><init>(I)V

    invoke-interface {p0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda85;

    invoke-direct {v4, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda85;-><init>(I)V

    invoke-interface {p0, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    move-object v5, p0

    goto :goto_1

    :cond_3
    move-object v5, v11

    :goto_1
    invoke-static {v12}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda84;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda84;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda85;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda85;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    iget-object p0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    iget-boolean v9, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    move-object v6, v12

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->notifyStartSurfaceBehindRemoteAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;JZ)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0, v7, v8, v4, v5}, Lcom/android/keyguard/KeyguardViewController;->hide(JJ)V

    iget-object v0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda74;

    invoke-direct {v1, v3, p0, v11}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda74;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationFinishedCallback;[Landroid/view/RemoteAnimationTarget;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onKeyguardExitFinished$1()V

    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_3
    iget-object p0, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {p0}, Lcom/android/systemui/classifier/FalsingCollector;->onSuccessfulUnlock()V

    return-void

    :goto_4
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;Z)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->playSound$2(I)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
