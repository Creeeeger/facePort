.class public final Lcom/android/settings/gestures/OneHandedSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isSupportOneHandedMode()Z

    move-result p0

    return p0
.end method
