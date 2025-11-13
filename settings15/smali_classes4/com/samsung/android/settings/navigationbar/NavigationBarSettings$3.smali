.class public final Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportTouch2Search()Z

    move-result v0

    const-string/jumbo v1, "touch_and_hold_to_search"

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportSearcle()Z

    move-result v0

    const-string/jumbo v2, "touch_and_hold_to_search_chn"

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isDefaultDigitalAssistantAppSet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "swipe_to_open_assistant_app"

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigation_bar_gesture_while_hidden"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    const/4 v2, 0x1

    const v3, 0x7f14190a

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    const-class v2, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    const v2, 0x7f141910

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v2, "gesture_detailed"

    iput-object v2, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    const v2, 0x7f1418f8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string/jumbo v2, "swipe_to_open_assistant_app"

    iput-object v2, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportSearcle()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportTouch2Search()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f14193c

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p0, 0x7f141906

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportTouch2Search()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "touch_and_hold_to_search_chn"

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "touch_and_hold_to_search"

    :goto_1
    iput-object p0, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0

    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getXmlResourcesToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const p1, 0x7f17012d

    iput p1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isNavigationBarEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
