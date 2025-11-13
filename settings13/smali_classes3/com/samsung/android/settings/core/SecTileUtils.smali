.class public Lcom/samsung/android/settings/core/SecTileUtils;
.super Lcom/android/settingslib/drawer/TileUtils;
.source "SecTileUtils.java"


# static fields
.field static final SETTING_PKG:Ljava/lang/String; = "com.android.settings"

.field private static final mSdkVersionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/core/SecTileUtils;->mSdkVersionString:Ljava/lang/String;

    return-void
.end method

.method private static buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 569
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 570
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 571
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 572
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 573
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 578
    invoke-static {p1}, Lcom/samsung/android/settings/core/SecTileUtils;->getMethodAndKey(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 582
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 583
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 584
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 587
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/core/SecTileUtils;->getProviderFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/content/IContentProvider;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    .line 591
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    if-nez p3, :cond_3

    .line 593
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    move-object p3, p2

    :cond_3
    const-string p2, "com.android.settings.keyhint"

    .line 595
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v8, p3

    .line 598
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 599
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 598
    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    const-string v0, "SecTileUtils#getCategories"

    .line 159
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 169
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "user"

    move-object/from16 v11, p0

    .line 170
    invoke-virtual {v11, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 172
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v13, "SecTileUtils"

    if-eqz v3, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/os/UserHandle;

    .line 174
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-ne v3, v4, :cond_2

    const-string v3, "SecTileUtils#loadTilesForAction_SETETINGS_ACTION"

    .line 177
    invoke-static {v3}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v3, "loadTilesForAction com.android.settings.action.SETTINGS"

    .line 179
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v5, "com.android.settings.action.SETTINGS"

    move-object/from16 v3, p0

    move-object v4, v14

    move-object/from16 v6, p1

    move-object v8, v10

    .line 180
    invoke-static/range {v3 .. v9}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    .line 181
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v15, "SecTileUtils#loadTilesForAction_OPERATOR_SETTINGS"

    .line 184
    invoke-static {v15}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v3, "loadTilesForAction com.android.settings.OPERATOR_APPLICATION_SETTING"

    .line 186
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const-string v5, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    const-string v7, "com.android.settings.category.wireless"

    move-object/from16 v3, p0

    .line 187
    invoke-static/range {v3 .. v9}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    .line 189
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 192
    invoke-static {v15}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v3, "loadTilesForAction com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    .line 194
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    const-string v7, "com.android.settings.category.device"

    move-object/from16 v3, p0

    .line 195
    invoke-static/range {v3 .. v9}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    .line 197
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    :cond_2
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SecTileUtils#loadTilesForAction_EXTRA_SETTINGS_ACTION"

    .line 203
    invoke-static {v3}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v3, "loadTilesForAction com.android.settings.action.EXTRA_SETTINGS"

    .line 205
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v5, "com.android.settings.action.EXTRA_SETTINGS"

    move-object/from16 v3, p0

    move-object v4, v14

    move-object/from16 v6, p1

    move-object v8, v10

    .line 206
    invoke-static/range {v3 .. v9}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    .line 207
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v3, "SecTileUtils#loadTilesForAction_IA_SETTINGS_ACTION"

    .line 210
    invoke-static {v3}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v3, "loadTilesForAction com.android.settings.action.IA_SETTINGS"

    .line 212
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.android.settings.action.IA_SETTINGS"

    move-object/from16 v3, p0

    .line 213
    invoke-static/range {v3 .. v9}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    .line 214
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    goto/16 :goto_1

    .line 222
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "minimal_battery_use"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 226
    :goto_2
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 228
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v2

    .line 233
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VZW"

    .line 234
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v0, "BETA"

    .line 238
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    .line 240
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 241
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/Tile;

    .line 242
    invoke-virtual {v6}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object v7

    .line 243
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/DashboardCategory;

    if-nez v8, :cond_7

    .line 245
    new-instance v8, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v8, v7}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>(Ljava/lang/String;)V

    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new DashBoardCategory key : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_7
    iget-object v7, v6, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string v9, " , tileID : "

    if-eqz v7, :cond_f

    .line 255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tileID : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " , tile.support "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v7, v6, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string v10, ","

    invoke-static {v7, v10}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v10, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda2;

    invoke-direct {v10}, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 258
    invoke-interface {v7, v10}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 259
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    if-eqz v2, :cond_8

    .line 264
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ProKioskMode] category.skipTile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    const-string v10, "GLOBAL"

    .line 270
    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "Common"

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_4

    .line 308
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no condition about tile.support, skip addTile tileID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    :goto_4
    const-string v10, "SamsungDeX"

    .line 271
    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    if-nez v3, :cond_b

    .line 273
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SamsungDeX] skip addTile , tileID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 277
    :cond_b
    iget-object v10, v6, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    const-string v12, "development_settings"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x100

    .line 280
    invoke-static {v10}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v10

    const-string v12, "[MDM] category.skipTile "

    if-eqz v10, :cond_c

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 285
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getRestrictionPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 286
    invoke-virtual {v10}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDeveloperModeAllowed()Z

    move-result v10

    if-nez v10, :cond_d

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    if-eqz v1, :cond_e

    const-string v10, "SkipMinimalBatteryUse"

    .line 296
    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 298
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[MinimalBatteryMode] skip addTile , tileID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 304
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GLOBAL, Common, SalesCode] category.addTile "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v8, v6}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    .line 312
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "category.addTile "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v8, v6}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    .line 317
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 318
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 319
    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->sortTiles()V

    goto :goto_5

    .line 327
    :cond_11
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-object v0
.end method

.method private static getMethodAndKey(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 627
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 628
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 631
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 632
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 633
    :cond_2
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static getProviderFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/content/IContentProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;)",
            "Landroid/content/IContentProvider;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 610
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 614
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 615
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IContentProvider;

    return-object p0
.end method

.method private static getSwitchDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 551
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "getSwitchData"

    .line 552
    invoke-static {p1, v1}, Lcom/samsung/android/settings/core/SecTileUtils;->buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    .line 553
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/core/SecTileUtils;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "switch_data"

    .line 555
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private static loadActivityTiles(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 350
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/16 v2, 0x80

    move-object/from16 v11, p5

    .line 349
    invoke-virtual {v0, v11, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 352
    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v12, p0

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->hasPlatformKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_0
    move-object v12, p0

    .line 359
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.samsung.android.coldwalletservice"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "SecTileUtils"

    const-string v2, "this version of settings not use dynamicProvider for Blockchain Keystore."

    .line 360
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_2
    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 366
    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 367
    invoke-static/range {v3 .. v10}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTile(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ComponentInfo;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static loadProviderTiles(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 376
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v9, p5

    .line 375
    invoke-virtual {v0, v9, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 377
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 378
    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPlatformKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 382
    iget-object v0, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/core/SecTileUtils;->getSwitchDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 387
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v11

    .line 388
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/settings/core/SecTileUtils;->loadTile(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ComponentInfo;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static loadTile(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ComponentInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Landroid/content/pm/ComponentInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "Found "

    const-string v1, "com.android.settings.category"

    const-string v2, " for intent "

    const-string v3, ""

    const-string v4, "SecTileUtils"

    if-eqz p6, :cond_1e

    .line 400
    invoke-virtual {p6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p3, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string p3, "com.samsung.android.settings.category"

    .line 406
    invoke-virtual {p6, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const-string v6, " metadata "

    const-string v7, "com.android.settings"

    if-eqz v5, :cond_2

    .line 407
    iget-object v0, p7, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sec Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p7, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v4, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    invoke-virtual {p6, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 413
    :cond_2
    iget-object p3, p7, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 414
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p7, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_3
    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 421
    :goto_0
    instance-of p5, p7, Landroid/content/pm/ProviderInfo;

    if-eqz p5, :cond_4

    .line 423
    new-instance v0, Landroid/util/Pair;

    move-object v1, p7

    check-cast v1, Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v2, "com.android.settings.keyhint"

    .line 424
    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 425
    :cond_4
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v2, p7, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    :goto_1
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    const-string v2, " , categoryKey "

    if-nez v1, :cond_6

    if-eqz p5, :cond_5

    .line 429
    new-instance p5, Lcom/android/settingslib/drawer/ProviderTile;

    move-object v1, p7

    check-cast v1, Landroid/content/pm/ProviderInfo;

    invoke-direct {p5, v1, p3, p6}, Lcom/android/settingslib/drawer/ProviderTile;-><init>(Landroid/content/pm/ProviderInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 430
    :cond_5
    new-instance p5, Lcom/android/settingslib/drawer/ActivityTile;

    move-object v1, p7

    check-cast v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {p5, v1, p3}, Lcom/android/settingslib/drawer/ActivityTile;-><init>(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V

    :goto_2
    move-object v1, p5

    .line 431
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "addedCache put key : "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 435
    :cond_6
    invoke-virtual {v1, p6}, Lcom/android/settingslib/drawer/Tile;->setMetaData(Landroid/os/Bundle;)V

    .line 437
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "setMetaData key : "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string p2, "com.samsung.android.settings.tileid"

    .line 441
    invoke-virtual {p6, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 442
    invoke-virtual {p6, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    .line 444
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "META_DATA_SAMSUNG_TILE_ID tile.tileId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-string p2, "com.android.settings.tileid"

    .line 445
    invoke-virtual {p6, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 446
    invoke-virtual {p6, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    .line 448
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "META_DATA_TILE_ID tile.tileId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    const-string p2, "com.android.settings.support"

    .line 451
    invoke-virtual {p6, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 452
    invoke-virtual {p6, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    .line 454
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "META_DATA_PREFERENCE_SUPPORT tile.support : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "com.android.settings.order_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Lcom/samsung/android/settings/core/SecTileUtils;->mSdkVersionString:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 459
    invoke-virtual {p6, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_a

    .line 461
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 463
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " : "

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    .line 467
    :cond_a
    iget-object p2, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string p3, "com.google.android.gms"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "com.android.settings.category.ia.privacy"

    const-string p5, "com.android.settings.category.ia.homepage"

    if-eqz p2, :cond_11

    .line 468
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "GLOBAL"

    .line 469
    iput-object p2, v1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string p2, "google_settings"

    .line 470
    iput-object p2, v1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    .line 471
    sget p2, Lcom/android/settings/R$drawable;->sec_ic_settings_google:I

    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideIconResId(I)V

    .line 472
    sget p2, Lcom/android/settings/R$string;->google_settings_title:I

    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideTitleResId(I)V

    .line 473
    sget p2, Lcom/android/settings/R$string;->google_settings_summary:I

    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideSummaryResId(I)V

    const p2, -0x1d4c0

    .line 474
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    const/16 p2, 0x21fc

    .line 475
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideSaLoggingId(I)V

    goto/16 :goto_5

    .line 476
    :cond_b
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object p2

    const-string p5, "com.android.settings.category.ia.security"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 477
    invoke-virtual {v1, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "security_status_package_verifier"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/16 p2, 0x47e

    .line 478
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    goto/16 :goto_5

    .line 479
    :cond_c
    invoke-virtual {v1, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "security_status_find_device"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    const/16 p2, 0x49c

    .line 480
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    goto/16 :goto_5

    .line 481
    :cond_d
    invoke-virtual {v1, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "security_status_security_patch_level"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    const/16 p2, 0x488

    .line 482
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    goto/16 :goto_5

    .line 484
    :cond_e
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 485
    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->overrideSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 486
    :cond_f
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.settings.category.ia.emergency"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 487
    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->overrideSummary(Ljava/lang/CharSequence;)V

    .line 488
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.google.android.gms.thunderbird.settings.ThunderbirdSettingInjectorPlatformService"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    const/16 p2, 0x320

    .line 489
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    .line 491
    :cond_10
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.google.android.gms.location.settings.DrivingBehaviorPlatformSettingsActivity"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    const/16 p2, 0x258

    .line 492
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    goto/16 :goto_5

    .line 495
    :cond_11
    iget-object p2, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string p6, "com.google.android.as"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 496
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 497
    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->overrideSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 499
    :cond_12
    iget-object p2, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string p3, "com.android.vending"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 500
    invoke-virtual {v1, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "security_status_partial_system_updates"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    const/16 p2, 0x492

    .line 501
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    goto/16 :goto_5

    .line 503
    :cond_13
    iget-object p2, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string p3, "com.samsung.android.themestore"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 504
    sget p2, Lcom/android/settings/R$drawable;->sec_ic_settings_themes:I

    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideIconResId(I)V

    const/16 p2, 0x2968

    .line 505
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideSaLoggingId(I)V

    goto/16 :goto_5

    .line 506
    :cond_14
    iget-object p2, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string p3, "com.nttdocomo.android.docomoset"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const p3, -0x1e848

    if-eqz p2, :cond_15

    .line 507
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    const-string p2, "DCM"

    .line 508
    iput-object p2, v1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string p2, "docomoservice_settings"

    .line 509
    iput-object p2, v1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    .line 510
    sget p2, Lcom/android/settings/R$drawable;->sec_ic_settings_docomo_au:I

    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideIconResId(I)V

    .line 511
    invoke-virtual {v1, p3}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    goto :goto_5

    .line 513
    :cond_15
    iget-object p2, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string p6, "com.kddi.android.au_setting_menu"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 514
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    const-string p2, "au_settings_menu"

    .line 515
    iput-object p2, v1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    .line 516
    sget p2, Lcom/android/settings/R$drawable;->sec_ic_settings_docomo_au:I

    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideIconResId(I)V

    .line 517
    invoke-virtual {v1, p3}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    goto :goto_5

    .line 519
    :cond_16
    iget-object p2, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string p3, "com.lguplus.lgusetting"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 520
    sget p2, Lcom/android/settings/R$drawable;->sec_ic_settings_lgu:I

    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideIconResId(I)V

    goto :goto_5

    .line 521
    :cond_17
    iget-object p2, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string p3, "com.skt.t_smart_charge"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    const p2, -0x1c138

    .line 522
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    .line 523
    sget p2, Lcom/android/settings/R$drawable;->sec_ic_settings_t_service:I

    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideIconResId(I)V

    goto :goto_5

    .line 524
    :cond_18
    iget-object p2, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string p3, "com.samsung.android.privateshare"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    const/16 p2, 0x708

    .line 525
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    goto :goto_5

    .line 526
    :cond_19
    iget-object p2, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string p3, "com.samsung.android.samsungpass"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    const/16 p2, 0x578

    .line 527
    invoke-virtual {v1, p2}, Lcom/android/settingslib/drawer/Tile;->overrideOrder(I)V

    .line 530
    :cond_1a
    :goto_5
    iget-object p2, v1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    const-string p3, "maintenance_settings"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "badge_for_dm_battery"

    const/4 p5, 0x0

    const/4 p6, -0x2

    invoke-static {p2, p3, p5, p6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    iput p2, v1, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    .line 533
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p7, "badge_for_dm_security"

    invoke-static {p3, p7, p5, p6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, v1, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p3, "badge_for_dm_scoreboard"

    invoke-static {p0, p3, p5, p6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    add-int/2addr p2, p0

    iput p2, v1, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    .line 539
    :cond_1b
    iget-object p0, v1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 540
    iget-object p0, v1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_1c
    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    .line 543
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-void

    .line 401
    :cond_1e
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p7, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " missing metadata "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p6, :cond_1f

    move-object v1, v3

    .line 403
    :cond_1f
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 401
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z)V"
        }
    .end annotation

    .line 337
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    const-string p2, "com.android.settings"

    .line 339
    invoke-virtual {v6, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, v6

    .line 341
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/core/SecTileUtils;->loadActivityTiles(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;)V

    .line 342
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/core/SecTileUtils;->loadProviderTiles(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;)V

    return-void
.end method
