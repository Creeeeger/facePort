.class Lcom/samsung/android/settings/as/reset/ResetVibrationIntensitySettings$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "ResetVibrationIntensitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/reset/ResetVibrationIntensitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method


# virtual methods
.method public resetSettings(Landroid/content/Context;)V
    .locals 3

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 18
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v1, -0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 19
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 22
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    const-string p1, "VIB_RECVCALL_MAGNITUDE"

    const/4 v0, 0x5

    .line 25
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    .line 27
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 p1, 0x4

    const-string v2, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    .line 29
    invoke-static {p0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "media_vibration_intensity"

    .line 31
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
