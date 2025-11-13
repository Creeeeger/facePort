.class public abstract Lcom/samsung/android/settings/asbase/rune/VibRune;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SUPPORT_CHARGING_SYSTEM_VIBRATION:Z

.field public static final SUPPORT_CLASSIFIED_SYSTEM_VIBRATION:Z

.field public static final SUPPORT_DEFAULT_CATEGORIZE:Z

.field public static final SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

.field public static final SUPPORT_SEC_VIBRATION_PICKER:Z

.field public static final SUPPORT_SYNC_WITH_HAPTIC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_DC_MOTOR_HAPTIC_FEEDBACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1afa4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_CLASSIFIED_SYSTEM_VIBRATION:Z

    const v1, 0x1d524

    if-lt v0, v1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    sput-boolean v4, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    if-lt v0, v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_CHARGING_SYSTEM_VIBRATION:Z

    const v1, 0x1fbd0

    if-lt v0, v1, :cond_3

    move v2, v3

    :cond_3
    sput-boolean v2, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_DEFAULT_CATEGORIZE:Z

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_ACH_RINGTONE:Z

    sput-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    return-void
.end method
