.class public final Lcom/android/graphics/hwui/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ANIMATE_HDR_TRANSITIONS:Ljava/lang/String; = "com.android.graphics.hwui.flags.animate_hdr_transitions"

.field public static final blacklist FLAG_CLIP_SHADER:Ljava/lang/String; = "com.android.graphics.hwui.flags.clip_shader"

.field public static final blacklist FLAG_CLIP_SURFACEVIEWS:Ljava/lang/String; = "com.android.graphics.hwui.flags.clip_surfaceviews"

.field public static final blacklist FLAG_DRAW_REGION:Ljava/lang/String; = "com.android.graphics.hwui.flags.draw_region"

.field public static final blacklist FLAG_GAINMAP_ANIMATIONS:Ljava/lang/String; = "com.android.graphics.hwui.flags.gainmap_animations"

.field public static final blacklist FLAG_GAINMAP_CONSTRUCTOR_WITH_METADATA:Ljava/lang/String; = "com.android.graphics.hwui.flags.gainmap_constructor_with_metadata"

.field public static final blacklist FLAG_HDR_10BIT_PLUS:Ljava/lang/String; = "com.android.graphics.hwui.flags.hdr_10bit_plus"

.field public static final blacklist FLAG_HIGH_CONTRAST_TEXT_LUMINANCE:Ljava/lang/String; = "com.android.graphics.hwui.flags.high_contrast_text_luminance"

.field public static final blacklist FLAG_HIGH_CONTRAST_TEXT_SMALL_TEXT_RECT:Ljava/lang/String; = "com.android.graphics.hwui.flags.high_contrast_text_small_text_rect"

.field public static final blacklist FLAG_INITIALIZE_GL_ALWAYS:Ljava/lang/String; = "com.android.graphics.hwui.flags.initialize_gl_always"

.field public static final blacklist FLAG_LIMITED_HDR:Ljava/lang/String; = "com.android.graphics.hwui.flags.limited_hdr"

.field public static final blacklist FLAG_MATRIX_44:Ljava/lang/String; = "com.android.graphics.hwui.flags.matrix_44"

.field public static final blacklist FLAG_REQUESTED_FORMATS_V:Ljava/lang/String; = "com.android.graphics.hwui.flags.requested_formats_v"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/graphics/hwui/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist animateHdrTransitions()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->animateHdrTransitions()Z

    move-result v0

    return v0
.end method

.method public static greylist clipShader()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->clipShader()Z

    move-result v0

    return v0
.end method

.method public static greylist clipSurfaceviews()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->clipSurfaceviews()Z

    move-result v0

    return v0
.end method

.method public static greylist drawRegion()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->drawRegion()Z

    move-result v0

    return v0
.end method

.method public static greylist gainmapAnimations()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->gainmapAnimations()Z

    move-result v0

    return v0
.end method

.method public static greylist gainmapConstructorWithMetadata()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->gainmapConstructorWithMetadata()Z

    move-result v0

    return v0
.end method

.method public static greylist hdr10bitPlus()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->hdr10bitPlus()Z

    move-result v0

    return v0
.end method

.method public static greylist highContrastTextLuminance()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->highContrastTextLuminance()Z

    move-result v0

    return v0
.end method

.method public static greylist highContrastTextSmallTextRect()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->highContrastTextSmallTextRect()Z

    move-result v0

    return v0
.end method

.method public static greylist initializeGlAlways()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->initializeGlAlways()Z

    move-result v0

    return v0
.end method

.method public static greylist limitedHdr()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->limitedHdr()Z

    move-result v0

    return v0
.end method

.method public static greylist matrix44()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->matrix44()Z

    move-result v0

    return v0
.end method

.method public static greylist requestedFormatsV()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->requestedFormatsV()Z

    move-result v0

    return v0
.end method
