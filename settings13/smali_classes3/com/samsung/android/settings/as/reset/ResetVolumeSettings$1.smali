.class Lcom/samsung/android/settings/as/reset/ResetVolumeSettings$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "ResetVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/reset/ResetVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method

.method private updateVolume(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    const-string p0, "audio"

    .line 73
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 75
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ResetVolumeSettings"

    const-string p2, "updateVolume explain error"

    .line 77
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public loadCscSettings(Landroid/content/Context;Lcom/samsung/android/settings/csc/CscParser;)V
    .locals 3

    const-string v0, "Settings.Main.Sound.KeyTone.KeyVolume"

    .line 36
    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResetVolumeSettings"

    if-eqz v1, :cond_0

    .line 37
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/as/reset/ResetVolumeSettings$1;->updateVolume(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "System volume is not found."

    .line 40
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "Settings.Main.Sound.MediaVolume"

    .line 43
    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 45
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/as/reset/ResetVolumeSettings$1;->updateVolume(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "Media volume is not found."

    .line 47
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v0, "Settings.Main.Sound.MsgToneVolume"

    .line 50
    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Settings.Main.Sound.NotificationVolume"

    .line 51
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    .line 52
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/settings/as/reset/ResetVolumeSettings$1;->updateVolume(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "Notification volume is not found."

    .line 54
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v0, "Settings.Main.Sound.RngVolume"

    .line 57
    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "Settings.Main.Sound.RingVolume"

    .line 58
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 59
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/settings/as/reset/ResetVolumeSettings$1;->updateVolume(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, "Ring volume is not found."

    .line 61
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string v0, "Settings.Main.Sound.ALARMVolume"

    .line 64
    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v0, "Settings.Main.Sound.AlarmVolume"

    .line 65
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 66
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/settings/as/reset/ResetVolumeSettings$1;->updateVolume(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string p0, "Alarm volume is not found."

    .line 68
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public resetSettings(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "volume_waiting_tone"

    const/4 v0, 0x2

    const/4 v1, -0x2

    .line 24
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "volume_music_headset"

    const/16 v0, 0x8

    .line 25
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "volume_music_headphone"

    .line 26
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "volume_music_usb_headset"

    .line 27
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "volume_music_bt_a2dp"

    .line 28
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "volume_music_remote_submix"

    const/16 v0, 0xf

    .line 29
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
