.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;->f$1:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;->f$2:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;->f$3:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;->f$1:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;->f$2:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;->f$3:Landroid/view/SurfaceControl$Transaction;

    move-object v3, p1

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget p1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result p1

    invoke-virtual {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition$1(Landroid/window/WindowContainerTransaction;I)V

    iget-object p1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    new-instance p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda39;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda39;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method
