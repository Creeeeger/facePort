.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    const-string p1, "QSTileCustomizerController"

    const-string p2, "RESET"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "reset =  "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SecQSCustomizerTileAdapter"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getSpec()Ljava/util/List;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsTopEdit:Z

    iget-object v7, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v6, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mQQSHost:Lcom/android/systemui/qs/SecQQSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQQSTileHost;->getQQSDefaultTileList()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lcom/android/systemui/qs/QSTileHost;->getDefaultTileList()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "cscTileList: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v6, 0x0

    move v8, v6

    :goto_1
    if-ge v8, v1, :cond_6

    aget-object v9, v0, v8

    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    const-string v10, "custom("

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_2
    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v12, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v10, 0x1

    iput-boolean v10, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTiles(Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iput-boolean v6, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    goto :goto_4

    :cond_8
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTiles(Ljava/util/ArrayList;)V

    iget-object p1, v7, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, v7, Lcom/android/systemui/qs/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p2

    const-string/jumbo v0, "sysui_removed_qs_tiles"

    const-string v1, ""

    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_5
    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->access$000(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->save$1()V

    :cond_9
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsTopEdit:Z

    if-eqz p0, :cond_a

    const-string p0, "QPPE1025"

    goto :goto_6

    :cond_a
    const-string p0, "QPPE1021"

    :goto_6
    invoke-static {p1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
