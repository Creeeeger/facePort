.class public final synthetic Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->this$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;ZLjava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSHost:Lcom/android/systemui/qs/QSHost;

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mIsTopEdit:Z

    invoke-direct {v2, v0, v3, p0}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;Lcom/android/systemui/qs/QSHost;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
