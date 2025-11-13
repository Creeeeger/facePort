.class public final synthetic Lcom/android/wm/shell/common/SyncTransactionQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/SyncTransactionQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/SyncTransactionQueue;

    const-string v0, "Sync Transaction timed-out: "

    iget-object v1, p0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mInFlight:Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SyncTransactionQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mInFlight:Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

    iget-object v0, v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue;->mInFlight:Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

    iget v0, p0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->mId:I

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
