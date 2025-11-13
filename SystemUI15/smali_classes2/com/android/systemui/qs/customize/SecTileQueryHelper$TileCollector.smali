.class public final Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile$Callback;


# instance fields
.field public final mIsTopEdit:Z

.field public final mQSHost:Lcom/android/systemui/qs/QSHost;

.field public final mQSTileList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;Ljava/util/List;Lcom/android/systemui/qs/QSHost;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;",
            "Lcom/android/systemui/qs/QSHost;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->this$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSTileList:Ljava/util/List;

    iput-boolean p4, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mIsTopEdit:Z

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    new-instance v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;-><init>(Lcom/android/systemui/plugins/qs/QSTile;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSTileList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSTileList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;

    iget-boolean v4, v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mReady:Z

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->isTileReady()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4, p0}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    invoke-interface {v4, p0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iput-boolean v0, v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mReady:Z

    goto :goto_0

    :cond_1
    iget-boolean v2, v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mReady:Z

    if-nez v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSTileList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->this$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4, v0}, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;ZLjava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, v2, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSHost:Lcom/android/systemui/qs/QSHost;

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mIsTopEdit:Z

    invoke-direct {v0, v2, v1, p0}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;Lcom/android/systemui/qs/QSHost;Z)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
