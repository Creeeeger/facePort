.class public final Lcom/android/wm/shell/splitscreen/StageCoordinator$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic val$isEnteringSplit:Z

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$isEnteringSplit:Z

    iput p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    const-string p1, "StageCoordinator"

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-boolean p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$isEnteringSplit:Z

    if-eqz p4, :cond_0

    iget-object v0, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$2$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "startIntentLegacy"

    const-string/jumbo v1, "side stage was not populated"

    invoke-static {v0, v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->handleUnsupportedSplitStart()V

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    aget-object v1, p2, v0

    iget v2, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v2, :cond_1

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p6, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    if-eqz p5, :cond_3

    :try_start_0
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p5

    const-string p6, "Error finishing legacy transition: "

    invoke-static {p1, p6, p5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    if-nez p4, :cond_5

    if-eqz p2, :cond_5

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget p4, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$position:I

    if-ne p0, p4, :cond_4

    iget-object p0, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    goto :goto_2

    :cond_4
    iget-object p0, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    :goto_2
    iget-object p0, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_5
    return-void
.end method
