.class public Lcom/samsung/android/settings/as/rune/AudioRune;
.super Ljava/lang/Object;
.source "AudioRune.java"


# static fields
.field public static final SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

.field public static final SUPPORT_ADD_BUTTON:Z

.field public static final SUPPORT_DOWNLOAD_RINGTONE:Ljava/lang/String;

.field public static final SUPPORT_HAPTIC_PLAYBACK_WITH_RINGTONE:Z

.field public static final SUPPORT_HIDE_SYSTEM_SOUND_SETTING:Z

.field public static final SUPPORT_HOME_IOT:Z

.field public static final SUPPORT_KT_RINGTONE:Z

.field public static final SUPPORT_LGU_RINGTONE:Z

.field public static final SUPPORT_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

.field public static final SUPPORT_SECOND_OMC_RINGTONE_SETTING:Z

.field public static final SUPPORT_SITUATION_EXTENSION:Z

.field public static final SUPPORT_SKIP_RESET_DEFAULT_RINGTONE:Z

.field public static final SUPPORT_SKT_RINGTONE:Z

.field public static final SUPPORT_SOUND_THEME:Z

.field public static final SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

.field public static final SUPPORT_SPEAKER:Z

.field public static final SUPPORT_STARWARS_EDITION:Z

.field public static final SUPPORT_THOMBROWNE_EDITION:Z

.field public static final SUPPORT_V_COLORING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "sep_basic"

    .line 23
    invoke-static {v0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x1d524

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    const-string v0, "NONE"

    const-string v3, "2020_HUBBLE"

    .line 26
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SPEAKER:Z

    const-string v0, "iot"

    const-string v3, "phone"

    .line 28
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_HOME_IOT:Z

    .line 34
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISABLED_MENU_K05"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_ADD_BUTTON:Z

    .line 36
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_SITUATION_EXTENSION"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SITUATION_EXTENSION:Z

    .line 38
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_VOIP_SOUND_LOUDER"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    .line 44
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Tcoloring"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SKT_RINGTONE:Z

    .line 46
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Ringtoyou"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_KT_RINGTONE:Z

    .line 48
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "FeelRing"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_LGU_RINGTONE:Z

    .line 50
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_DOWNLOAD_RINGTONE:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_SetupWizard_ConfigStepSequenceType"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "starwars"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_STARWARS_EDITION:Z

    .line 54
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ThomBrowne"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_THOMBROWNE_EDITION:Z

    .line 56
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Audio_SupportSecondRingtoneSetting"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SECOND_OMC_RINGTONE_SETTING:Z

    .line 58
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_SupportCallerRingBackTone"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    sput-boolean v4, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_V_COLORING:Z

    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    .line 88
    :goto_3
    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SKIP_RESET_DEFAULT_RINGTONE:Z

    .line 92
    invoke-static {}, Lcom/android/settings/Utils;->isAlgeriaModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_HIDE_SYSTEM_SOUND_SETTING:Z

    .line 98
    invoke-static {}, Landroid/media/AudioManager;->isHapticPlaybackSupported()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_HAPTIC_PLAYBACK_WITH_RINGTONE:Z

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x1fbd0

    if-lt v0, v3, :cond_4

    move v1, v2

    :cond_4
    sput-boolean v1, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    return-void
.end method
