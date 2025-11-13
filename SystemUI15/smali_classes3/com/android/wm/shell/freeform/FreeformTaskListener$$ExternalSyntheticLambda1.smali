.class public final synthetic Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$MultiWindowCoreStateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformTaskListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;

    return-void
.end method


# virtual methods
.method public final onMultiWindowCoreStateChanged(I)Z
    .locals 7

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    and-int/2addr p1, v2

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-nez p1, :cond_5

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    iget-object v4, v3, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    move-result v4

    iget-object v5, v3, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v5

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    iget-object v4, v3, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v4, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v4, v3, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_1
    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v4, :cond_3

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v3, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    instance-of v4, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    check-cast v3, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    iget-object v4, v3, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    iget-object v5, v3, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v6, 0x4

    invoke-virtual {v5, v6, p1, v3}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    return v1
.end method
