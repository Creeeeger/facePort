.class public final Lcom/android/wm/shell/windowdecor/TaskOperations;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-void
.end method


# virtual methods
.method public final closeTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen(Landroid/window/WindowContainerToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->dismissSplitTask(Landroid/window/WindowContainerToken;)V

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Landroid/window/WindowContainerTransaction;->closeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :goto_0
    return-void
.end method

.method public final maximizeTask(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen(Landroid/window/WindowContainerToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->maximizeSplitTask(Landroid/window/WindowContainerToken;)V

    return-void

    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    if-ne v1, p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    invoke-virtual {v0, v3, p2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    if-ne v1, v2, :cond_3

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_3
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->startWindowingModeTransition(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :goto_2
    return-void
.end method

.method public final minimizeTask(Landroid/window/WindowContainerToken;)V
    .locals 3

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :goto_0
    return-void
.end method

.method public final moveFreeformToSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v0, :cond_6

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v4, v0, :cond_1

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    if-ne v4, v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iget-boolean v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-nez v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "moveFreeformToSplit: failed, not support mw, top fullscreen t#"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskOperations"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    :cond_4
    :goto_1
    move v6, v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move v7, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onFreeformToSplitRequested(Landroid/app/ActivityManager$RunningTaskInfo;ZIZLandroid/graphics/Rect;Z)V

    :cond_6
    return-void
.end method

.method public final moveToFreeform(Landroid/window/WindowContainerToken;ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen(Landroid/window/WindowContainerToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveSplitToFreeform(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;Z)V

    return-void

    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    if-eqz p2, :cond_1

    const-string p1, "compat_to_freeform"

    invoke-virtual {v0, p3, p1}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->startWindowingModeTransition(Landroid/window/WindowContainerTransaction;I)V

    return-void
.end method

.method public final sendBackEvent(II)V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    move-object v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TaskOperations"

    const-string v1, "Inject input event fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
