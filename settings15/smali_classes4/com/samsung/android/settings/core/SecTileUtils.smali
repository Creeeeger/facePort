.class public abstract Lcom/samsung/android/settings/core/SecTileUtils;
.super Lcom/android/settingslib/drawer/TileUtils;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mCurrentUserId:I

.field public static final mSdkVersionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/core/SecTileUtils;->mSdkVersionString:Ljava/lang/String;

    return-void
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;
    .locals 14

    const-string v0, "SecTileUtils#getCategories"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    sput v3, Lcom/samsung/android/settings/core/SecTileUtils;->mCurrentUserId:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v11, "SecTileUtils"

    if-eqz v4, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/os/UserHandle;

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    sget v5, Lcom/samsung/android/settings/core/SecTileUtils;->mCurrentUserId:I

    if-ne v4, v5, :cond_1

    const-string v4, "SecTileUtils#loadTilesForAction_SETETINGS_ACTION"

    invoke-static {v4}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v4, "loadTilesForAction com.android.settings.action.SETTINGS"

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const-string v6, "com.android.settings.action.SETTINGS"

    move-object v4, p0

    move-object v5, v12

    move-object v7, p1

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v13, "SecTileUtils#loadTilesForAction_OPERATOR_SETTINGS"

    invoke-static {v13}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v4, "loadTilesForAction com.android.settings.OPERATOR_APPLICATION_SETTING"

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const-string v6, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    invoke-static {v13}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v4, "loadTilesForAction com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "SecTileUtils#loadTilesForAction_EXTRA_SETTINGS_ACTION"

    invoke-static {v4}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v4, "loadTilesForAction com.android.settings.action.EXTRA_SETTINGS"

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const-string v6, "com.android.settings.action.EXTRA_SETTINGS"

    move-object v4, p0

    move-object v5, v12

    move-object v7, p1

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v4, "SecTileUtils#loadTilesForAction_IA_SETTINGS_ACTION"

    invoke-static {v4}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v4, "loadTilesForAction com.android.settings.action.IA_SETTINGS"

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "com.android.settings.action.IA_SETTINGS"

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    :cond_2
    const-string v4, "SecTileUtils#loadTilesForAction_INTELLIGENT_FEATURES_SETTINGS"

    invoke-static {v4}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v4, "loadTilesForAction com.samsung.android.settings.action.INTELLIGENT_FEATURES_SETTINGS"

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const-string v6, "com.samsung.android.settings.action.INTELLIGENT_FEATURES_SETTINGS"

    move-object v4, p0

    move-object v5, v12

    move-object v7, p1

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v4, "SecTileUtils#loadTilesForAction_INTELLIGENCE_SERVICE_SETTINGS"

    invoke-static {v4}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v4, "loadTilesForAction com.samsung.android.settings.action.INTELLIGENCE_SERVICE_SETTINGS"

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "com.samsung.android.settings.action.INTELLIGENCE_SERVICE_SETTINGS"

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "minimal_battery_use"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v2

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VZW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "BETA"

    :cond_6
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v4, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/DashboardCategory;

    if-nez v6, :cond_7

    new-instance v6, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v6, v5}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "new DashBoardCategory key : "

    invoke-static {v7, v5, v11}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v5, " , tileID : "

    if-eqz v2, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[ProKioskMode] category.skipTile "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-static {v6, v4, v11}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v7, v4, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v7, :cond_e

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "tileID : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , tile.support "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    invoke-static {v7, v8, v11}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string v8, ","

    invoke-static {v7, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/settings/display/AlwaysOnDisplaySlice$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string v8, "GLOBAL"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "Common"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-interface {v7, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_4

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "no condition about tile.support, skip addTile tileID : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-static {v5, v4, v11}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    :goto_4
    const-string v8, "SamsungDeX"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-nez p0, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[SamsungDeX] skip addTile , tileID : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-static {v5, v4, v11}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    if-eqz v1, :cond_c

    const-string v8, "SkipMinimalBatteryUse"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MinimalBatteryMode] skip addTile , tileID : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-static {v5, v4, v11}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    if-eqz p0, :cond_d

    const-string v8, "SkipDexMode"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[DexMode] skip addTile , tileID : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-static {v5, v4, v11}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[GLOBAL, Common, SalesCode] category.addTile "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v4}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "category.addTile "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v4}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    :cond_f
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v0, v0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    sget-object v1, Lcom/android/settingslib/drawer/Tile;->TILE_COMPARATOR:Lcom/android/settingslib/drawer/Tile$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5

    :cond_10
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-object p0
.end method

.method public static isAllowListed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "SecTileUtils"

    const-string v1, "Package name: "

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v3, 0x8000000

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sec.android.app.shealth"

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allow listed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    if-nez p1, :cond_2

    sget-boolean p1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/core/SecTileUtils;->isSignatureAllowListed(Landroid/content/pm/PackageInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :goto_1
    const-string p1, "Could not find package name."

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public static isSignatureAllowListed(Landroid/content/pm/PackageInfo;)Z
    .locals 9

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    array-length v0, v0

    const-string v1, "SecTileUtils"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const-string p0, "Package has more than one signature."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    const-string v4, "SHA-256"

    :try_start_0
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v2

    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_2

    aget-byte v7, v4, v6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%02X"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    sub-int/2addr v7, v3

    if-eq v6, v7, :cond_1

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "B9:A4:2D:D5:FC:4E:05:48:89:AE:41:27:A6:27:4C:EC:64:E7:5C:41:73:3D:42:F5:99:1E:70:19:F9:EA:5C:AF"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Failed to obtain SHA-256 digest impl."

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    :goto_1
    if-nez v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cert not in list.  Cert:\n"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3
.end method

.method public static loadTile(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/util/List;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ComponentInfo;)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    sget v1, Lcom/samsung/android/settings/core/SecTileUtils;->mCurrentUserId:I

    if-eq v0, v1, :cond_0

    iget-object v0, p6, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/settingslib/drawer/Tile;->isPrimaryProfileOnly(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SecTileUtils"

    const-string v1, ""

    const-string v2, "Found "

    const-string v3, " for intent "

    const-string v4, "com.android.settings.category"

    if-eqz p5, :cond_5

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "com.samsung.android.settings.category"

    invoke-virtual {p5, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const-string v7, " metadata "

    const-string v8, "com.android.settings"

    if-eqz v6, :cond_3

    iget-object v2, p6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Sec Found "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p5, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_3
    iget-object v5, p6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_5
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " missing metadata "

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_6

    move-object v4, v1

    :cond_6
    invoke-static {v5, v4, v0}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_1
    if-nez p4, :cond_7

    return-void

    :cond_7
    instance-of v2, p6, Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_8

    new-instance v3, Landroid/util/Pair;

    move-object v4, p6

    check-cast v4, Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v5, "com.android.settings.keyhint"

    invoke-virtual {p5, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    new-instance v3, Landroid/util/Pair;

    iget-object v4, p6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v5, p6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    const-string v5, " , categoryKey "

    if-nez v4, :cond_a

    if-eqz v2, :cond_9

    new-instance v2, Lcom/android/settingslib/drawer/ProviderTile;

    move-object v4, p6

    check-cast v4, Landroid/content/pm/ProviderInfo;

    invoke-direct {v2, v4, p4, p5}, Lcom/android/settingslib/drawer/ProviderTile;-><init>(Landroid/content/pm/ProviderInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_3
    move-object v4, v2

    goto :goto_4

    :cond_9
    new-instance v2, Lcom/android/settingslib/drawer/ActivityTile;

    move-object v4, p6

    check-cast v4, Landroid/content/pm/ActivityInfo;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-direct {v2, v4, p4, v6}, Lcom/android/settingslib/drawer/Tile;-><init>(Landroid/content/pm/ComponentInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :goto_4
    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "addedCache put key : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p2, v5, p4, v0}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setMetaData key : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p5, v4, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    :goto_5
    const-string p2, "com.samsung.android.settings.tileid"

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    const-string v2, "META_DATA_SAMSUNG_TILE_ID/META_DATA_TILE_ID tile.tileId : "

    if-eqz p4, :cond_b

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-static {v2, p2, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string p2, "com.android.settings.tileid"

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-static {v2, p2, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_6
    const-string p2, "com.android.settings.support"

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string p4, "META_DATA_PREFERENCE_SUPPORT tile.support : "

    invoke-static {p4, p2, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "com.android.settings.order_"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/core/SecTileUtils;->mSdkVersionString:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    :cond_e
    iget-object p2, p6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string p4, "com.google.android.gms"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p4, "com.android.settings.category.ia.privacy"

    const-string p5, "com.android.settings.category.ia.homepage"

    if-eqz p2, :cond_17

    iget-object p2, v4, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p0, "GLOBAL"

    iput-object p0, v4, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string p0, "google_settings"

    iput-object p0, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    const p0, 0x7f080946

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    const p0, 0x7f1410c0

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mTitleResIdOverride:I

    const p0, 0x7f1410bf

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mSummaryResIdOverride:I

    const p0, -0x1d4c0

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    const/16 p0, 0x21fc

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mSaLoggingIdOverride:Ljava/lang/String;

    goto/16 :goto_7

    :cond_f
    iget-object p2, v4, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    const-string p5, "com.android.settings.category.ia.security"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-virtual {v4, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p4, "security_status_package_verifier"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    const/16 p0, 0x47e

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    goto/16 :goto_7

    :cond_10
    const-string/jumbo p2, "security_status_find_device"

    invoke-virtual {v4, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    const/16 p0, 0x49c

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    goto/16 :goto_7

    :cond_11
    const-string/jumbo p2, "security_status_security_patch_level"

    invoke-virtual {v4, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/16 p0, 0x488

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    goto/16 :goto_7

    :cond_12
    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    iput-object v1, v4, Lcom/android/settingslib/drawer/Tile;->mSummaryOverride:Ljava/lang/CharSequence;

    goto/16 :goto_7

    :cond_13
    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    const-string p2, "com.android.settings.category.ia.emergency"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    iput-object v1, v4, Lcom/android/settingslib/drawer/Tile;->mSummaryOverride:Ljava/lang/CharSequence;

    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    const-string p2, "com.google.android.gms.thunderbird.settings.ThunderbirdSettingInjectorPlatformService"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, -0x1

    if-eqz p0, :cond_14

    const/16 p0, 0x320

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    iput p2, v4, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    goto/16 :goto_7

    :cond_14
    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    const-string p4, "com.google.android.gms.location.settings.DrivingBehaviorPlatformSettingsActivity"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/16 p0, 0x258

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    iput p2, v4, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    goto/16 :goto_7

    :cond_15
    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    const-string p4, "com.google.android.gms.location.settings.EAlertPlatformSettingsActivity"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/16 p0, 0x3e8

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    iput p2, v4, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    goto/16 :goto_7

    :cond_16
    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    const-string p4, "com.google.android.personalsafety.settings.BleTagPlatformSettingsActivity"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/16 p0, 0x44c

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    iput p2, v4, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    goto/16 :goto_7

    :cond_17
    const-string p2, "com.google.android.as"

    iget-object v0, p6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    iput-object v1, v4, Lcom/android/settingslib/drawer/Tile;->mSummaryOverride:Ljava/lang/CharSequence;

    goto/16 :goto_7

    :cond_18
    const-string p2, "com.android.vending"

    iget-object p4, p6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-virtual {v4, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "security_status_partial_system_updates"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/16 p0, 0x492

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    goto/16 :goto_7

    :cond_19
    const-string p0, "com.samsung.android.themestore"

    iget-object p2, p6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const p0, 0x7f080958

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    const/16 p0, 0x2968

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mSaLoggingIdOverride:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1a
    const-string p0, "com.nttdocomo.android.docomoset"

    iget-object p2, p6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const p2, -0x1e848

    const p4, 0x7f080942

    if-eqz p0, :cond_1b

    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-virtual {p5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string p0, "DCM"

    iput-object p0, v4, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string p0, "docomoservice_settings"

    iput-object p0, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    iput p4, v4, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    iput p2, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    goto :goto_7

    :cond_1b
    const-string p0, "com.kddi.android.au_setting_menu"

    iget-object v0, p6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-virtual {p5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string p0, "au_settings_menu"

    iput-object p0, v4, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    iput p4, v4, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    iput p2, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    goto :goto_7

    :cond_1c
    const-string p0, "com.lguplus.lgusetting"

    iget-object p2, p6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const p0, 0x7f08094a

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    goto :goto_7

    :cond_1d
    const-string p0, "com.skt.t_smart_charge"

    iget-object p2, p6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const p0, -0x1c138

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    const p0, 0x7f080957

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    goto :goto_7

    :cond_1e
    const-string p0, "com.samsung.android.privateshare"

    iget-object p2, p6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/16 p0, 0x708

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    :cond_1f
    :goto_7
    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    const-string p2, "com.samsung.android.settings.category.ia.usefulfeatures"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    const-string p2, "com.samsung.android.bixby.settings.dynamicmenu.EntryActivity"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const p0, 0x1adb0

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    goto :goto_8

    :cond_20
    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    const-string p2, "com.samsung.android.smartsuggestions.settings.SmartSuggestionsSettingActivity"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const p0, 0x1d4c0

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    :cond_21
    :goto_8
    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    const-string p2, "com.samsung.android.settings.category.ia.intelligenceservice"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz p0, :cond_22

    const-string p2, "com.samsung.android.settings.is.order"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v4, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    :cond_22
    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    iget-object p0, v4, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method

.method public static loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V
    .locals 18

    move-object/from16 v7, p0

    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const-string v0, "com.android.settings"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/16 v2, 0x80

    invoke-virtual {v0, v8, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/android/settings/Utils;->hasPlatformKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/samsung/android/settings/core/SecTileUtils;->isAllowListed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v8

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTile(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/util/List;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ComponentInfo;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/android/settings/Utils;->hasPlatformKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/samsung/android/settings/core/SecTileUtils;->isAllowListed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "getSwitchData"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    :cond_5
    :goto_2
    move-object v3, v2

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_8
    move-object v3, v2

    :goto_3
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_4
    if-nez v3, :cond_9

    :catch_0
    :goto_5
    move-object v0, v2

    goto :goto_9

    :cond_9
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    if-nez v0, :cond_b

    :goto_6
    move-object v12, v2

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IContentProvider;

    move-object v12, v1

    :goto_7
    if-nez v12, :cond_e

    goto :goto_5

    :cond_e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.android.settings.keyhint"

    invoke-static {v1, v3}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_8

    :cond_f
    move-object/from16 v17, v2

    :goto_8
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v12 .. v17}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    if-eqz v0, :cond_10

    const-string/jumbo v1, "switch_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_10
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_1

    :cond_11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v8

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTile(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/util/List;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ComponentInfo;)V

    goto :goto_a

    :cond_12
    return-void
.end method
