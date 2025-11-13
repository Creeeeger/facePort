.class public final Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;


# instance fields
.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mAnimations:Landroid/util/ArrayMap;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mPendingTransitionTokens:Ljava/util/List;

.field public final mShortcutController:Lcom/android/wm/shell/shortcut/ShortcutController;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Landroid/content/Context;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Lcom/android/wm/shell/shortcut/ShortcutController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p4, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    iput-object p6, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p7, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p8, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda1;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    iput-object p5, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mShortcutController:Lcom/android/wm/shell/shortcut/ShortcutController;

    return-void
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda2;

    move-object/from16 v6, p5

    invoke-direct {v5, v0, v4, v1, v6}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v10

    and-int/2addr v10, v2

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    iget v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v2, :cond_9

    const/4 v12, 0x4

    if-eq v10, v12, :cond_8

    const/4 v12, 0x6

    if-eq v10, v12, :cond_3

    :cond_2
    :goto_1
    move-object/from16 v14, p4

    goto :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v10

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v12, :cond_4

    :goto_2
    move v12, v7

    goto :goto_4

    :cond_4
    iget-object v12, v0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    const/16 v12, 0x3f0

    if-ne v10, v12, :cond_6

    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v12

    if-ne v12, v3, :cond_6

    move v12, v3

    goto :goto_3

    :cond_6
    move v12, v7

    :goto_3
    const/16 v13, 0x3f1

    if-ne v10, v13, :cond_7

    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v9

    if-ne v9, v11, :cond_7

    move v12, v3

    :cond_7
    :goto_4
    or-int/2addr v8, v12

    goto :goto_1

    :cond_8
    iget-object v9, v0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    goto :goto_1

    :cond_9
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v10

    if-ne v10, v11, :cond_2

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v10, :cond_a

    goto :goto_1

    :cond_a
    iget-object v10, v0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    move-object/from16 v14, p4

    move v9, v7

    goto :goto_5

    :cond_b
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    iget v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v11, v0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v11, v10}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v10

    iget v10, v10, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    new-instance v11, Landroid/animation/ValueAnimator;

    invoke-direct {v11}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v12, 0x190

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v12

    new-array v13, v2, [F

    fill-array-data v13, :array_0

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance v12, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v12}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    move-object/from16 v14, p4

    invoke-virtual {v14, v13}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v15, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v9, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda4;

    invoke-direct {v9, v12, v13, v15, v10}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)V

    invoke-virtual {v11, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$1;

    invoke-direct {v9, v0, v4, v11, v5}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$1;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v3

    :goto_5
    or-int/2addr v8, v9

    goto/16 :goto_0

    :cond_c
    if-nez v8, :cond_d

    return v7

    :cond_d
    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v2, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, v4, v3}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object v4, v0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v4, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda2;->run()V

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final startWindowingModeTransition(Landroid/window/WindowContainerTransaction;I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    if-eqz v0, :cond_0

    iget-object p0, v1, Lcom/android/wm/shell/transition/Transitions;->mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "startChangeTransition: handler=null, wct="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Caller="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ChangeTransitionProvider"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x6

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    const/16 p2, 0x3f1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected target windowing mode "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/16 p2, 0x3f0

    :goto_0
    invoke-virtual {v1, p2, p1, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
