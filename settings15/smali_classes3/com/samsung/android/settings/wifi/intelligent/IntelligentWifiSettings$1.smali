.class public final Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;-><init>(Landroid/content/Context;)V

    const-string p1, "auto_wifi"

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "ape"

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "wifi_poor_network_detection"

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "auto_connect_hotspot"

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "switch_to_better_wifi_with_screen_off_only"

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "switch_to_better_wifi"

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "switch_to_better_wifi_with_screen_on"

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    const p1, 0x7f143478

    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const p1, 0x7f1435a6

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string p1, "auto_connect_hotspot"

    iput-object p1, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050063

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string/jumbo p0, "user"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
