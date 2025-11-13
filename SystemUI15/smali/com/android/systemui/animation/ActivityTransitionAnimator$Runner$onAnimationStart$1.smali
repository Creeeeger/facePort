.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationStart$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $apps:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic $delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

.field public final synthetic $finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic $nonApps:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;Landroid/view/IRemoteAnimationFinishedCallback;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationStart$1;->$delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationStart$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object p4, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationStart$1;->$apps:[Landroid/view/RemoteAnimationTarget;

    iput-object p6, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationStart$1;->$nonApps:[Landroid/view/RemoteAnimationTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationStart$1;->$delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    const-string v1, "ActivityTransitionAnimator"

    if-nez v8, :cond_0

    const-string v2, "onAnimationStart called after completion"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationStart$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    goto/16 :goto_b

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationStart$1;->$apps:[Landroid/view/RemoteAnimationTarget;

    iget-object v3, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationStart$1;->$nonApps:[Landroid/view/RemoteAnimationTarget;

    iget-object v5, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner$onAnimationStart$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iget-object v0, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->timeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v4, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->onTimeout:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onTimeout$1;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->onLongTimeout:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onLongTimeout$1;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean v0, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->timedOut:Z

    if-eqz v0, :cond_2

    if-eqz v5, :cond_14

    :try_start_0
    invoke-interface {v5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_b

    :cond_2
    iget-boolean v0, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->cancelled:Z

    if-eqz v0, :cond_3

    goto/16 :goto_b

    :cond_3
    const/4 v4, 0x0

    iget-object v6, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    if-nez v2, :cond_4

    move-object v7, v4

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v7, Lkotlin/jvm/internal/ArrayIterator;

    invoke-direct {v7, v2}, Lkotlin/jvm/internal/ArrayIterator;-><init>([Ljava/lang/Object;)V

    move-object v2, v4

    :cond_5
    :goto_0
    invoke-virtual {v7}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/RemoteAnimationTarget;

    iget v10, v9, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v10, v0, :cond_5

    sget-object v10, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/shared/Flags;->returnAnimationFrameworkLibrary()V

    if-eqz v2, :cond_7

    iget-boolean v10, v9, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    if-nez v10, :cond_6

    iget-boolean v11, v2, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    if-eqz v11, :cond_6

    goto :goto_1

    :cond_6
    if-nez v10, :cond_5

    iget-object v10, v9, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget-object v11, v2, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    mul-int/2addr v10, v12

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    mul-int/2addr v11, v12

    if-le v10, v11, :cond_5

    :cond_7
    :goto_1
    move-object v2, v9

    goto :goto_0

    :cond_8
    move-object v7, v2

    :goto_2
    if-nez v7, :cond_b

    const-string v0, "Aborting the animation as no window is opening"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_9

    :try_start_1
    invoke-interface {v5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_9
    :goto_3
    sget-boolean v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DEBUG_TRANSITION_ANIMATION:Z

    if-eqz v0, :cond_a

    const-string v0, "Calling controller.onTransitionAnimationCancelled() [no window opening]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    invoke-interface {v6, v4}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onTransitionAnimationCancelled(Ljava/lang/Boolean;)V

    iget-object v0, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->listener:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationCancelled()V

    goto/16 :goto_b

    :cond_b
    const/4 v0, 0x0

    if-eqz v3, :cond_d

    array-length v1, v3

    move v2, v0

    :goto_4
    if-ge v2, v1, :cond_d

    aget-object v9, v3, v2

    iget v10, v9, Landroid/view/RemoteAnimationTarget;->windowType:I

    const/16 v11, 0x7e3

    if-ne v10, v11, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    move-object v9, v4

    :goto_5
    iget-object v4, v7, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-interface {v6}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lcom/android/systemui/animation/TransitionAnimator$State;

    iget v11, v4, Landroid/graphics/Rect;->top:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    iget v13, v4, Landroid/graphics/Rect;->left:I

    iget v14, v4, Landroid/graphics/Rect;->right:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x30

    const/16 v18, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lcom/android/systemui/animation/TransitionAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_6
    move-object v12, v1

    goto :goto_7

    :cond_e
    invoke-interface {v6}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;

    move-result-object v1

    goto :goto_6

    :goto_7
    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v7, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    if-eqz v1, :cond_f

    :goto_8
    move v13, v0

    goto :goto_9

    :cond_f
    iget-object v0, v7, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_11

    iget-object v1, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->callback:Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStartingSurfaceOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_10

    const-string v0, "CentralSurfaces"

    const-string v1, "No starting surface, defaulting to SystemBGColor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    move-result v0

    goto :goto_8

    :cond_10
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStartingSurfaceOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->getBackgroundColor(Landroid/app/TaskInfo;)I

    move-result v0

    goto :goto_8

    :cond_11
    iget v0, v7, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    goto :goto_8

    :goto_9
    iget-object v0, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;

    invoke-interface {v6}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lcom/android/systemui/animation/TransitionAnimator;->isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__PlatformAnimationLib(Landroid/view/View;Lcom/android/systemui/animation/TransitionAnimator$State;)Z

    move-result v3

    invoke-interface {v6}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v3, :cond_12

    iget-object v0, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    :goto_a
    iput v0, v12, Lcom/android/systemui/animation/TransitionAnimator$State;->topCornerRadius:F

    iput v0, v12, Lcom/android/systemui/animation/TransitionAnimator$State;->bottomCornerRadius:F

    :cond_13
    new-instance v11, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;

    iget-object v1, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move-object v0, v11

    move-object v2, v8

    move-object v6, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;ZLandroid/graphics/Rect;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V

    iget-object v0, v11, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->isBelowAnimatingWindow()Z

    move-result v1

    xor-int/lit8 v14, v1, 0x1

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->isBelowAnimatingWindow()Z

    move-result v0

    xor-int/lit8 v15, v0, 0x1

    iget-object v10, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/animation/TransitionAnimator;->startAnimation(Lcom/android/systemui/animation/TransitionAnimator$Controller;Lcom/android/systemui/animation/TransitionAnimator$State;IZZ)Lcom/android/systemui/animation/TransitionAnimator$startAnimation$1;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->animation:Lcom/android/systemui/animation/TransitionAnimator$startAnimation$1;

    :cond_14
    :goto_b
    return-void
.end method
