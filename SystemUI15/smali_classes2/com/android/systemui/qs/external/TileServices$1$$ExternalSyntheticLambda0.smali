.class public final synthetic Lcom/android/systemui/qs/external/TileServices$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/external/TileServices$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/external/TileServices$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/external/TileServices$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/external/TileServices$1;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$1;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TileServices"

    const-string v1, "refreshAllTileDetailInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
