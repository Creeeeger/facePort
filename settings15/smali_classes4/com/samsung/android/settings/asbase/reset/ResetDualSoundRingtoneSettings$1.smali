.class public final Lcom/samsung/android/settings/asbase/reset/ResetDualSoundRingtoneSettings$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final resetSettings(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isMultiSimModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.config.ringtone_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/asbase/reset/ResetDualSoundRingtoneSettings;->mDefaultRingtoneFilename_2:Ljava/lang/String;

    const-string/jumbo v0, "ro.config.notification_sound_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/asbase/reset/ResetDualSoundRingtoneSettings;->mDefaultNotificationFilename_2:Ljava/lang/String;

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isMultiSimModel()Z

    move-result v2

    const-string/jumbo v3, "special_edition_ringtone_set"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    invoke-static {p1, v5}, Landroid/media/RingtoneManager;->setRingtonesAsInitValue(Landroid/content/Context;I)V

    if-eqz v2, :cond_1

    sget-object v3, Lcom/samsung/android/settings/asbase/reset/ResetDualSoundRingtoneSettings;->mDefaultRingtoneFilename_2:Ljava/lang/String;

    const-string/jumbo v6, "ringtone_2"

    invoke-static {p0, v1, v0, v6, v3}, Lcom/samsung/android/settings/asbase/reset/ResetDualSoundRingtoneSettings;->-$$Nest$smSettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v3, "special_edition_notification_set"

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_2

    const/4 v3, 0x2

    invoke-static {p1, v3}, Landroid/media/RingtoneManager;->setRingtonesAsInitValue(Landroid/content/Context;I)V

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/settings/asbase/reset/ResetDualSoundRingtoneSettings;->mDefaultNotificationFilename_2:Ljava/lang/String;

    const-string/jumbo v3, "notification_sound_2"

    invoke-static {p0, v1, v0, v3, v2}, Lcom/samsung/android/settings/asbase/reset/ResetDualSoundRingtoneSettings;->-$$Nest$smSettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "special_edition_alarm_set"

    invoke-static {p0, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_3

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->setRingtonesAsInitValue(Landroid/content/Context;I)V

    :cond_3
    sget-boolean p1, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    if-eqz p1, :cond_4

    const-string/jumbo p1, "special_edition_system_sound_set"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v5, :cond_4

    const-string/jumbo p1, "system_sound"

    const-string v0, "Galaxy"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo p1, "prev_system_sound"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    return-void
.end method
