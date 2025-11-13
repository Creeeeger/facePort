.class Lcom/samsung/android/settings/as/reset/ResetVolumeLimiterSettings$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "ResetVolumeLimiterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/reset/ResetVolumeLimiterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method


# virtual methods
.method public resetSettings(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "volumelimit_on"

    const/4 v0, 0x0

    .line 21
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "volumelimit_set_password"

    .line 22
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "volume_limiter_value"

    const/16 v0, 0x9

    .line 23
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
