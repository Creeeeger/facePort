.class public final Lcom/samsung/android/settings/deviceinfo/legalinfo/LegalInfoSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getRawDataToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1414c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.LICENSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPreferenceToSpecificActivityTitleInfo(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "license"

    iput-object v3, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.TERMS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPreferenceToSpecificActivityTitleInfo(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "terms"

    iput-object v3, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WEBVIEW_LICENSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPreferenceToSpecificActivityTitleInfo(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "webview_license"

    iput-object v3, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.SAMSUNG_KNOX_PRIVACY_NOTICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPreferenceToSpecificActivityTitleInfo(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "knox_privacy_notice"

    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
