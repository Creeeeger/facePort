.class public final Lcom/samsung/android/settings/security/SecIccLockSettings$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    new-instance p0, Lcom/android/settings/security/SimLockPreferenceController;

    const-string/jumbo v0, "sim_lock_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/SimLockPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/security/SimLockPreferenceController;->getAvailabilityStatus()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
