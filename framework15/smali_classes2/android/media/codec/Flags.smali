.class public final Landroid/media/codec/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/media/codec/FeatureFlags; = null

.field public static final blacklist FLAG_AIDL_HAL_INPUT_SURFACE:Ljava/lang/String; = "android.media.codec.aidl_hal_input_surface"

.field public static final blacklist FLAG_DYNAMIC_COLOR_ASPECTS:Ljava/lang/String; = "android.media.codec.dynamic_color_aspects"

.field public static final blacklist FLAG_HLG_EDITING:Ljava/lang/String; = "android.media.codec.hlg_editing"

.field public static final blacklist FLAG_INPUT_SURFACE_THROTTLE:Ljava/lang/String; = "android.media.codec.input_surface_throttle"

.field public static final blacklist FLAG_IN_PROCESS_SW_AUDIO_CODEC:Ljava/lang/String; = "android.media.codec.in_process_sw_audio_codec"

.field public static final blacklist FLAG_IN_PROCESS_SW_AUDIO_CODEC_SUPPORT:Ljava/lang/String; = "android.media.codec.in_process_sw_audio_codec_support"

.field public static final blacklist FLAG_LARGE_AUDIO_FRAME_FINISH:Ljava/lang/String; = "android.media.codec.large_audio_frame_finish"

.field public static final blacklist FLAG_NATIVE_CAPABILITES:Ljava/lang/String; = "android.media.codec.native_capabilites"

.field public static final blacklist FLAG_NULL_OUTPUT_SURFACE:Ljava/lang/String; = "android.media.codec.null_output_surface"

.field public static final blacklist FLAG_NULL_OUTPUT_SURFACE_SUPPORT:Ljava/lang/String; = "android.media.codec.null_output_surface_support"

.field public static final blacklist FLAG_REGION_OF_INTEREST:Ljava/lang/String; = "android.media.codec.region_of_interest"

.field public static final blacklist FLAG_REGION_OF_INTEREST_SUPPORT:Ljava/lang/String; = "android.media.codec.region_of_interest_support"

.field public static final blacklist FLAG_SET_CALLBACK_STALL:Ljava/lang/String; = "android.media.codec.set_callback_stall"

.field public static final blacklist FLAG_SET_STATE_EARLY:Ljava/lang/String; = "android.media.codec.set_state_early"

.field public static final blacklist FLAG_STOP_HAL_BEFORE_SURFACE:Ljava/lang/String; = "android.media.codec.stop_hal_before_surface"

.field public static final blacklist FLAG_TEAMFOOD:Ljava/lang/String; = "android.media.codec.teamfood"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/codec/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/media/codec/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist aidlHalInputSurface()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->aidlHalInputSurface()Z

    move-result v0

    return v0
.end method

.method public static greylist dynamicColorAspects()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->dynamicColorAspects()Z

    move-result v0

    return v0
.end method

.method public static greylist hlgEditing()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->hlgEditing()Z

    move-result v0

    return v0
.end method

.method public static greylist inProcessSwAudioCodec()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->inProcessSwAudioCodec()Z

    move-result v0

    return v0
.end method

.method public static greylist inProcessSwAudioCodecSupport()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->inProcessSwAudioCodecSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist inputSurfaceThrottle()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->inputSurfaceThrottle()Z

    move-result v0

    return v0
.end method

.method public static greylist largeAudioFrameFinish()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->largeAudioFrameFinish()Z

    move-result v0

    return v0
.end method

.method public static greylist nativeCapabilites()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->nativeCapabilites()Z

    move-result v0

    return v0
.end method

.method public static greylist nullOutputSurface()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->nullOutputSurface()Z

    move-result v0

    return v0
.end method

.method public static greylist nullOutputSurfaceSupport()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->nullOutputSurfaceSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist regionOfInterest()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->regionOfInterest()Z

    move-result v0

    return v0
.end method

.method public static greylist regionOfInterestSupport()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->regionOfInterestSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist setCallbackStall()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->setCallbackStall()Z

    move-result v0

    return v0
.end method

.method public static greylist setStateEarly()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->setStateEarly()Z

    move-result v0

    return v0
.end method

.method public static greylist stopHalBeforeSurface()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->stopHalBeforeSurface()Z

    move-result v0

    return v0
.end method

.method public static greylist teamfood()Z
    .locals 1

    sget-object v0, Landroid/media/codec/Flags;->FEATURE_FLAGS:Landroid/media/codec/FeatureFlags;

    invoke-interface {v0}, Landroid/media/codec/FeatureFlags;->teamfood()Z

    move-result v0

    return v0
.end method
