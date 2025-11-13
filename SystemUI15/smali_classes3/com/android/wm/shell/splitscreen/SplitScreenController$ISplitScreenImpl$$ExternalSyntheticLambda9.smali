.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:[[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$1:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;I)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$0:[[Landroid/view/RemoteAnimationTarget;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$1:[Landroid/view/RemoteAnimationTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$0:[[Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$1:[Landroid/view/RemoteAnimationTarget;

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    move v1, v2

    move v4, v1

    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_2

    aget-object v5, p0, v1

    iget v5, v5, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ge v4, v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStartingSplitTasksLayer:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    const-string v4, "SplitScreenController#onStartingSplitLegacy"

    invoke-virtual {p1, p0, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->reparentSplitTasksForAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStartingSplitTasksLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Landroid/view/RemoteAnimationTarget;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object p1

    aput-object p1, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length p1, p0

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_6

    aget-object v4, p0, v1

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    aput-object v3, v0, v2

    return-void

    :catchall_0
    move-exception p1

    array-length v0, p0

    :goto_3
    if-ge v2, v0, :cond_8

    aget-object v1, p0, v2

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$0:[[Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$1:[Landroid/view/RemoteAnimationTarget;

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v3, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v4, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    iget-object v3, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    invoke-virtual {v1, v2, v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mGoingToRecentsTasksLayer:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_a

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_a
    const-string v4, "SplitScreenController#onGoingToRecentsLegacy"

    invoke-virtual {p1, p0, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->reparentSplitTasksForAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object p0

    iput-object p0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mGoingToRecentsTasksLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    const/4 p0, 0x1

    new-array v3, p0, [Landroid/view/RemoteAnimationTarget;

    iget-object p0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    aput-object p0, v3, v2

    :cond_b
    :goto_4
    aput-object v3, v0, v2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
