.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$13;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v4, v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;

    invoke-direct {v5, v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    sget-boolean v4, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    invoke-virtual {v5, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->accept(Ljava/lang/Object;)V

    const-string v4, ""

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleSecMessage(Landroid/os/Message;)V

    goto/16 :goto_6

    :pswitch_1
    const-string v4, "CANCEL_KEYGUARD_EXIT_ANIM"

    const-string v3, "KeyguardViewMediator#handleMessage CANCEL_KEYGUARD_EXIT_ANIM"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v5, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    const-string v7, "KeyguardViewMediator"

    if-eqz v5, :cond_0

    const-string v0, "#handleCancelKeyguardExitAnimation: keyguard exit animation cancelled. There\'s a pending lock, so we were cancelled because the device was locked again during the unlock sequence. We should end up locked."

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->finishSurfaceBehindRemoteAnimation(Z)V

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeHandlePendingLock()V

    goto :goto_1

    :cond_0
    const-string v5, "#handleCancelKeyguardExitAnimation: keyguard exit animation cancelled. No pending lock, we should end up unlocked with the app/launcher visible."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isUnlockStartedOrFinished()Z

    move-result v7

    if-eqz v7, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v0, :cond_2

    move-object v6, v0

    :cond_2
    iget-object v0, v6, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setShowingLocked:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->onAbortHandleStartKeyguardExitAnimation()V

    move v0, v1

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel handleCancelKeyguardExitAnimation why="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showSurfaceBehindKeyguard()V

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation()V

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_6

    :pswitch_2
    const-string v4, "SYSTEM_READY"

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v1

    :try_start_0
    const-string v5, "KeyguardViewMediator"

    const-string v7, "onSystemReady"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    invoke-virtual {v1, v6, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;Z)Z

    iget-object v5, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v6, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {v1, v0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked$1(ZZ)V

    iget-object v5, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object v6, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    invoke-virtual {v5, v6}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    iget-object v5, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamViewModel:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;

    iget-object v6, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCommunalTransitionViewModel:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;

    iget-object v7, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v8, v5, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->dreamAlpha:Lkotlinx/coroutines/flow/Flow;

    new-instance v9, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda79;

    invoke-direct {v9, v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda79;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v5, v5, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->transitionEnded:Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel$special$$inlined$filter$1;

    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda79;

    invoke-direct {v7, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda79;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-virtual {v3, v5, v7}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v5, v6, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;->showCommunalFromOccluded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda79;

    invoke-direct {v7, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda79;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-virtual {v3, v5, v7}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v3, v6, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;->transitionFromOccludedEnded:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$filter$3;

    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda79;

    invoke-direct {v5, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda79;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-virtual {v0, v3, v5}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast$1()V

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_3
    const-string v4, "NOTIFY_STARTED_GOING_TO_SLEEP"

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    :try_start_2
    const-string v1, "KeyguardViewMediator"

    const-string v2, "handleNotifyStartedGoingToSleep"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->onStartedGoingToSleep()V

    monitor-exit v0

    goto/16 :goto_6

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_4
    const-string v4, "NOTIFY_STARTED_WAKING_UP"

    const-string v0, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleNotifyStartedWakingUp(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_6

    :pswitch_5
    const-string v4, "KEYGUARD_DONE_PENDING_TIMEOUT"

    const-string v0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string v1, "Timeout while waiting for activity drawn!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_6

    :pswitch_6
    const-string v4, "START_KEYGUARD_EXIT_ANIM"

    const-string v0, "KeyguardViewMediator#handleMessage START_KEYGUARD_EXIT_ANIM"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v5

    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-boolean v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;

    invoke-direct {v3, v1, p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda67;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_6

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :pswitch_7
    const-string v4, "DISMISS"

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v7, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->mMessage:Ljava/lang/CharSequence;

    iget-object v8, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v8}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result v9

    if-nez v9, :cond_5

    goto/16 :goto_3

    :cond_5
    sget-boolean v9, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    iget-object v10, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v9, :cond_7

    invoke-interface {v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v1, "dismiss failed. Permanent state."

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    if-eqz v7, :cond_6

    move v0, v2

    :cond_6
    move v1, v0

    move v0, v2

    goto :goto_2

    :cond_7
    sget-boolean v2, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    iget-object v9, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->dismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    if-eqz v2, :cond_9

    invoke-virtual {v8}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure$2()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v7, :cond_8

    iget-object v2, v9, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {v3, v7}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {v2}, Lcom/android/systemui/subscreen/SubScreenManager;->requestCoverBouncer()V

    :cond_8
    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    :cond_9
    invoke-virtual {v8}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardHiding()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v7, :cond_a

    iget-object v1, v9, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {v2, v7}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move v1, v0

    move v0, v3

    goto :goto_2

    :cond_b
    move v1, v0

    :goto_2
    if-eqz v1, :cond_c

    new-instance v1, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {v1, v7}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->notifyDismissError()V

    :cond_c
    if-eqz v0, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleDismiss reason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    :goto_3
    iget-boolean v0, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_f

    if-eqz v7, :cond_e

    iget-object v0, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    iget-object v0, v0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {v1, v7}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iput-object v5, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    iget-boolean v0, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-nez v0, :cond_14

    iget-object v0, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->dismissAndCollapse()V

    goto/16 :goto_6

    :cond_f
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Ignoring request to DISMISS because mShowing=false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_14

    new-instance v0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {v0, v7}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->notifyDismissError()V

    goto/16 :goto_6

    :pswitch_8
    const-string v4, "KEYGUARD_TIMEOUT"

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;Z)Z

    monitor-exit v1

    goto/16 :goto_6

    :catchall_3
    move-exception p0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :pswitch_9
    const-string v4, "SET_OCCLUDED"

    const-string v1, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_10

    move v3, v2

    goto :goto_4

    :cond_10
    move v3, v0

    :goto_4
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_11

    move v0, v2

    :cond_11
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_12

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    :cond_12
    const/4 v2, -0x1

    :goto_5
    invoke-static {v1, v3, v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleSetOccluded(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZI)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_6

    :pswitch_a
    const-string v4, "KEYGUARD_DONE_DRAWING"

    const-string v0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleKeyguardDoneDrawing(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_6

    :pswitch_b
    const-string v4, "KEYGUARD_DONE"

    const-string v0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone$1()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_6

    :pswitch_c
    const-string v4, "NOTIFY_FINISHED_GOING_TO_SLEEP"

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleNotifyFinishedGoingToSleep(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_6

    :pswitch_d
    const-string v4, "RESET"

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_13

    move v0, v2

    :cond_13
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleReset(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    goto :goto_6

    :pswitch_e
    const-string v4, "HIDE"

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide$1()V

    goto :goto_6

    :pswitch_f
    const-string v4, "SHOW"

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-$$Nest$mhandleShow(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_14
    :goto_6
    const-string v0, "KeyguardViewMediator"

    const-string v1, "KeyguardViewMediator queue processing message: "

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->postHandleMsg(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
