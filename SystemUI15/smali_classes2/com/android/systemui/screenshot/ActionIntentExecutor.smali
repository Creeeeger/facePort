.class public final Lcom/android/systemui/screenshot/ActionIntentExecutor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final context:Landroid/content/Context;

.field public final displayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final systemUiProxy:Lcom/android/systemui/screenshot/proxy/SystemUiProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/screenshot/proxy/SystemUiProxy;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->activityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p5, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->systemUiProxy:Lcom/android/systemui/screenshot/proxy/SystemUiProxy;

    iput-object p6, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    return-void
.end method


# virtual methods
.method public final launchIntent(Landroid/content/Intent;Landroid/os/UserHandle;ZLandroid/app/ActivityOptions;Landroid/app/ExitTransitionCoordinator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;

    iget v3, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;-><init>(Lcom/android/systemui/screenshot/ActionIntentExecutor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-boolean v1, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    iget-object v2, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/screenshot/ActionIntentExecutor;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget-boolean v1, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    iget-object v4, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$4:Ljava/lang/Object;

    check-cast v4, Landroid/app/ExitTransitionCoordinator;

    iget-object v8, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$3:Ljava/lang/Object;

    check-cast v8, Landroid/app/ActivityOptions;

    iget-object v9, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$2:Ljava/lang/Object;

    check-cast v9, Landroid/os/UserHandle;

    iget-object v10, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$1:Ljava/lang/Object;

    check-cast v10, Landroid/content/Intent;

    iget-object v11, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/screenshot/ActionIntentExecutor;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "screenshot"

    iget-object v4, v1, Lcom/android/systemui/screenshot/ActionIntentExecutor;->activityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v4, "ActivityManagerWrapper"

    const-string v8, "Failed to close system windows"

    invoke-static {v4, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iput-object v1, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$1:Ljava/lang/Object;

    move-object/from16 v8, p2

    iput-object v8, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$2:Ljava/lang/Object;

    move-object/from16 v9, p4

    iput-object v9, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$3:Ljava/lang/Object;

    move-object/from16 v10, p5

    iput-object v10, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$4:Ljava/lang/Object;

    move/from16 v11, p3

    iput-boolean v11, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    iput v7, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    iget-object v0, v1, Lcom/android/systemui/screenshot/ActionIntentExecutor;->systemUiProxy:Lcom/android/systemui/screenshot/proxy/SystemUiProxy;

    check-cast v0, Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default()Lkotlinx/coroutines/CompletableDeferredImpl;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$onDoneBinder$1;

    invoke-direct {v13, v12}, Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$onDoneBinder$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    iget-object v0, v0, Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient;->proxyConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v14, Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$2;

    invoke-direct {v14, v13}, Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$2;-><init>(Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$onDoneBinder$1;)V

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {v0, v14}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v2}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v12, :cond_5

    goto :goto_3

    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_6
    const-string v0, "SystemUiProxy"

    const-string v12, "Keyguard dismissal request failed"

    invoke-static {v0, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move v15, v11

    move-object v11, v1

    move v1, v15

    move-object/from16 v16, v10

    move-object v10, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, v17

    :goto_4
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v12

    if-ne v12, v7, :cond_8

    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    iput-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_8
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_a

    iget-object v4, v11, Lcom/android/systemui/screenshot/ActionIntentExecutor;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;

    invoke-direct {v5, v11, v10, v0, v7}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$2;-><init>(Lcom/android/systemui/screenshot/ActionIntentExecutor;Landroid/content/Intent;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v11, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$2:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$3:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$4:Ljava/lang/Object;

    iput-boolean v1, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    iput v6, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    invoke-static {v4, v5, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    return-object v3

    :cond_9
    move-object v2, v11

    goto :goto_7

    :cond_a
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_5

    :cond_b
    move-object v0, v7

    :goto_5
    iput-object v11, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$2:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$3:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->L$4:Ljava/lang/Object;

    iput-boolean v1, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->Z$0:Z

    iput v5, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/internal/infra/ServiceConnector$Impl;

    iget-object v5, v11, Lcom/android/systemui/screenshot/ActionIntentExecutor;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, v11, Lcom/android/systemui/screenshot/ActionIntentExecutor;->context:Landroid/content/Context;

    const-class v8, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    sget-object v8, Lcom/android/systemui/screenshot/ActionIntentExecutor$getCrossProfileConnector$1;->INSTANCE:Lcom/android/systemui/screenshot/ActionIntentExecutor$getCrossProfileConnector$1;

    const v9, 0x40000021    # 2.0000079f

    move-object/from16 p0, v4

    move-object/from16 p1, v5

    move-object/from16 p2, v6

    move/from16 p3, v9

    move/from16 p4, v7

    move-object/from16 p5, v8

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    invoke-static {}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default()Lkotlinx/coroutines/CompletableDeferredImpl;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;

    invoke-direct {v6, v10, v0, v5}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-virtual {v4, v6}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v5, v2}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v2, :cond_c

    goto :goto_6

    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_6
    if-ne v0, v3, :cond_9

    return-object v3

    :goto_7
    if-eqz v1, :cond_e

    new-instance v0, Landroid/view/RemoteAnimationAdapter;

    sget-object v1, Lcom/android/systemui/screenshot/ActionIntentExecutorKt;->SCREENSHOT_REMOTE_RUNNER:Lcom/android/systemui/screenshot/ActionIntentExecutorKt$SCREENSHOT_REMOTE_RUNNER$1;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move-wide/from16 p2, v3

    move-wide/from16 p4, v5

    invoke-direct/range {p0 .. p5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v2, v2, Lcom/android/systemui/screenshot/ActionIntentExecutor;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_d
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_8
    const-string v1, "ActionIntentExecutor"

    const-string v2, "Error overriding screenshot app transition"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final launchIntentAsync(Landroid/content/Intent;Landroid/os/UserHandle;ZLandroid/app/ActivityOptions;Landroid/app/ExitTransitionCoordinator;)V
    .locals 11

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v10, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntentAsync$$inlined$launch$default$1;

    const/4 v3, 0x0

    const-string v2, "ActionIntentExecutor#launchIntentAsync"

    move-object v1, v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntentAsync$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/screenshot/ActionIntentExecutor;Landroid/content/Intent;Landroid/os/UserHandle;ZLandroid/app/ActivityOptions;Landroid/app/ExitTransitionCoordinator;)V

    move-object v1, p0

    iget-object v1, v1, Lcom/android/systemui/screenshot/ActionIntentExecutor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v10, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
