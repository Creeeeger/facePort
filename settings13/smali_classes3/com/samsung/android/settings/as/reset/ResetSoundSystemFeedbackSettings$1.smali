.class Lcom/samsung/android/settings/as/reset/ResetSoundSystemFeedbackSettings$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "ResetSoundSystemFeedbackSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/reset/ResetSoundSystemFeedbackSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method

.method private soundResetSettingsHelper(Landroid/content/Context;)V
    .locals 6

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 51
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sound_effects_enabled"

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 54
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "MTR"

    .line 57
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, 0x1

    if-nez v0, :cond_1

    const-string v0, "AIO"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p0, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-static {p0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_1
    const-string v0, "charging_sounds_enabled"

    .line 64
    invoke-static {p0, v0, v4, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 67
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Setting_DefDialingKeypadTone"

    const-string v5, "ON"

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "dtmf_tone"

    if-eqz v0, :cond_2

    .line 68
    invoke-static {p0, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    .line 70
    :cond_2
    invoke-static {p0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 74
    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    const-string v3, "sip_key_feedback_sound"

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v5, "SEC_FLOATING_FEATURE_SIP_ENABLE_DEF_KEY_SOUND"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 77
    :cond_3
    invoke-static {p0, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_4

    .line 75
    :cond_4
    :goto_3
    invoke-static {p0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_4
    const-string v0, "folder_sounds_enabled"

    .line 81
    invoke-static {p0, v0, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "gps_noti_sound_enabled"

    .line 84
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 87
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "dock_sounds_enabled"

    if-nez v0, :cond_5

    .line 88
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 90
    :cond_5
    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_5
    const-string v0, "dock_audio_media_enabled"

    .line 94
    invoke-static {p0, v0, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "USC"

    .line 97
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "emergency_tone"

    if-eqz v0, :cond_6

    .line 98
    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :cond_6
    const-string v0, "CHA"

    .line 99
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    .line 100
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 102
    :cond_7
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_6
    return-void
.end method

.method private vibrationResetSettingsHelper(Landroid/content/Context;)V
    .locals 9

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 109
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "charging_vibration_enabled"

    const-string v2, "navigation_gestures_vibrate"

    const-string v3, "dialing_keypad_vibrate"

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x2

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0, v4, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 111
    invoke-static {p0, v3, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 112
    invoke-static {p0, v2, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 113
    invoke-static {p0, v1, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    const-string v8, "camera_feedback_vibrate"

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {p0, v4, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 122
    invoke-static {p0, v3, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 123
    invoke-static {p0, v8, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 124
    invoke-static {p0, v2, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 125
    invoke-static {p0, v1, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 115
    :cond_2
    :goto_0
    invoke-static {p0, v4, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 116
    invoke-static {p0, v3, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 117
    invoke-static {p0, v8, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 118
    invoke-static {p0, v2, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 119
    invoke-static {p0, v1, v5, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 128
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "sip_key_feedback_vibration"

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 131
    :cond_3
    invoke-static {p0, v1, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_3

    .line 129
    :cond_4
    :goto_2
    invoke-static {p0, v1, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 134
    :goto_3
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    const v1, 0xc373

    if-eqz v0, :cond_5

    const-string v0, "ringtone_vibration_sep_index"

    .line 135
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x104040d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "default_notification_vibration_pattern"

    .line 136
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const p1, 0xc372

    const-string v0, "notification_vibration_sep_index"

    .line 140
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    :cond_5
    sget-boolean p1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    const-string v0, "sync_vibration_with_notification"

    const-string v2, "sync_vibration_with_ringtone_2"

    const-string v3, "sync_vibration_with_ringtone"

    if-eqz p1, :cond_6

    const-string p1, "ringtone_vibration_sep_index_2"

    .line 144
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    invoke-static {p0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    invoke-static {p0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    invoke-static {p0, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 149
    :cond_6
    invoke-static {p0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    invoke-static {p0, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    invoke-static {p0, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    return-void
.end method


# virtual methods
.method public loadCscSettings(Landroid/content/Context;Lcom/samsung/android/settings/csc/CscParser;)V
    .locals 2

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "Settings.Main.Sound.TouchTone"

    .line 35
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ResetSoundSystemFeedbackSettings"

    if-eqz v0, :cond_0

    const-string p0, "Touch Sounds is not found"

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "on"

    .line 41
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "sound_effects_enabled"

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 42
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string p1, "off"

    .line 43
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 44
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public resetSettings(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/reset/ResetSoundSystemFeedbackSettings$1;->soundResetSettingsHelper(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/reset/ResetSoundSystemFeedbackSettings$1;->vibrationResetSettingsHelper(Landroid/content/Context;)V

    return-void
.end method
