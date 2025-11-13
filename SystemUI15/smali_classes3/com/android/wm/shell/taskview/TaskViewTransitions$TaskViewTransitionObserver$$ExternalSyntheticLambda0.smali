.class public final synthetic Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;

    iput-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;->this$0:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    iget-object v2, v3, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v4, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    iget-object v3, v3, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v7, 0x0

    invoke-direct {v5, v7, v7, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "handleTaskViewTaskChanges: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "TaskViewTransitions"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/window/TransitionInfo$Change;->setSkipSetupAnimHierarchy(Z)V

    invoke-virtual {v1, v4, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v4, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v4, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, v4, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->setFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_3
    return-void
.end method
