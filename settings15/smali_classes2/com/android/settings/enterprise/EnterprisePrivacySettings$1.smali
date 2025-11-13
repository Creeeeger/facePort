.class public final Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lcom/android/settings/enterprise/PrivacySettingsPreferenceFactory;->createPrivacySettingsPreference(Landroid/content/Context;)Lcom/android/settings/enterprise/PrivacySettingsPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/settings/enterprise/PrivacySettingsPreference;->createPreferenceControllers(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getXmlResourcesToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lcom/android/settings/enterprise/PrivacySettingsPreferenceFactory;->createPrivacySettingsPreference(Landroid/content/Context;)Lcom/android/settings/enterprise/PrivacySettingsPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/enterprise/PrivacySettingsPreference;->getXmlResourcesToIndex()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    sget-object p0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getEnterprisePrivacyFeatureProvider()Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->hasDeviceOwner()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
