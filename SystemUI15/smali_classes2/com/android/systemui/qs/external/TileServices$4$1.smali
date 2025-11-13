.class public final Lcom/android/systemui/qs/external/TileServices$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/external/TileServices$4;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServices$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$4$1;->this$1:Lcom/android/systemui/qs/external/TileServices$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices$4$1;->this$1:Lcom/android/systemui/qs/external/TileServices$4;

    iget-object v0, v0, Lcom/android/systemui/qs/external/TileServices$4;->this$0:Lcom/android/systemui/qs/external/TileServices;

    iget-object v0, v0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$4$1;->this$1:Lcom/android/systemui/qs/external/TileServices$4;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$4;->this$0:Lcom/android/systemui/qs/external/TileServices;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/external/TileServiceManager;

    iget-boolean v3, v2, Lcom/android/systemui/qs/external/TileServiceManager;->mIsSecCustomTile:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    :try_start_1
    iget-object v2, v2, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
