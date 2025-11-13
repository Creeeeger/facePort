.class public final Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field public mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;


# direct methods
.method public static isValidTile(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v3, ""

    if-eqz p1, :cond_0

    const-string v4, "com.android.settings.PREFERENCE_TYPE"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    move p0, v0

    goto/16 :goto_3

    :cond_1
    sget-object p1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;->SKIP_ITEMS:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "key_find_my_mobile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "dashboard_tile_pref_com.android.healthconnect.controller.MainActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "security_status_find_device"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move p1, v1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "security_status_security_patch_level"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move p1, v0

    :goto_1
    packed-switch p1, :pswitch_data_0

    move p0, v1

    goto :goto_3

    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportFindMyMobileFeature(Landroid/content/Context;)Z

    move-result p0

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p0

    :goto_2
    xor-int/2addr p0, v1

    goto :goto_3

    :pswitch_2
    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportFindMyMobileFeature(Landroid/content/Context;)Z

    move-result p0

    goto :goto_2

    :pswitch_3
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    :goto_3
    if-eqz p0, :cond_9

    const-string p0, "SecInsetCategoryPreference"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "PreferenceCategory"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    move p0, v0

    goto :goto_5

    :cond_8
    :goto_4
    move p0, v1

    :goto_5
    if-nez p0, :cond_9

    move v0, v1

    :cond_9
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x3b3f5804 -> :sswitch_3
        -0x1bad31d2 -> :sswitch_2
        0x1b889ab8 -> :sswitch_1
        0x7fb0496f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final collectionTiles()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    invoke-virtual {v4, v3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getDynamicRawDataToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getDynamicRawDataToIndex(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->getRawDataToDynamicMenu(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    move-object p1, v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    const-string v2, "No feature factory configured"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getDashboardFeatureProvider()Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->secDynamicMenuFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    iput-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->collectionTiles()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;Landroid/content/Context;Ljava/util/List;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    move-object p0, v0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "NonIndexableKeys : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecDynamicMenuSearchIndexablesProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getRawDataToDynamicMenu(Landroid/content/Context;)Ljava/util/List;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    const-string v3, "No feature factory configured"

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getDashboardFeatureProvider()Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_29

    iget-object v0, v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->secDynamicMenuFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    iput-object v0, v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->collectionTiles()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    const-string v6, ""

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v5}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->isValidTile(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    const-string v9, "SecDynamicMenuSearchIndexablesProvider"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "collectingRawDataFromSingleTile() invalid key : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v7, "(empty)"

    :cond_0
    invoke-static {v0, v7, v9}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v4

    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_1c

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragmentRegistry;->CATEGORY_KEY_TO_PARENT_MAP:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v5, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragmentRegistry;->CATEGORY_KEY_TO_PARENT_MAP:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v2}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v0, v5, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v13, "Couldn\'t find info"

    const-string v14, "Tile"

    if-nez v0, :cond_4

    const/4 v8, 0x0

    goto :goto_5

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v15, v5, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.searchtitle"

    invoke-virtual {v15, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    iget-object v15, v5, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v15, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/Integer;

    if-eqz v15, :cond_5

    :try_start_0
    iget-object v15, v5, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v15, v5, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v15, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v14, v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_5
    iget-object v0, v5, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    move-object v8, v0

    :goto_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-nez v0, :cond_7

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    const/4 v4, 0x0

    goto :goto_8

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v16, v4

    iget-object v4, v5, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    move-object/from16 v17, v6

    const-string v6, "com.android.settings.keywords"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v5, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_8

    :try_start_1
    iget-object v4, v5, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v4, v5, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    invoke-static {v14, v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_8
    iget-object v0, v5, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v0, 0x0

    :goto_7
    move-object v4, v0

    :goto_8
    const/4 v6, -0x1

    :try_start_2
    invoke-virtual {v5, v2}, Lcom/android/settingslib/drawer/Tile;->getTitleRes(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_a

    move-object/from16 v18, v8

    :goto_9
    move-object/from16 v0, v17

    goto :goto_b

    :cond_a
    iget-object v13, v5, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/res/Configuration;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v14, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v6, Ljava/util/Locale;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v18, v8

    :try_start_3
    const-string v8, "en"

    invoke-direct {v6, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v18, v8

    :goto_a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "getMenuTitleEn() "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :goto_b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object/from16 v4, v17

    :cond_b
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_c

    const-string v4, ";"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v17

    :cond_d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;->SCREEN_TITLE_MAP:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_c

    :cond_e
    const/4 v6, 0x0

    :goto_c
    iget-object v0, v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    iget-object v8, v5, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->getUriFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v8, "null"

    if-eqz v0, :cond_1a

    iget-object v13, v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    invoke-virtual {v13, v0, v7}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->getBundleFromKey(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v13

    if-nez v13, :cond_10

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "collectingRawDataFromSingleTile() dynamicMenuData is null. uri : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " / key "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_f

    goto :goto_d

    :cond_f
    move-object v8, v7

    :goto_d
    invoke-static {v13, v8, v9}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v18

    const/4 v14, 0x0

    goto/16 :goto_15

    :cond_10
    iget-boolean v11, v13, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    if-nez v11, :cond_12

    if-nez v7, :cond_11

    move-object v7, v8

    :cond_11
    const-string v0, "collectingRawDataFromSingleTile() is not visible. key "

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_12
    iget-object v8, v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    iget-object v11, v8, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v12, "SecDynamicMenuFeatureProviderImpl"

    if-eqz v11, :cond_13

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_13
    const/4 v14, 0x0

    goto :goto_11

    :cond_14
    iget-object v8, v8, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    :try_start_4
    invoke-virtual {v8, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v8
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v8, :cond_16

    if-eqz v8, :cond_15

    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->close()V

    :cond_15
    const/4 v0, 0x0

    const/4 v14, 0x0

    goto :goto_13

    :cond_16
    :try_start_5
    const-string v0, "get_search_data"
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v14, 0x0

    :try_start_6
    invoke-virtual {v8, v0, v7, v14}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_17

    const-class v11, Lcom/samsung/android/settings/external/DynamicSearchData;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v11, "search_data"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/external/DynamicSearchData;

    goto :goto_e

    :catchall_0
    move-exception v0

    goto :goto_10

    :catch_4
    move-exception v0

    goto :goto_f

    :cond_17
    const-string v0, "getSearchData bundle is null"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v14

    :goto_e
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_13

    :catch_5
    move-exception v0

    const/4 v14, 0x0

    goto :goto_f

    :catchall_1
    move-exception v0

    const/4 v14, 0x0

    move-object v8, v14

    goto :goto_10

    :catch_6
    move-exception v0

    const/4 v14, 0x0

    move-object v8, v14

    :goto_f
    :try_start_7
    const-string v11, "can not call the provider"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v8, :cond_19

    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_12

    :goto_10
    if-eqz v8, :cond_18

    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->close()V

    :cond_18
    throw v0

    :goto_11
    const-string v0, "getSearchData mContext or uri or key is null"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_12
    move-object v0, v14

    :goto_13
    iget-object v11, v13, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    iget-object v12, v13, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v4, v0, Lcom/samsung/android/settings/external/DynamicSearchData;->mKeywords:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/settings/external/DynamicSearchData;->mSearchTitle:Ljava/lang/String;

    goto :goto_15

    :cond_1a
    const/4 v14, 0x0

    if-nez v7, :cond_1b

    goto :goto_14

    :cond_1b
    move-object v8, v7

    :goto_14
    const-string v0, "collectingRawDataFromSingleTile() uri is null. key "

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move-object/from16 v8, v18

    :goto_15
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    move-object v11, v8

    :cond_1d
    const-class v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v5, v2}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceUtils;->getBucketTitleResId(Ljava/lang/String;)I

    move-result v0

    const-string v13, " -> "

    const/4 v15, -0x1

    if-eq v0, v15, :cond_1e

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "title : "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_1e
    invoke-virtual {v5, v2}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v15, "key_voice_recoder"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v14, -0x1

    const/4 v15, -0x1

    goto :goto_16

    :cond_1f
    const v15, 0x7f142647

    const/4 v14, -0x1

    :goto_16
    if-eq v15, v14, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "summary : "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_20
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, v2}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;->SCREEN_TITLE_MAP:Ljava/util/Map;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_17

    :cond_21
    const/4 v6, 0x0

    :goto_17
    iput-object v6, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    iput-object v10, v0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v6, 0x0

    goto :goto_18

    :cond_22
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_18
    iput-object v6, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "collectingRawDataFromSingleTile ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    if-eqz v7, :cond_23

    goto :goto_19

    :cond_23
    const-string v7, "(unknown)"

    :goto_19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] added. key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", title : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v10, ", searchTitle : "

    const-string v11, ", keyword : "

    invoke-static {v6, v7, v10, v8, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", titleResId : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Lcom/android/settingslib/drawer/Tile;->getTitleRes(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    goto :goto_1c

    :cond_24
    const-string v0, "collectingRawDataFromSingleTile() cannot be added as dynamic menu. : "

    invoke-static {v7, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string/jumbo v4, "title is empty. "

    goto :goto_1a

    :cond_25
    move-object/from16 v4, v17

    :goto_1a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string/jumbo v6, "screenTitle is empty. "

    goto :goto_1b

    :cond_26
    move-object/from16 v6, v17

    :goto_1b
    invoke-static {v0, v6, v9}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_1c
    if-eqz v8, :cond_27

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    move-object/from16 v4, v16

    goto/16 :goto_0

    :cond_28
    return-object v3

    :cond_29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->getRawDataToDynamicMenu(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method
