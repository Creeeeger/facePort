.class public final Lcom/android/settings/wifi/p2p/WifiP2pSettings$11;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getRawDataToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1435bf

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string p1, "wifi_p2p"

    iput-object p1, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
