.class public final Lcom/samsung/android/settings/connection/tether/SecTetherSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getXmlResourcesToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f1701fe

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f1701ff

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    :goto_1
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/settings/connection/tether/SecTetherPreferenceController;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecTetherPreferenceController;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Lcom/samsung/android/settings/connection/tether/SecTabTetherPreferenceController;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecTabTetherPreferenceController;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method
