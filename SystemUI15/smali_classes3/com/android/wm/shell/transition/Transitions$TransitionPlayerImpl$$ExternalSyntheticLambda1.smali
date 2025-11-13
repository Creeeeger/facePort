.class public final synthetic Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Landroid/window/TransitionRequestInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    iput-object p2, p0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl$$ExternalSyntheticLambda1;->f$2:Landroid/window/TransitionRequestInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl$$ExternalSyntheticLambda1;->f$2:Landroid/window/TransitionRequestInfo;

    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getDebugId()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v11, "Transition requested (#%d): %s %s"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4, v2, v6}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, 0x46dcb79c1643827L

    const/4 v10, 0x1

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/transition/Transitions;->mKnownTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>(Landroid/os/IBinder;)V

    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mKnownTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v4

    const/16 v5, 0xc

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mSleepHandler:Lcom/android/wm/shell/transition/SleepHandler;

    invoke-virtual {v4, v1, p0}, Lcom/android/wm/shell/transition/SleepHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mSleepHandler:Lcom/android/wm/shell/transition/SleepHandler;

    iput-object v4, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-object v5, v6

    goto/16 :goto_3

    :cond_1
    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    move-object v5, v6

    :goto_0
    if-ltz v4, :cond_3

    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v5, v1, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iput-object v4, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result v7

    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result v8

    if-eq v7, v8, :cond_7

    if-nez v5, :cond_4

    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    :cond_4
    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo$DisplayChange;->getDisplayId()I

    move-result v8

    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result v9

    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result v10

    iget-object v4, v7, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v11, v7, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;

    if-nez v11, :cond_5

    const-string v7, "DisplayController"

    const-string v8, "Skipping Display rotate on non-added display."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    iget-object v12, v11, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    if-eqz v12, :cond_6

    iget-object v11, v11, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v12, v11, v10}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    :cond_6
    iget-object v7, v7, Lcom/android/wm/shell/common/DisplayController;->mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

    const/4 v11, 0x0

    move-object v12, v5

    invoke-virtual/range {v7 .. v12}, Lcom/android/wm/shell/common/DisplayChangeController;->dispatchOnDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    monitor-exit v4

    goto :goto_3

    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v4

    const/16 v7, 0x8

    if-eq v4, v7, :cond_8

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_a

    :cond_8
    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_a

    if-nez v5, :cond_9

    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    :cond_9
    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v4, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p0, v6}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_a
    iget-object p0, v0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    move-object v6, v5

    :goto_4
    invoke-virtual {p0, v1, v6}, Landroid/window/TaskOrganizer;->startTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    iget-object p0, v0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz p0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mPendingTime:J

    :cond_c
    return-void

    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Transition already started "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
