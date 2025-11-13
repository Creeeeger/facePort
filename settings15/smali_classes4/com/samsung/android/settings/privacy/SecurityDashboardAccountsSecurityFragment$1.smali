.class public final Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isChinaModel()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isGoogleServiceEnabled(Landroid/content/Context;)Z

    move-result p0

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isSamsungAccountSupported(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    if-nez p0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
