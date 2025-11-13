.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController$3;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final synthetic val$position:I

.field public final synthetic val$result:[I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;[II)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->val$result:[I

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->val$position:I

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 3

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    :try_start_0
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "SplitScreenController"

    const-string p4, "Failed to invoke onAnimationFinished"

    invoke-static {p3, p4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->val$result:[I

    const/4 p3, 0x0

    aget p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    :cond_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p3, p3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->val$position:I

    iget p5, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p4, p5, :cond_1

    iget-object p3, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p3, p2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    goto :goto_1

    :cond_1
    iget-object p3, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p3, p2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_2
    return-void
.end method
