.class public final Lcom/android/settings/security/SecurityAdvancedSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/android/settings/security/SecurityAdvancedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const/4 p0, 0x0

    invoke-static {p1, p0, p0}, Lcom/android/settings/safetycenter/SafetyCenterUtils;->getControllersForAdvancedSecurity(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
