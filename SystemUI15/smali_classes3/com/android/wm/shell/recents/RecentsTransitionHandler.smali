.class public final Lcom/android/wm/shell/recents/RecentsTransitionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mAnimApp:Landroid/app/IApplicationThread;

.field public mBackgroundColor:Landroid/graphics/Color;

.field public final mControllers:Ljava/util/ArrayList;

.field public final mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mHomeTransitionObserver:Lcom/android/wm/shell/transition/HomeTransitionObserver;

.field public mIsTaskResizing:Z

.field public final mMixers:Ljava/util/ArrayList;

.field public final mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

.field public final mRecentTasksController:Lcom/android/wm/shell/recents/RecentTasksController;

.field public final mStateListeners:Ljava/util/ArrayList;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/transition/HomeTransitionObserver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v0, p2, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mRecentTasksController:Lcom/android/wm/shell/recents/RecentTasksController;

    iput-object p4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mHomeTransitionObserver:Lcom/android/wm/shell/transition/HomeTransitionObserver;

    sget-boolean p4, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    new-instance p4, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p3, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/transition/Transitions;)V

    invoke-virtual {p1, p4, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/android/wm/shell/transition/Transitions;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    :cond_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mIsTaskResizing:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final canMergeAbortedTransition(Landroid/window/TransitionInfo;)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    return v1
.end method

.method public final findController(Landroid/os/IBinder;)I
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 7

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p2

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result v1

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result p2

    if-eq v1, p2, :cond_2

    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean p1, p2, p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long p1, p1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v4, 0x1

    const-string v5, "[%d] RecentsController.prepareForMerge: Snapshot due to requested display change"

    const-wide v2, 0x2057e7d96a513a95L    # 7.131862678565032E-153

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->getSnapshotsForPausingTasks()Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPendingPauseSnapshotsForCancel:Landroid/util/Pair;

    :cond_2
    return-object v0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 6

    invoke-virtual {p0, p4}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    move-result p4

    if-gez p4, :cond_1

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 p1, 0x1

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, -0x7e4d7bb18f95c164L

    const/4 v3, 0x0

    const-string v4, "RecentsTransitionHandler.mergeAnimation: no controller found"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-nez p4, :cond_3

    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p5, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/os/IBinder;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p2, p3, p5, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/os/IBinder;)V

    :goto_1
    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    const-string p3, "onTransitionConsumed"

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v1, p4

    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    move-result v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gez v2, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, 0x7e954bea15053630L    # 5.704856628212747E301

    const/4 v3, 0x0

    const-string v4, "RecentsTransitionHandler.startAnimation: no controller found"

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move-wide/from16 p1, v1

    move/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    invoke-static/range {p0 .. p5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v8

    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    iget-object v14, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_2

    iget v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v2, v0

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v21

    const-string v20, "[%d] RecentsController.start"

    const-wide v17, 0x11c68d80f7e53e33L    # 4.874305114663913E-223

    const/16 v19, 0x1

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-boolean v8, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mForceEnterPip:Z

    iget-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    const-string v13, "RecentsTransitionHandler"

    if-eqz v0, :cond_3

    iget-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    if-nez v0, :cond_4

    :cond_3
    move-object v1, v13

    move-object v3, v15

    goto/16 :goto_17

    :cond_4
    move v0, v8

    move v2, v0

    move-object v11, v10

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v12, 0x3

    const/4 v5, 0x2

    if-ge v0, v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v9

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    iget v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v8, v12, :cond_8

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v5, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v4, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTaskId:I

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v4, :cond_7

    if-nez v11, :cond_7

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    :cond_7
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v4, :cond_9

    new-instance v4, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    invoke-direct {v4, v3, v10}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    iput-object v4, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTaskState:Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_9

    iget v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v8, v5, :cond_9

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v5, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v4, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTaskId:I

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v4, :cond_9

    if-nez v11, :cond_9

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x0

    goto :goto_0

    :cond_a
    iget-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_b

    if-nez v2, :cond_b

    const-string v0, "Tried to start recents while it is already running."

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "No recents task and no pausing tasks"

    invoke-virtual {v15, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v0, :cond_c

    iget-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iput-object v6, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    move-object/from16 v0, p5

    iput-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object v1, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mClosingTasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_d

    move v0, v9

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;

    invoke-direct {v3}, Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v17, v0, 0x3

    iget-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mBackgroundColor:Landroid/graphics/Color;

    if-eqz v0, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda10;

    invoke-direct {v1, v6}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda10;-><init>(Landroid/window/TransitionInfo;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda11;

    invoke-direct {v1, v6}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda11;-><init>(Landroid/window/TransitionInfo;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda12;

    invoke-direct {v1, v15, v7, v2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;Landroid/view/SurfaceControl$Transaction;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_e
    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_34

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    sget-boolean v18, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_REMOTE:Z

    if-eqz v18, :cond_11

    sget-boolean v18, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    if-eqz v18, :cond_f

    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v18

    if-eqz v18, :cond_f

    goto :goto_4

    :cond_f
    sget-boolean v18, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    if-eqz v18, :cond_11

    invoke-virtual {v3, v5}, Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    move-result v18

    if-eqz v18, :cond_11

    iget-object v10, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v10, v10, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    invoke-static {v13, v5, v10}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->buildForceHideAnimationIfNeeded(Ljava/lang/String;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/transition/MultiTaskingTransitions;)Z

    move-result v10

    if-eqz v10, :cond_11

    :goto_4
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v10, v10, v9

    if-eqz v10, :cond_10

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v19, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v24

    const/16 v22, 0x0

    const-string v23, " Excluded change from remote targets, change=%s"

    const-wide v20, -0x13059b821c01c9dbL    # -9.098256608273048E216

    invoke-static/range {v19 .. v24}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    move/from16 v25, v0

    move/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 p4, v3

    move v9, v12

    const/4 v10, 0x0

    move-object v12, v4

    goto/16 :goto_12

    :cond_11
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result v19

    if-eqz v19, :cond_12

    sub-int v10, v16, v1

    iget-object v9, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    const/16 v21, 0x0

    move/from16 v25, v0

    move-object v0, v5

    move/from16 v22, v1

    move v1, v10

    move/from16 v23, v2

    move/from16 v2, v21

    move-object v10, v3

    move-object/from16 v3, p2

    move-object v5, v4

    move-object/from16 v4, p3

    move-object v12, v5

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/shared/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;IZLandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 p4, v10

    const/4 v9, 0x3

    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_12

    :cond_12
    move/from16 v25, v0

    move/from16 v22, v1

    move/from16 v23, v2

    move-object v9, v3

    move-object v12, v4

    invoke-virtual {v9, v5}, Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v0, :cond_1d

    sub-int v0, v16, v22

    iget-object v1, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    iget-object v2, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_1a

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    move-object/from16 p4, v3

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    goto :goto_7

    :cond_13
    move-object/from16 v3, p4

    goto :goto_6

    :cond_14
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_19

    invoke-static {v5, v6}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v24

    move-object/from16 p4, v9

    invoke-static {v5, v6}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v9

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-static/range {v24 .. v24}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v9

    if-eqz v9, :cond_16

    if-eqz v4, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int v4, v4, v21

    sub-int/2addr v4, v3

    invoke-virtual {v7, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8

    :cond_15
    sub-int v3, v21, v3

    invoke-virtual {v7, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8

    :cond_16
    invoke-static/range {v24 .. v24}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v9

    if-eqz v9, :cond_18

    if-eqz v4, :cond_17

    sub-int v3, v21, v3

    invoke-virtual {v7, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8

    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int v4, v4, v21

    sub-int/2addr v4, v3

    invoke-virtual {v7, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8

    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int v4, v4, v21

    sub-int/2addr v4, v3

    invoke-virtual {v7, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_8
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_9

    :cond_19
    move-object/from16 p4, v9

    goto :goto_9

    :cond_1a
    move-object/from16 p4, v9

    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_1b

    goto :goto_a

    :cond_1b
    invoke-static {v6, v5, v0, v7}, Lcom/android/wm/shell/shared/TransitionUtil;->createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v2

    :goto_a
    if-eqz v1, :cond_1c

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const/4 v1, 0x0

    invoke-static {v5, v0, v2, v1}, Lcom/android/wm/shell/shared/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    move-object/from16 p0, v5

    goto :goto_b

    :cond_1d
    move-object/from16 p4, v9

    sub-int v1, v16, v22

    iget-object v9, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    move-object v0, v5

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 p0, v5

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/shared/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;IZLandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    :goto_b
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v3, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    move-object/from16 v5, p0

    invoke-direct {v2, v5, v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v2, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v9, 0x2

    if-ne v2, v9, :cond_1f

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1e

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v0

    sget-object v24, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v29

    const-string v28, "  adding pausing leaf home taskId=%d"

    const-wide v25, 0x50aeb21e1fcc3388L    # 4.5495393139694635E80

    const/16 v27, 0x1

    invoke-static/range {v24 .. v29}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingSeparateHome:Z

    move-object v2, v10

    goto :goto_d

    :cond_1f
    const/4 v2, 0x1

    sub-int v3, v17, v22

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_20

    iget v2, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v4, v2

    move-object/from16 p0, v10

    int-to-long v9, v3

    sget-object v27, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v32

    const-string v31, "  adding pausing leaf taskId=%d at layer=%d"

    const-wide v28, 0x335226af014f3001L    # 1.7649159618909255E-61

    const/16 v30, 0x5

    invoke-static/range {v27 .. v32}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_20
    move-object/from16 p0, v10

    :goto_c
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v2, p0

    :goto_d
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    :cond_21
    move v0, v1

    const/4 v9, 0x3

    goto/16 :goto_f

    :cond_22
    move-object/from16 v5, p0

    move-object v2, v10

    if-eqz v2, :cond_24

    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v9, 0x3

    if-ne v1, v9, :cond_25

    sub-int v2, v23, v22

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_23

    int-to-long v3, v2

    sget-object v27, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v31, "  setting recents activity layer=%d"

    const-wide v28, -0x3ae664373799c776L    # -7.739704021079172E24

    const/16 v30, 0x1

    invoke-static/range {v27 .. v32}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_e

    :cond_24
    const/4 v9, 0x3

    :cond_25
    if-eqz v2, :cond_26

    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_26

    goto :goto_e

    :cond_26
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_27

    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v1, v1

    sget-object v27, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v31, "  adding opening leaf taskId=%d"

    const-wide v28, 0x4b7d86873dd33b82L    # 4.524769881066465E55

    const/16 v30, 0x1

    invoke-static/range {v27 .. v32}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    iget-object v1, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v2, v5, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_e
    move/from16 v0, v25

    :goto_f
    const/4 v10, 0x0

    goto/16 :goto_13

    :cond_29
    move-object/from16 p4, v9

    move-object v2, v10

    const/4 v9, 0x3

    if-eqz v2, :cond_2e

    invoke-static {v5, v6}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    sub-int v0, v17, v22

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_2a

    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v1, v1

    int-to-long v3, v0

    sget-object v27, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v32

    const-string v31, "  adding pausing taskId=%d at layer=%d"

    const-wide v28, -0x33863f690a3cc0beL    # -2.5863972605222288E60

    const/16 v30, 0x5

    invoke-static/range {v27 .. v32}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_2b
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    sub-int v0, v16, v22

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_2c

    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v1, v1

    int-to-long v3, v0

    sget-object v27, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v32

    const-string v31, "  adding opening taskId=%d at layer=%d"

    const-wide v28, -0x111b0ed433f2c213L    # -1.5503382498845807E226

    const/16 v30, 0x5

    invoke-static/range {v27 .. v32}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    const/4 v10, 0x0

    invoke-direct {v1, v5, v10}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    :cond_2d
    const/4 v10, 0x0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_33

    iget v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    sget-object v27, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v32

    const-string v31, "  unhandled root taskId=%d"

    const-wide v28, -0x47dccc221428c99fL    # -2.821569212260113E-38

    const/16 v30, 0x1

    invoke-static/range {v27 .. v32}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_2e
    const/4 v10, 0x0

    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isDividerBar(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sub-int v1, v16, v22

    iget-object v4, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    move-object v0, v5

    move-object/from16 v3, p2

    move-object v5, v4

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/shared/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;IZLandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v0, :cond_31

    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isTransientLaunchOverlay(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_31

    sub-int v1, v16, v22

    iget-object v4, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    move-object v0, v5

    move-object/from16 v3, p2

    move-object v5, v4

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/shared/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;IZLandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    iget-object v1, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_30

    if-eqz v11, :cond_30

    const/4 v3, 0x1

    invoke-virtual {v7, v1, v11, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_10

    :cond_30
    const/4 v3, 0x1

    :goto_10
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_31
    const/4 v3, 0x1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_33

    if-eqz v2, :cond_32

    iget v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    goto :goto_11

    :cond_32
    const-wide/16 v0, -0x1

    :goto_11
    sget-object v27, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v32

    const-string v31, "  unhandled change taskId=%d"

    const-wide v28, -0x75a745ed3618c075L    # -8.041045466584696E-259

    const/16 v30, 0x1

    invoke-static/range {v27 .. v32}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    :goto_12
    move/from16 v0, v25

    :goto_13
    add-int/lit8 v1, v22, 0x1

    move-object/from16 v3, p4

    move-object v4, v12

    move/from16 v2, v23

    const/4 v5, 0x2

    move v12, v9

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_34
    move/from16 v25, v0

    move-object v12, v4

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_35

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v0

    sget-object v27, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v32

    const-string v31, "Applying transaction=%d"

    const-wide v28, -0x7df2e7cacb6ccb33L    # -8.688926742548365E-299

    const/16 v30, 0x1

    invoke-static/range {v27 .. v32}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/shared/Flags;->returnAnimationFrameworkLibrary()V

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_36

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, -0x569fa30e43c9c278L    # -2.177289612833512E-109

    const/4 v5, 0x0

    const-string v6, "Trying to get a handler for takeover but the flag is disabled"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_36
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    iget-object v1, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mRecentTasksController:Lcom/android/wm/shell/recents/RecentTasksController;

    move/from16 v2, v25

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/recents/RecentTasksController;->getSplitBoundsForTaskId(I)Lcom/android/wm/shell/util/SplitBounds;

    move-result-object v1

    const-string v2, "key_SplitBounds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "extra_shell_can_hand_off_animation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_37

    iget v1, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v1, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    sget-object v20, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v24, "[%d] RecentsController.start: calling onAnimationStart with %d apps"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v25

    const-wide v21, 0x405c0a72f3f533baL    # 112.16326617188943

    const/16 v23, 0x5

    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :catch_0
    move-exception v0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    goto :goto_16

    :cond_37
    :goto_14
    iget-object v10, v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/RemoteAnimationTarget;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v15

    move-object v12, v1

    move-object v1, v13

    move-object v13, v2

    move-object v2, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v4

    move-object/from16 v16, v0

    :try_start_1
    invoke-interface/range {v10 .. v16}, Landroid/view/IRecentsAnimationRunner;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    const/4 v8, 0x0

    :goto_15
    iget-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_38

    iget-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/recents/RecentsTransitionStateListener;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/android/wm/shell/recents/RecentsTransitionStateListener;->onAnimationStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :catch_1
    move-exception v0

    :goto_16
    const-string v4, "Error starting recents animation"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "onAnimationStart() failed"

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    :cond_38
    invoke-static {v2}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    const/4 v1, 0x1

    return v1

    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Missing listener or transition, hasListener="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    if-eqz v2, :cond_39

    const/4 v4, 0x1

    goto :goto_18

    :cond_39
    const/4 v4, 0x0

    :goto_18
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hasTransition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    if-eqz v2, :cond_3a

    const/4 v4, 0x1

    goto :goto_19

    :cond_3a
    const/4 v4, 0x0

    :goto_19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No listener ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    if-nez v1, :cond_3b

    const/4 v4, 0x1

    goto :goto_1a

    :cond_3b
    const/4 v4, 0x0

    :goto_1a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") or no transition ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    if-nez v1, :cond_3c

    const/4 v4, 0x1

    goto :goto_1b

    :cond_3c
    const/4 v4, 0x0

    :goto_1b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    :goto_1c
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3d

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, -0x7745de03dacccecaL

    const/4 v4, 0x0

    const-string v5, "RecentsTransitionHandler.startAnimation: failed to start animation"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method public startRecentsTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)Landroid/os/IBinder;
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v6, "RecentsTransitionHandler.startRecentsTransition"

    const/4 v7, 0x0

    const-wide v3, -0x1f6d8df261e9cf6dL    # -1.582809556322524E157

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mIsTaskResizing:Z

    if-eqz v0, :cond_1

    const-string p1, "RecentsTransitionHandler"

    const-string/jumbo p2, "recents transition canceled during task resizing"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    invoke-direct {p1, p0, p5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Landroid/view/IRecentsAnimationRunner;)V

    const-string/jumbo p0, "startRecentsTransition during task resizing"

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iput-object p4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    new-instance p4, Landroid/window/WindowContainerTransaction;

    invoke-direct {p4}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p4, p1, p2, p3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    new-instance p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    invoke-direct {p1, p0, p5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Landroid/view/IRecentsAnimationRunner;)V

    const/4 p2, 0x0

    move p3, p2

    move-object p5, v2

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_6

    iget-object p5, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v0, p5, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-eqz v0, :cond_4

    iget-object v0, p5, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v0, p5, v3}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;I)V

    :goto_1
    move-object p5, v0

    goto :goto_2

    :cond_2
    iget-object v0, p5, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    iget-boolean v0, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v0, p5, v3}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;I)V

    goto :goto_1

    :cond_3
    iget-object v0, p5, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getVisibleTaskCount(I)I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v0, p5, v3}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;I)V

    goto :goto_1

    :cond_4
    move-object p5, v2

    :goto_2
    if-eqz p5, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    goto :goto_3

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    if-nez v2, :cond_7

    move-object p3, p0

    goto :goto_4

    :cond_7
    move-object p3, v2

    :goto_4
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, p4, p3}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p3

    :goto_5
    iget-object p4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_8

    iget-object p4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/wm/shell/recents/RecentsTransitionStateListener;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_9

    invoke-interface {p5, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    if-eqz p3, :cond_b

    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean p2, p2, v1

    if-eqz p2, :cond_a

    iget p2, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long p4, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    filled-new-array {p4, p2}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v3, 0x1

    const-string v4, "[%d] RecentsController.setTransition: id=%s"

    const-wide v1, -0x38833d3ad56c4f6L

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    iput-object p3, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const-string/jumbo p0, "startRecentsTransition"

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    :goto_6
    return-object p3
.end method

.method public final transferAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 6

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_2

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, 0x931d4fbe4ee31c5L

    const/4 v3, 0x0

    const-string v4, "RecentsTransitionHandler.transferAnimation: no controller found"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction;->getTransferLeashMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction;->getTransferLeashMap()Landroid/util/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result p1

    if-gez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_6

    iget-object p4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/SurfaceControl;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p3, p4, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot transfer invalid leash="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "RecentsTransitionHandler"

    invoke-static {v0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public final transitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    move-result p1

    if-gez p1, :cond_1

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 p1, 0x1

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, 0x1dc6817ace593c6cL    # 3.053278789018081E-165

    const/4 v3, 0x0

    const-string v4, "RecentsTransitionHandler.onTransitionReady: no controller found"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    if-eqz p0, :cond_2

    invoke-virtual {p2, p0}, Landroid/window/TransitionInfo;->setRemoteAppThread(Landroid/app/IApplicationThread;)V

    :cond_2
    return-void
.end method
