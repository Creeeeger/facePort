.class public final Lcom/android/systemui/qs/SecQSTileInstanceManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public final mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

.field public final mTileInstances:Ljava/util/LinkedHashMap;

.field public final mTileUsingHosts:Ljava/util/LinkedHashMap;

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/logging/QSLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileInstances:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileUsingHosts:Ljava/util/LinkedHashMap;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    iput-object p4, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    check-cast p3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mUserId:I

    return-void
.end method


# virtual methods
.method public final releaseTileUsing(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileInstances:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "releaseTileUsing host:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " tile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SecQSTileInstanceManager"

    invoke-static {v1, p2, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileUsingHosts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileUsingHosts:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileInstances:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileUsingHosts:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final requestTileUsing(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileInstances:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestTileUsing host:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " tile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SecQSTileInstanceManager"

    invoke-static {v1, p2, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    if-eqz v1, :cond_0

    invoke-virtual {v3, p2}, Lcom/android/systemui/qs/logging/QSLogger;->logTileAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destroying not available tile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Tile not available"

    invoke-virtual {v3, p2, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "No factory for a spec: "

    invoke-static {v1, p2, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileInstances:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileUsingHosts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_3

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    :cond_3
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileUsingHosts:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method
