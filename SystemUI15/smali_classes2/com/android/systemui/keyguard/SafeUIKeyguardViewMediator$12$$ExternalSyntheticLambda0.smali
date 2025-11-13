.class public final synthetic Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

.field public final synthetic f$1:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    iput-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;

    iget-object v1, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-wide v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    iget-object v6, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    sget-object v7, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "KeyguardViewMediator#handleStartKeyguardExitAnimation"

    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v7, "SafeUIKeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "handleStartKeyguardExitAnimation startTime="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " fadeoutDuration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v1

    :try_start_0
    iget-boolean v7, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHiding:Z

    if-nez v7, :cond_1

    iget-boolean v7, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSurfaceBehindRemoteAnimationRequested:Z

    if-nez v7, :cond_1

    iget-object v7, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguardDuringSwipeGesture:Z

    if-nez v7, :cond_1

    if-eqz p0, :cond_0

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

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

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "SafeUIKeyguardViewMediator"

    const-string v3, "Failed to call onAnimationFinished"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-boolean p0, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setShowingLocked(ZZ)V

    monitor-exit v1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHiding:Z

    iget-object v7, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v7

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    :try_start_3
    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v7

    :try_start_4
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_1
    iget-object v7, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const-string v8, "RemoteAnimationDisabled"

    const/16 v9, 0x1d

    invoke-virtual {v1, v9, v8}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->createInteractionJankMonitorConf(ILjava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    sget-object v7, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v7, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v7, v2, v3, v4, v5}, Lcom/android/keyguard/KeyguardViewController;->hide(JJ)V

    iget-object v2, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p0, v6}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/view/IRemoteAnimationFinishedCallback;[Landroid/view/RemoteAnimationTarget;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->onKeyguardExitFinished()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_2
    iget-object p0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {p0}, Lcom/android/systemui/classifier/FalsingCollector;->onSuccessfulUnlock()V

    return-void

    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
