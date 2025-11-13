.class Landroid/window/SurfaceSyncGroup$2;
.super Landroid/window/ITransactionReadyCallback$Stub;
.source "SurfaceSyncGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/SurfaceSyncGroup;->createTransactionReadyCallback(Z)Landroid/window/ITransactionReadyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/SurfaceSyncGroup;

.field final synthetic blacklist val$parentSyncGroupMerge:Z


# direct methods
.method constructor blacklist <init>(Landroid/window/SurfaceSyncGroup;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/window/SurfaceSyncGroup$2;->this$0:Landroid/window/SurfaceSyncGroup;

    iput-boolean p2, p0, Landroid/window/SurfaceSyncGroup$2;->val$parentSyncGroupMerge:Z

    invoke-direct {p0}, Landroid/window/ITransactionReadyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onTransactionReady(Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup$2;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v0}, Landroid/window/SurfaceSyncGroup;->-$$Nest$fgetmLock(Landroid/window/SurfaceSyncGroup;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->sanitize(II)V

    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup$2;->val$parentSyncGroupMerge:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/window/SurfaceSyncGroup$2;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v1}, Landroid/window/SurfaceSyncGroup;->-$$Nest$fgetmTransaction(Landroid/window/SurfaceSyncGroup;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup$2;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v1}, Landroid/window/SurfaceSyncGroup;->-$$Nest$fgetmTransaction(Landroid/window/SurfaceSyncGroup;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup$2;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v1}, Landroid/window/SurfaceSyncGroup;->-$$Nest$fgetmPendingSyncs(Landroid/window/SurfaceSyncGroup;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/window/SurfaceSyncGroup$2;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v3}, Landroid/window/SurfaceSyncGroup;->-$$Nest$fgetmTrackName(Landroid/window/SurfaceSyncGroup;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTransactionReady callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup$2;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v1}, Landroid/window/SurfaceSyncGroup;->-$$Nest$mcheckIfSyncIsComplete(Landroid/window/SurfaceSyncGroup;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
