.class public final Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isChinaModel()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->getDeviceProtectionSecurityInfo(Landroid/content/Context;)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
