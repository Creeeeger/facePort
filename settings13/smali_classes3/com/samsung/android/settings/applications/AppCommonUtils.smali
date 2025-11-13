.class public Lcom/samsung/android/settings/applications/AppCommonUtils;
.super Ljava/lang/Object;
.source "AppCommonUtils.java"


# direct methods
.method public static getAppSettingsTitle()I
    .locals 1

    .line 47
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget v0, Lcom/android/settings/R$string;->sec_app_settings_jpn:I

    return v0

    .line 50
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sec_app_settings:I

    return v0
.end method

.method public static getOverlayTitle()I
    .locals 1

    .line 31
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_APPS_OVERLAY_WINDOW_TITLE_BY_VZW:Z

    if-eqz v0, :cond_0

    .line 32
    sget v0, Lcom/android/settings/R$string;->sec_overlay_settings_vzw:I

    return v0

    .line 34
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sec_overlay_settings:I

    return v0
.end method

.method public static getWriteSettingsTitle()I
    .locals 1

    .line 39
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_APPS_WRITE_SETTING_TITLE_BY_VZW:Z

    if-eqz v0, :cond_0

    .line 40
    sget v0, Lcom/android/settings/R$string;->sec_write_system_settings_vzw:I

    return v0

    .line 42
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sec_write_system_settings:I

    return v0
.end method
