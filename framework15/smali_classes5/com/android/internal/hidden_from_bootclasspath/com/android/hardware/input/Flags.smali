.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags; = null

.field public static final blacklist FLAG_EMOJI_AND_SCREENSHOT_KEYCODES_AVAILABLE:Ljava/lang/String; = "com.android.hardware.input.emoji_and_screenshot_keycodes_available"

.field public static final blacklist FLAG_KEYBOARD_A11Y_BOUNCE_KEYS_FLAG:Ljava/lang/String; = "com.android.hardware.input.keyboard_a11y_bounce_keys_flag"

.field public static final blacklist FLAG_KEYBOARD_A11Y_SLOW_KEYS_FLAG:Ljava/lang/String; = "com.android.hardware.input.keyboard_a11y_slow_keys_flag"

.field public static final blacklist FLAG_KEYBOARD_A11Y_STICKY_KEYS_FLAG:Ljava/lang/String; = "com.android.hardware.input.keyboard_a11y_sticky_keys_flag"

.field public static final blacklist FLAG_KEYBOARD_LAYOUT_PREVIEW_FLAG:Ljava/lang/String; = "com.android.hardware.input.keyboard_layout_preview_flag"

.field public static final blacklist FLAG_POINTER_COORDS_IS_RESAMPLED_API:Ljava/lang/String; = "com.android.hardware.input.pointer_coords_is_resampled_api"

.field public static final blacklist FLAG_TOUCHPAD_TAP_DRAGGING:Ljava/lang/String; = "com.android.hardware.input.touchpad_tap_dragging"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist emojiAndScreenshotKeycodesAvailable()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->emojiAndScreenshotKeycodesAvailable()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardA11yBounceKeysFlag()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyboardA11yBounceKeysFlag()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardA11ySlowKeysFlag()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyboardA11ySlowKeysFlag()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardA11yStickyKeysFlag()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyboardA11yStickyKeysFlag()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardLayoutPreviewFlag()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyboardLayoutPreviewFlag()Z

    move-result v0

    return v0
.end method

.method public static blacklist pointerCoordsIsResampledApi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->pointerCoordsIsResampledApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist touchpadTapDragging()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->touchpadTapDragging()Z

    move-result v0

    return v0
.end method
