.class public abstract Lcom/samsung/android/settings/asbase/rune/AudioRune;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

.field public static final SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

.field public static final SUPPORT_ADD_BUTTON:Z

.field public static final SUPPORT_HAPTIC_PLAYBACK_WITH_RINGTONE:Z

.field public static final SUPPORT_HIDE_SYSTEM_SOUND_SETTING:Z

.field public static final SUPPORT_KT_RINGTONE:Z

.field public static final SUPPORT_LGU_RINGTONE:Z

.field public static final SUPPORT_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

.field public static final SUPPORT_SITUATION_EXTENSION:Z

.field public static final SUPPORT_SKT_RINGTONE:Z

.field public static final SUPPORT_SOUND_THEME:Z

.field public static final SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

.field public static final SUPPORT_SPEAKER:Z

.field public static final SUPPORT_V_COLORING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string/jumbo v0, "sep_basic"

    invoke-static {v0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x1d524

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    const-string v0, "NONE"

    const-string v3, "ONEUI_6_1"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_SPEAKER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISABLED_MENU_K05"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_ADD_BUTTON:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_SITUATION_EXTENSION"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_SITUATION_EXTENSION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_VOIP_SOUND_LOUDER"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_ANTI_HOWLING"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_SKT_RINGTONE:Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_KT_RINGTONE:Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_LGU_RINGTONE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_VoiceCall_SupportCallerRingBackTone"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_V_COLORING:Z

    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DZ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "TKD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TMC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "WTL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_HIDE_SYSTEM_SOUND_SETTING:Z

    invoke-static {}, Landroid/media/AudioManager;->isHapticPlaybackSupported()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_HAPTIC_PLAYBACK_WITH_RINGTONE:Z

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x1fbd0

    if-lt v0, v3, :cond_4

    move v1, v2

    :cond_4
    sput-boolean v1, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    return-void
.end method
