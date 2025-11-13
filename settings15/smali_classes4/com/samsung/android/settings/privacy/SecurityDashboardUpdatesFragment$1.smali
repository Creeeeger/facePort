.class public final Lcom/samsung/android/settings/privacy/SecurityDashboardUpdatesFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->isOTAUpgradeAllowed(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isGPSuSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
