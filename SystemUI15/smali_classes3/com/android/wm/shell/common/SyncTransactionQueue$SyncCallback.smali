.class public final Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;
.super Landroid/window/WindowContainerTransactionCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mId:I

.field public final mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

.field public final mWCT:Landroid/window/WindowContainerTransaction;

.field public final synthetic this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-direct {p0}, Landroid/window/WindowContainerTransactionCallback;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mId:I

    iput-object p2, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;ILandroid/window/WindowContainerTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-direct {p0}, Landroid/window/WindowContainerTransactionCallback;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mId:I

    iput-object p4, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    new-instance p1, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    invoke-direct {p1, p3, p2}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;-><init>(ILcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    return-void
.end method


# virtual methods
.method public final onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v0, p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x270ea917ae48c458L    # -2.79842977115878E120

    const/4 v5, 0x1

    const-string v6, "SyncTransactionQueue.onTransactionReady(): syncId=%d"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v0, v0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;ILandroid/view/SurfaceControl$Transaction;)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final send()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v1, v0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mInFlight:Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

    if-ne v1, p0, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_2

    iput-object p0, v0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mInFlight:Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

    iget-object v0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/window/WindowOrganizer;

    invoke-direct {v0}, Landroid/window/WindowOrganizer;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    iget v2, v1, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mTransit:I

    iget-object v1, v1, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mAdapter:Landroid/view/RemoteAnimationAdapter;

    iget-object v3, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/window/WindowOrganizer;->startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mId:I

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/window/WindowOrganizer;

    invoke-direct {v0}, Landroid/window/WindowOrganizer;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v1, p0}, Landroid/window/WindowOrganizer;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mId:I

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const-wide/16 v1, 0x14b4

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mOnReplyTimeout:Lcom/android/wm/shell/common/SyncTransactionQueue$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sync Transactions must be serialized. In Flight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v2, v2, Lcom/android/wm/shell/common/SyncTransactionQueue;->mInFlight:Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

    iget v2, v2, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object p0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mInFlight:Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

    iget-object p0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
