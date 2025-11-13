.class public final Lcom/samsung/android/settings/asbase/reset/ResetVolumeSettings$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static updateVolume(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ResetVolumeSettings"

    const-string/jumbo p2, "updateVolume explain error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final loadCscSettings(Landroid/content/Context;Lcom/samsung/android/settings/csc/CscParser;)V
    .locals 2

    const-string p0, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResetVolumeSettings"

    if-eqz v0, :cond_0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/asbase/reset/ResetVolumeSettings$1;->updateVolume(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "System volume is not found."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/asbase/reset/ResetVolumeSettings$1;->updateVolume(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "Media volume is not found."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string p0, "Settings.Main.Sound.MsgToneVolume"

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "Settings.Main.Sound.NotificationVolume"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/asbase/reset/ResetVolumeSettings$1;->updateVolume(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p0, "Notification volume is not found."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string p0, "Settings.Main.Sound.RngVolume"

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "Settings.Main.Sound.RingVolume"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/asbase/reset/ResetVolumeSettings$1;->updateVolume(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p0, "Ring volume is not found."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string p0, "Settings.Main.Sound.ALARMVolume"

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p2, "Settings.Main.Sound.AlarmVolume"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x4

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/asbase/reset/ResetVolumeSettings$1;->updateVolume(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string p0, "Alarm volume is not found."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public final resetSettings(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "volume_waiting_tone"

    const/4 v0, 0x2

    const/4 v1, -0x2

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo p1, "volume_music_headset"

    const/16 v0, 0x8

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo p1, "volume_music_headphone"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo p1, "volume_music_usb_headset"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo p1, "volume_music_bt_a2dp"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo p1, "volume_music_remote_submix"

    const/16 v0, 0xf

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
