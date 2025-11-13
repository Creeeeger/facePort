.class public Lcom/samsung/android/settings/as/rune/VibRune;
.super Ljava/lang/Object;
.source "VibRune.java"


# static fields
.field public static final SUPPORT_CHARGING_SYSTEM_VIBRATION:Z

.field public static final SUPPORT_CLASSIFIED_SYSTEM_VIBRATION:Z

.field public static final SUPPORT_CUSTOM_PATTERN:Z

.field public static final SUPPORT_DEFAULT_CATEGORIZE:Z

.field public static final SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

.field public static final SUPPORT_SEC_VIBRATION_PICKER:Z

.field public static final SUPPORT_SYNC_WITH_HAPTIC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_DC_MOTOR_HAPTIC_FEEDBACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x1afa4

    if-lt v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_CLASSIFIED_SYSTEM_VIBRATION:Z

    const v3, 0x1d524

    if-lt v0, v3, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 28
    :goto_1
    sput-boolean v4, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    if-lt v0, v3, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 30
    :goto_2
    sput-boolean v4, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_CHARGING_SYSTEM_VIBRATION:Z

    if-lt v0, v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    .line 32
    :goto_3
    sput-boolean v3, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_CUSTOM_PATTERN:Z

    const v3, 0x1fbd0

    if-lt v0, v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    .line 34
    :goto_4
    sput-boolean v1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_DEFAULT_CATEGORIZE:Z

    .line 36
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_ACH_RINGTONE:Z

    sput-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    return-void
.end method
