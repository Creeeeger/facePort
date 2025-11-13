.class public final synthetic Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda7;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeTask: failed, task token is null, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskViewTaskController"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction;->removeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->closeTaskView(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onReleased()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remove] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->recordLogHistory(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v5, -0x1fd5e42d8eb6c1e6L    # -1.7503008235371714E155

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    const-string v0, "ShellTaskOrganizer"

    const-string v2, "No registered listener found"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_6

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_2
    const/4 v5, 0x0

    if-ltz v4, :cond_5

    iget-object v6, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v5

    if-eq v5, p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_5
    iget-object v4, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_4
    if-ltz v4, :cond_7

    iget-object v6, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_6

    iget-object v6, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_5
    if-ltz v4, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->updateTaskListenerIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->resetTaskInfo()V

    return-void

    :goto_7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->isUsingShellTransitions()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->setTaskViewVisible(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->updateTaskVisibility()V

    :goto_8
    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->isUsingShellTransitions()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->setTaskViewVisible(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->updateTaskVisibility()V

    :goto_9
    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onInitialized()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mRegistered:[Z

    monitor-enter v1

    :try_start_2
    iget-object v2, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mRegistered:[Z

    const/4 v3, 0x0

    aget-boolean v4, v2, v3

    if-nez v4, :cond_d

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    iget-object v2, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    goto :goto_a

    :catchall_1
    move-exception p0

    goto :goto_b

    :cond_d
    :goto_a
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    invoke-direct {v2, v3}, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;-><init>(I)V

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Add] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->recordLogHistory(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_e
    :goto_c
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    const-string v1, "TaskViewTaskController"

    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_f

    goto :goto_d

    :cond_f
    invoke-virtual {v2, p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findPending(Lcom/android/wm/shell/taskview/TaskViewTaskController;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "removeTask: Token not found. But open transition in pending."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findPending(Lcom/android/wm/shell/taskview/TaskViewTaskController;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mRemoveCalled:Z

    goto :goto_f

    :cond_10
    :goto_d
    const-string/jumbo v0, "removeTask: Token found. now remove it."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_11

    goto :goto_e

    :cond_11
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    :goto_e
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v1, v0}, Landroid/window/WindowContainerTransaction;->removeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v2, v1, p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->closeTaskView(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    :cond_12
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
