.class public final Lcom/android/systemui/qs/external/TileServices$6$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/external/TileServices$6;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServices$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$6$1;->this$1:Lcom/android/systemui/qs/external/TileServices$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices$6$1;->this$1:Lcom/android/systemui/qs/external/TileServices$6;

    iget-object v1, v1, Lcom/android/systemui/qs/external/TileServices$6;->this$0:Lcom/android/systemui/qs/external/TileServices;

    iget-object v1, v1, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices$6$1;->this$1:Lcom/android/systemui/qs/external/TileServices$6;

    iget-object v2, v2, Lcom/android/systemui/qs/external/TileServices$6;->this$0:Lcom/android/systemui/qs/external/TileServices;

    iget-object v2, v2, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/external/CustomTileInterface;

    invoke-interface {v3}, Lcom/android/systemui/qs/external/CustomTileInterface;->lazyInitialize()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$6$1;->this$1:Lcom/android/systemui/qs/external/TileServices$6;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$6;->this$0:Lcom/android/systemui/qs/external/TileServices;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServices;->mIsBootCompleted:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
