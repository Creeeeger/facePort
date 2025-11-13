.class public final Lcom/samsung/android/settings/asbase/reset/ResetVibrationIntensitySettings$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final resetSettings(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v1, -0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    const-string p1, "VIB_RECVCALL_MAGNITUDE"

    const/4 v0, 0x5

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    const/4 v2, 0x4

    invoke-static {p0, p1, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "media_vibration_intensity"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
