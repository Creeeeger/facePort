.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v0, 0x3

    const-string v1, ""

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const-string v1, "CANCEL_KEYGUARD_EXIT_ANIM"

    const-string p1, "KeyguardViewMediator#handleMessage CANCEL_KEYGUARD_EXIT_ANIM"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingLock:Z

    const-string v0, "SafeUIKeyguardViewMediator"

    if-eqz p1, :cond_0

    const-string p1, "#handleCancelKeyguardExitAnimation: keyguard exit animation cancelled. There\'s a pending lock, so we were cancelled because the device was locked again during the unlock sequence. We should end up locked."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->finishSurfaceBehindRemoteAnimation(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->maybeHandlePendingLock()V

    goto :goto_0

    :cond_0
    const-string p1, "#handleCancelKeyguardExitAnimation: keyguard exit animation cancelled. No pending lock, we should end up unlocked with the app/launcher visible."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->showSurfaceBehindKeyguard()V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation()V

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    :pswitch_2
    const-string v1, "SYSTEM_READY"

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    sget-object p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    monitor-enter p1

    :try_start_0
    const-string p0, "SafeUIKeyguardViewMediator"

    const-string v2, "onSystemReady"

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemReady:Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    iget-object p0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p1, v3, v3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    iget-object p0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object v2, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    invoke-virtual {p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    iget-object p0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDreamViewModel:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;

    iget-object v2, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCommunalTransitionViewModel:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;

    iget-object v3, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v5, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->dreamAlpha:Lkotlinx/coroutines/flow/Flow;

    new-instance v6, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda10;

    const/4 v7, 0x2

    invoke-direct {v6, p1, v7}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;I)V

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object v3, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object p0, p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->transitionEnded:Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel$special$$inlined$filter$1;

    new-instance v5, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda10;

    invoke-direct {v5, p1, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;I)V

    invoke-virtual {v3, p0, v5}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object p0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v3, v2, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;->showCommunalFromOccluded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v5, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda10;

    invoke-direct {v5, p1, v4}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;I)V

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object p0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v2, v2, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;->transitionFromOccludedEnded:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel$special$$inlined$filter$3;

    new-instance v3, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda10;

    invoke-direct {v3, p1, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;I)V

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_3
    const-string v1, "NOTIFY_STARTED_GOING_TO_SLEEP"

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    sget-object p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    monitor-enter p1

    :try_start_2
    const-string p0, "SafeUIKeyguardViewMediator"

    const-string v0, "handleNotifyStartedGoingToSleep"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->onStartedGoingToSleep()V

    monitor-exit p1

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_4
    const-string v1, "NOTIFY_STARTED_WAKING_UP"

    const-string p1, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleNotifyStartedWakingUp(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    :pswitch_5
    const-string v1, "KEYGUARD_DONE_PENDING_TIMEOUT"

    const-string p0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p0, "SafeUIKeyguardViewMediator"

    const-string p1, "Timeout while waiting for activity drawn!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    :pswitch_6
    const-string v1, "START_KEYGUARD_EXIT_ANIM"

    const-string v0, "KeyguardViewMediator#handleMessage START_KEYGUARD_EXIT_ANIM"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iput-boolean v4, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHiding:Z

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;

    iget-object v0, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    new-instance v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;)V

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :pswitch_7
    const-string v1, "DISMISS"

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    iget-object p1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;->mMessage:Ljava/lang/CharSequence;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    iget-object v2, v2, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {v3, v0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->dismissAndCollapse()V

    goto/16 :goto_2

    :cond_2
    if-eqz v0, :cond_6

    new-instance p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->notifyDismissError()V

    goto/16 :goto_2

    :pswitch_8
    const-string v1, "KEYGUARD_TIMEOUT"

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    sget-object v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :pswitch_9
    const-string v1, "SET_OCCLUDED"

    const-string v0, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_4

    move v3, v4

    :cond_4
    invoke-static {p0, v0, v3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleSetOccluded(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;ZZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :pswitch_a
    const-string v1, "KEYGUARD_DONE_DRAWING"

    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleKeyguardDoneDrawing(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :pswitch_b
    const-string v1, "KEYGUARD_DONE"

    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    sget-object p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->handleKeyguardDone()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :pswitch_c
    const-string v1, "NOTIFY_FINISHED_GOING_TO_SLEEP"

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleNotifyFinishedGoingToSleep(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    goto :goto_2

    :pswitch_d
    const-string v1, "RESET"

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_5

    move v3, v4

    :cond_5
    invoke-static {p0, v3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleReset(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)V

    goto :goto_2

    :pswitch_e
    const-string v1, "HIDE"

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    sget-object p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->handleHide()V

    goto :goto_2

    :pswitch_f
    const-string v1, "SHOW"

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleShow(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_6
    :goto_2
    const-string p0, "SafeUIKeyguardViewMediator"

    const-string p1, "KeyguardViewMediator queue processing message: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
