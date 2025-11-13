.class public final Landroid/os/vibrator/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags; = null

.field public static final blacklist FLAG_ADAPTIVE_HAPTICS_ENABLED:Ljava/lang/String; = "android.os.vibrator.adaptive_haptics_enabled"

.field public static final blacklist FLAG_HAPTIC_FEEDBACK_VIBRATION_OEM_CUSTOMIZATION_ENABLED:Ljava/lang/String; = "android.os.vibrator.haptic_feedback_vibration_oem_customization_enabled"

.field public static final blacklist FLAG_KEYBOARD_CATEGORY_ENABLED:Ljava/lang/String; = "android.os.vibrator.keyboard_category_enabled"

.field public static final blacklist FLAG_USE_VIBRATOR_HAPTIC_FEEDBACK:Ljava/lang/String; = "android.os.vibrator.use_vibrator_haptic_feedback"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/vibrator/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/os/vibrator/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist adaptiveHapticsEnabled()Z
    .locals 1

    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->adaptiveHapticsEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist hapticFeedbackVibrationOemCustomizationEnabled()Z
    .locals 1

    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->hapticFeedbackVibrationOemCustomizationEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist keyboardCategoryEnabled()Z
    .locals 1

    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->keyboardCategoryEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist useVibratorHapticFeedback()Z
    .locals 1

    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->useVibratorHapticFeedback()Z

    move-result v0

    return v0
.end method
