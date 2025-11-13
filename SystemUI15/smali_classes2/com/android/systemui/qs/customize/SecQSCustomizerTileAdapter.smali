.class public final Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mActiveCurrentPage:I

.field public mActiveTiles:Ljava/util/ArrayList;

.field public mAllTiles:Ljava/util/List;

.field public mAvailableCurrentPage:I

.field public mAvailableTiles:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSpecs:Ljava/util/List;

.field public mDefaultActiveTiles:Ljava/util/ArrayList;

.field public final mHost:Lcom/android/systemui/qs/QSTileHost;

.field public mIsLoadedAllTiles:Z

.field public final mIsTopEdit:Z

.field public mOnTileChangedCallback:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda14;

.field public final mQQSHost:Lcom/android/systemui/qs/SecQQSTileHost;

.field public final mTileQueryHelper:Lcom/android/systemui/qs/customize/SecTileQueryHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;ZLcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsLoadedAllTiles:Z

    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsTopEdit:Z

    iget-object p2, p2, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mQQSHost:Lcom/android/systemui/qs/SecQQSTileHost;

    new-instance p2, Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    invoke-direct {p2, p1, p4, p5, p6}, Lcom/android/systemui/qs/customize/SecTileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mTileQueryHelper:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    iput-object p0, p2, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final updateRemovedTileList(Ljava/lang/String;Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsTopEdit:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    const-string/jumbo v4, "sysui_removed_qs_tiles"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateRemovedTileList : tile = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tileIsAdded = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "QSTileHost"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ","

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v1, v6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p2

    invoke-static {p0, v4, p1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_2
    return-void
.end method

.method public final updateTiles()V
    .locals 15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsLoadedAllTiles:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mQQSHost:Lcom/android/systemui/qs/SecQQSTileHost;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsTopEdit:Z

    if-eqz v3, :cond_0

    iget-object v4, v1, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f130e52

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, v2, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, "SecQSCustomizerTileAdapter"

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/systemui/plugins/qs/QSTile$State;->isCustomTile:Z

    if-eqz v9, :cond_6

    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    const-string v10, "Can\'t find component "

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    const-wide/16 v13, 0x0

    invoke-interface {v11, v9, v13, v14, v12}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v11

    if-nez v11, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    if-eqz v11, :cond_5

    move v8, v7

    goto :goto_4

    :catch_0
    :cond_5
    move v8, v0

    goto :goto_4

    :cond_6
    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v8

    :goto_4
    if-eqz v8, :cond_3

    new-instance v8, Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-direct {v8}, Lcom/android/systemui/qs/customize/CustomTileInfo;-><init>()V

    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v6

    iput-object v6, v8, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-boolean v0, v6, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iput-boolean v7, v8, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    invoke-static {v5}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v8, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v7, v7, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/android/systemui/qs/customize/CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "addingTiles: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mDefaultActiveTiles:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mActiveTiles:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mTileQueryHelper:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mFinished:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTileQueryFinished:Z

    iget-object v1, v2, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    if-eqz v3, :cond_8

    iget-object v1, v1, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getSupportedAllTileList()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileHost;->getDefaultTileList()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileListToNewOsTileList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f1301d5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-static {v1, v5, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    :goto_6
    if-ge v0, v5, :cond_a

    aget-object v6, v1, v0

    const-string v8, ""

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "cell"

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, "wifi"

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "custom("

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_7

    :cond_c
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_7

    :cond_d
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    new-instance v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;-><init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;Ljava/util/List;Lcom/android/systemui/qs/QSHost;Z)V

    iget-object p0, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileCollector;->mQSTileList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;

    iget-object v2, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0, v1, v7}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    goto :goto_8

    :cond_f
    return-void
.end method
