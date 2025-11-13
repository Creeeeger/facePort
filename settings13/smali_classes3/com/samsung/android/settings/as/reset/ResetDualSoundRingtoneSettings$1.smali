.class Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "ResetDualSoundRingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method


# virtual methods
.method public resetSettings(Landroid/content/Context;)V
    .locals 7

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 33
    invoke-static {p1}, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->-$$Nest$smsetDefaultRingtoneFileNames(Landroid/content/Context;)V

    .line 34
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 35
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 37
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/SimUtils;->isMultiSimModel(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "special_edition_ringtone_set"

    const/4 v4, 0x0

    .line 40
    invoke-static {p0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    .line 41
    invoke-static {p1, v5}, Landroid/media/RingtoneManager;->setRingtonesAsInitValue(Landroid/content/Context;I)V

    if-eqz v2, :cond_1

    .line 43
    sget-boolean v3, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SECOND_OMC_RINGTONE_SETTING:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x80

    .line 44
    invoke-static {p1, v3}, Landroid/media/RingtoneManager;->setRingtonesAsInitValue(Landroid/content/Context;I)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->-$$Nest$sfgetmDefaultRingtoneFilename_2()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ringtone_2"

    invoke-static {p0, v1, v0, v6, v3}, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->-$$Nest$smSettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v3, "special_edition_notification_set"

    .line 54
    invoke-static {p0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_3

    const/4 v3, 0x2

    .line 55
    invoke-static {p1, v3}, Landroid/media/RingtoneManager;->setRingtonesAsInitValue(Landroid/content/Context;I)V

    if-eqz v2, :cond_3

    .line 57
    sget-boolean v2, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SECOND_OMC_RINGTONE_SETTING:Z

    if-eqz v2, :cond_2

    const/16 v0, 0x100

    .line 58
    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->setRingtonesAsInitValue(Landroid/content/Context;I)V

    goto :goto_1

    .line 61
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->-$$Nest$sfgetmDefaultNotificationFilename_2()Ljava/lang/String;

    move-result-object v2

    const-string v3, "notification_sound_2"

    invoke-static {p0, v1, v0, v3, v2}, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->-$$Nest$smSettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v0, "special_edition_alarm_set"

    .line 68
    invoke-static {p0, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_4

    const/4 v0, 0x4

    .line 69
    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->setRingtonesAsInitValue(Landroid/content/Context;I)V

    .line 73
    :cond_4
    sget-boolean p1, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    if-eqz p1, :cond_5

    const-string p1, "special_edition_system_sound_set"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v5, :cond_5

    const-string p1, "system_sound"

    const-string v0, "Galaxy"

    .line 74
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "prev_system_sound"

    .line 75
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    return-void
.end method
