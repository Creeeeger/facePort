.class public final synthetic Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;Lcom/android/systemui/qs/QSHost;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;ZLjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p3, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    iget-boolean v2, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-boolean v2, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTileQueryFinished:Z

    iget-object v3, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    if-eqz v3, :cond_9

    iput-object v0, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAllTiles:Ljava/util/List;

    iget-object v4, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-object v0, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mTileQueryHelper:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTileQueryFinished:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "mCurrentSpecs = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "mAllTiles size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAllTiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SecQSCustomizerTileAdapter"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAllTiles:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move v8, v5

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;

    iget-object v9, v9, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;

    iput-boolean v5, v7, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f130e53

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f130e49

    invoke-static {v10, v11, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    move v10, v5

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    new-instance v11, Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-direct {v11}, Lcom/android/systemui/qs/customize/CustomTileInfo;-><init>()V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;

    iget-object v13, v12, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object v13, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iget-boolean v13, v12, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    iput-boolean v13, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    iget-object v12, v12, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object v12, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "addTile state = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v11, Lcom/android/systemui/qs/customize/CustomTileInfo;->isNewCustomTile:Z

    invoke-static {v7}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v11, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v13, v13, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v13, v11, Lcom/android/systemui/qs/customize/CustomTileInfo;->isNewCustomTile:Z

    if-eqz v13, :cond_5

    move-object v13, v9

    goto :goto_5

    :cond_5
    const-string v13, ""

    :goto_5
    invoke-static {v12, v13, v8}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/systemui/qs/customize/CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    iput-object v6, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableTiles:Ljava/util/ArrayList;

    :cond_7
    :goto_6
    iget-object v0, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mOnTileChangedCallback:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda14;

    if-eqz v0, :cond_8

    iget-object v4, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableTiles:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    iget-object v0, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object v5, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTiles(Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v6, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;

    iput-object v6, v5, Lcom/android/systemui/qs/customize/CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    goto :goto_7

    :cond_8
    iget-object v0, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableTiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsLoadedAllTiles:Z

    :cond_9
    iput-boolean v2, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mFinished:Z

    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    iget-object v2, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/qs/QSHost;

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;->f$2:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->getTiles()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v6, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v7

    const/16 v8, 0x80

    invoke-virtual {v4, v5, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f130f4e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v12, ""

    const/4 v13, 0x0

    if-eqz v11, :cond_b

    const-string v14, "android.service.quicksettings.SEM_DEFAULT_TILE_USER_POLICY"

    invoke-virtual {v11, v14, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "OWNER"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v6}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_8

    :cond_a
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "android.service.quicksettings.SEM_DEFAULT_TILE_DEXMODE_ONLY"

    invoke-virtual {v9, v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_8

    :cond_b
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v10}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Lcom/android/systemui/qs/QSHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v13, "addPackageTiles : tileName = "

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "TileQueryHelper"

    invoke-static {v15, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v11}, Lcom/android/systemui/qs/QSHost;->isUnsupportedTile(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v7, "addPackageTiles : isUnsupportedTile : "

    invoke-static {v7, v11, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    if-eqz v14, :cond_10

    invoke-interface {v2, v14}, Lcom/android/systemui/qs/QSHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "WifiCalling"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    iget-object v13, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/systemui/util/DeviceState;->getVoWifiEnableState(Landroid/content/Context;)I

    move-result v13

    if-nez v13, :cond_d

    goto :goto_9

    :cond_d
    invoke-interface {v2, v11}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v7, "addPackageTiles : shouldBeHiddenByKnox : "

    invoke-virtual {v7, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_e
    if-nez v0, :cond_10

    invoke-interface {v2, v14}, Lcom/android/systemui/qs/QSHost;->isBarTile(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v7, "addPackageTiles : isBarTile : "

    invoke-virtual {v7, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_f
    :goto_9
    const-string v7, "addPackageTiles : isAvailableCustomTile = false : "

    invoke-virtual {v7, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_10
    invoke-static {}, Lcom/android/systemui/Operator;->isChinaQsTileBranding()Z

    move-result v13

    xor-int/2addr v13, v8

    if-nez v13, :cond_11

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_11

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.google.audio.hearing.visualization.accessibility.dolphin.service.DolphinTileService"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    :cond_11
    invoke-static {}, Lcom/android/systemui/Operator;->isChinaQsTileBranding()Z

    move-result v13

    xor-int/2addr v13, v8

    if-nez v13, :cond_13

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_13

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.google.audio.hearing.visualization.accessibility.scribe.service.ScribeTileService"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "addPackageTiles : remove componentName : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_13
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v13}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v13}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v10

    goto :goto_a

    :cond_15
    move-object v10, v14

    :goto_a
    if-eqz v10, :cond_16

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v9, v10, v13}, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto/16 :goto_8

    :cond_16
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v13, v10, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v13, :cond_17

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v10, :cond_17

    goto/16 :goto_8

    :cond_17
    invoke-virtual {v6}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v10

    :try_start_0
    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v15, v13, Landroid/content/pm/ServiceInfo;->icon:I

    if-eqz v15, :cond_18

    goto :goto_b

    :cond_18
    iget-object v15, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->icon:I

    :goto_b
    if-eqz v15, :cond_19

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v15}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v14

    :cond_19
    if-eqz v14, :cond_1a

    iget-object v13, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v13, v10}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_c

    :cond_1a
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v10, v4}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v10, v4}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :goto_c
    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v14, "android.permission.BIND_QUICK_SETTINGS_TILE"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    goto/16 :goto_8

    :cond_1b
    if-nez v10, :cond_1c

    goto/16 :goto_8

    :cond_1c
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v13, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mContext:Landroid/content/Context;

    const v14, 0x106000b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1d

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    :cond_1d
    const-string v7, "null"

    :goto_d
    new-instance v13, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v13}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    iput v8, v13, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput-object v7, v13, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v7, v13, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v11}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    :try_start_1
    iget-object v8, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const v14, 0xc0080

    invoke-virtual {v8, v7, v14}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_1e

    const-string v8, "android.service.quicksettings.SEM_DEFAULT_TILE_NAME"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v7, :cond_1e

    new-instance v7, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {v7, v10}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v7, v13, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_e
    const/4 v7, 0x0

    goto :goto_f

    :catch_1
    :cond_1e
    iget-object v7, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v8, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget-object v8, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mContext:Landroid/content/Context;

    const v12, 0x7f070e32

    invoke-static {v8, v12, v7}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result v7

    new-instance v8, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v8, v10, v7}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v8, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mCloneDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v7, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    iget-object v10, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v10}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    iput-object v7, v13, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_e

    :goto_f
    invoke-virtual {v1, v11, v9, v13, v7}, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto/16 :goto_8

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v8, v0}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecTileQueryHelper;ZLjava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
