.class public final Landroid/hardware/camera2/CameraCharacteristics;
.super Landroid/hardware/camera2/CameraMetadata;
.source "CameraCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraCharacteristics$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/CameraMetadata<",
        "Landroid/hardware/camera2/CameraCharacteristics$Key<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final whitelist AUTOMOTIVE_LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist AUTOMOTIVE_LOCATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist AVAILABLE_SESSION_CHARACTERISTICS_KEYS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final whitelist COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AUTOFRAMING_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/Capability;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_MAX_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_ZOOM_RATIO_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AVAILABLE_SETTINGS_OVERRIDES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_LOW_LIGHT_BOOST_INFO_LUMINANCE_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_RECOMMENDED_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/RecommendedStreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEPTH_DEPTH_IS_EXCLUSIVE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISTORTION_CORRECTION_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_PADDING_ZOOM_FACTOR_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLASH_INFO_STRENGTH_DEFAULT_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLASH_INFO_STRENGTH_MAXIMUM_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLASH_SINGLE_STRENGTH_DEFAULT_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLASH_SINGLE_STRENGTH_MAX_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLASH_TORCH_STRENGTH_DEFAULT_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLASH_TORCH_STRENGTH_MAX_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEIC_AVAILABLE_HEIC_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HOT_PIXEL_AVAILABLE_HOT_PIXEL_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist INFO_DEVICE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INFO_DEVICE_STATE_ORIENTATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final whitelist INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INFO_SESSION_CONFIGURATION_QUERY_VERSION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INFO_VERSION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist JPEGR_AVAILABLE_JPEG_R_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist JPEGR_AVAILABLE_JPEG_R_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist JPEGR_AVAILABLE_JPEG_R_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist JPEGR_AVAILABLE_JPEG_R_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist JPEGR_AVAILABLE_JPEG_R_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist JPEGR_AVAILABLE_JPEG_R_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LED_AVAILABLE_LEDS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_DISTORTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_DISTORTION_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_AVAILABLE_FILTER_DENSITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_FOCUS_DISTANCE_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INTRINSIC_CALIBRATION_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_POSE_REFERENCE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_POSE_ROTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_RADIAL_DISTORTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist LOGICAL_MULTI_CAMERA_PHYSICAL_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final whitelist LOGICAL_MULTI_CAMERA_SENSOR_SYNC_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist QUIRKS_USE_PARTIAL_RESULT:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist REPROCESS_MAX_CAPTURE_STALL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_AVAILABLE_COLOR_SPACE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceProfiles;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_COLOR_SPACE_PROFILES_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/DynamicRangeProfiles;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_PHYSICAL_CAMERA_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_SESSION_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_CHARACTERISTIC_KEYS_NEEDING_PERMISSION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_MAX_NUM_INPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_JPEG_MIN_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_JPEG_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_PROCESSED_MIN_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_PROCESSED_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_RECOMMENDED_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_RECOMMENDED_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/RecommendedStreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_AVAILABLE_ROTATE_AND_CROP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_AVAILABLE_STREAM_USE_CASES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_DEFAULT_SECURE_IMAGE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MANDATORY_CONCURRENT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MANDATORY_MAXIMUM_RESOLUTION_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MANDATORY_PREVIEW_STABILIZATION_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MANDATORY_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MANDATORY_TEN_BIT_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MANDATORY_USE_CASE_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_MULTI_RESOLUTION_STREAM_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/BlackLevelPattern;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_CALIBRATION_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_CALIBRATION_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_COLOR_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_COLOR_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_FORWARD_MATRIX1:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_FORWARD_MATRIX2:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_ACTIVE_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_BINNING_FACTOR:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_LENS_SHADING_APPLIED:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_PIXEL_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_OPTICAL_BLACK_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_READOUT_TIMESTAMP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_REFERENCE_ILLUMINANT1:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_REFERENCE_ILLUMINANT2:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SHADING_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_INFO_AVAILABLE_HOT_PIXEL_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[Z>;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_INFO_AVAILABLE_LENS_SHADING_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_INFO_AVAILABLE_OIS_DATA_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CameraCharacteristics"

.field public static final whitelist TONEMAP_AVAILABLE_TONE_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist TONEMAP_MAX_CURVE_POINTS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAvailablePhysicalRequestKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mAvailableRequestKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mAvailableResultKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mAvailableSessionCharacteristicsKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mAvailableSessionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mFoldStateListener:Landroid/hardware/camera2/CameraManager$DeviceStateListener;

.field private blacklist mFoldedDeviceState:Z

.field private greylist-max-o mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mKeysNeedingPermission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final greylist-max-r mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field private blacklist mRecommendedConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFoldedDeviceState(Landroid/hardware/camera2/CameraCharacteristics;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mFoldedDeviceState:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 6

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.colorCorrection.availableAberrationModes"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.aeAvailableAntibandingModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.aeAvailableModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$2;

    invoke-direct {v1}, Landroid/hardware/camera2/CameraCharacteristics$2;-><init>()V

    const-string v3, "android.control.aeAvailableTargetFpsRanges"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$3;

    invoke-direct {v1}, Landroid/hardware/camera2/CameraCharacteristics$3;-><init>()V

    const-string v3, "android.control.aeCompensationRange"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.aeCompensationStep"

    const-class v3, Landroid/util/Rational;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.afAvailableModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.availableEffects"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.availableSceneModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.availableVideoStabilizationModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.awbAvailableModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.maxRegions"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.maxRegionsAe"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.maxRegionsAwb"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.maxRegionsAf"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.availableHighSpeedVideoConfigurations"

    const-class v3, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.aeLockAvailable"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.awbLockAvailable"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.availableModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$4;

    invoke-direct {v1}, Landroid/hardware/camera2/CameraCharacteristics$4;-><init>()V

    const-string v3, "android.control.postRawSensitivityBoostRange"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.availableExtendedSceneModeMaxSizes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_MAX_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.availableExtendedSceneModeZoomRatioRanges"

    const-class v3, [F

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_ZOOM_RATIO_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.availableExtendedSceneModeCapabilities"

    const-class v4, [Landroid/hardware/camera2/params/Capability;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$5;

    invoke-direct {v1}, Landroid/hardware/camera2/CameraCharacteristics$5;-><init>()V

    const-string v4, "android.control.zoomRatioRange"

    invoke-direct {v0, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.availableHighSpeedVideoConfigurationsMaximumResolution"

    const-class v4, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.availableSettingsOverrides"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SETTINGS_OVERRIDES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.control.autoframingAvailable"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AUTOFRAMING_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$6;

    invoke-direct {v1}, Landroid/hardware/camera2/CameraCharacteristics$6;-><init>()V

    const-string v4, "android.control.lowLightBoostInfoLuminanceRange"

    invoke-direct {v0, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_LOW_LIGHT_BOOST_INFO_LUMINANCE_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.edge.availableEdgeModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.flash.info.available"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.flash.info.strengthMaximumLevel"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_STRENGTH_MAXIMUM_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.flash.info.strengthDefaultLevel"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_STRENGTH_DEFAULT_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.flash.singleStrengthMaxLevel"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_SINGLE_STRENGTH_MAX_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.flash.singleStrengthDefaultLevel"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_SINGLE_STRENGTH_DEFAULT_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.flash.torchStrengthMaxLevel"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_TORCH_STRENGTH_MAX_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.flash.torchStrengthDefaultLevel"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_TORCH_STRENGTH_DEFAULT_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.hotPixel.availableHotPixelModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HOT_PIXEL_AVAILABLE_HOT_PIXEL_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.jpeg.availableThumbnailSizes"

    const-class v4, [Landroid/util/Size;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.info.availableApertures"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.info.availableFilterDensities"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FILTER_DENSITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.info.availableFocalLengths"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.info.availableOpticalStabilization"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.info.hyperfocalDistance"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.info.minimumFocusDistance"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.info.shadingMapSize"

    const-class v4, Landroid/util/Size;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.info.focusDistanceCalibration"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_FOCUS_DISTANCE_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.facing"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.poseRotation"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_POSE_ROTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.poseTranslation"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.intrinsicCalibration"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.radialDistortion"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_RADIAL_DISTORTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.poseReference"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_POSE_REFERENCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.distortion"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_DISTORTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.distortionMaximumResolution"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_DISTORTION_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.lens.intrinsicCalibrationMaximumResolution"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INTRINSIC_CALIBRATION_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.noiseReduction.availableNoiseReductionModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.quirks.usePartialResult"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->QUIRKS_USE_PARTIAL_RESULT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.maxNumOutputStreams"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.maxNumOutputRaw"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.maxNumOutputProc"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.maxNumOutputProcStalling"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.maxNumInputStreams"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_INPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.pipelineMaxDepth"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.partialResultCount"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.availableCapabilities"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.availableRequestKeys"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.availableResultKeys"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.availableCharacteristicsKeys"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.availableSessionKeys"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_SESSION_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.availablePhysicalCameraRequestKeys"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_PHYSICAL_CAMERA_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.characteristicKeysNeedingPermission"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_CHARACTERISTIC_KEYS_NEEDING_PERMISSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.availableDynamicRangeProfiles"

    const-class v3, Landroid/hardware/camera2/params/DynamicRangeProfiles;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.availableDynamicRangeProfilesMap"

    const-class v3, [J

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.recommendedTenBitDynamicRangeProfile"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.availableColorSpaceProfiles"

    const-class v4, Landroid/hardware/camera2/params/ColorSpaceProfiles;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_COLOR_SPACE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.request.availableColorSpaceProfilesMap"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_COLOR_SPACE_PROFILES_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableFormats"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableJpegMinDurations"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_JPEG_MIN_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableJpegSizes"

    const-class v4, [Landroid/util/Size;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_JPEG_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableMaxDigitalZoom"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableProcessedMinDurations"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_PROCESSED_MIN_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableProcessedSizes"

    const-class v4, [Landroid/util/Size;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_PROCESSED_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableInputOutputFormatsMap"

    const-class v4, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableStreamConfigurations"

    const-class v4, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableMinFrameDurations"

    const-class v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableStallDurations"

    const-class v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.streamConfigurationMap"

    const-class v4, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.croppingType"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableRecommendedStreamConfigurations"

    const-class v4, [Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_RECOMMENDED_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableRecommendedInputOutputFormatsMap"

    const-class v4, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_RECOMMENDED_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.mandatoryStreamCombinations"

    const-class v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.mandatoryConcurrentStreamCombinations"

    const-class v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_CONCURRENT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableRotateAndCropModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_ROTATE_AND_CROP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.defaultSecureImageSize"

    const-class v4, Landroid/util/Size;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_DEFAULT_SECURE_IMAGE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.physicalCameraMultiResolutionStreamConfigurations"

    const-class v4, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.multiResolutionStreamConfigurationMap"

    const-class v4, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableStreamConfigurationsMaximumResolution"

    const-class v4, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableMinFrameDurationsMaximumResolution"

    const-class v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableStallDurationsMaximumResolution"

    const-class v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.streamConfigurationMapMaximumResolution"

    const-class v4, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableInputOutputFormatsMapMaximumResolution"

    const-class v4, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.mandatoryMaximumResolutionStreamCombinations"

    const-class v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_MAXIMUM_RESOLUTION_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.mandatoryTenBitOutputStreamCombinations"

    const-class v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_TEN_BIT_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.mandatoryPreviewStabilizationOutputStreamCombinations"

    const-class v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_PREVIEW_STABILIZATION_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.multiResolutionStreamSupported"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.availableStreamUseCases"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_USE_CASES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.scaler.mandatoryUseCaseStreamCombinations"

    const-class v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_USE_CASE_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.activeArraySize"

    const-class v4, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$7;

    invoke-direct {v1}, Landroid/hardware/camera2/CameraCharacteristics$7;-><init>()V

    const-string v4, "android.sensor.info.sensitivityRange"

    invoke-direct {v0, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.colorFilterArrangement"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$8;

    invoke-direct {v1}, Landroid/hardware/camera2/CameraCharacteristics$8;-><init>()V

    const-string v4, "android.sensor.info.exposureTimeRange"

    invoke-direct {v0, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.maxFrameDuration"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.physicalSize"

    const-class v4, Landroid/util/SizeF;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.pixelArraySize"

    const-class v4, Landroid/util/Size;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.whiteLevel"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.timestampSource"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.lensShadingApplied"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_LENS_SHADING_APPLIED:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.preCorrectionActiveArraySize"

    const-class v4, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.activeArraySizeMaximumResolution"

    const-class v4, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.pixelArraySizeMaximumResolution"

    const-class v4, Landroid/util/Size;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.preCorrectionActiveArraySizeMaximumResolution"

    const-class v4, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.info.binningFactor"

    const-class v4, Landroid/util/Size;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_BINNING_FACTOR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.referenceIlluminant1"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.referenceIlluminant2"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.calibrationTransform1"

    const-class v4, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.calibrationTransform2"

    const-class v4, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.colorTransform1"

    const-class v4, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.colorTransform2"

    const-class v4, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.forwardMatrix1"

    const-class v4, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_FORWARD_MATRIX1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.forwardMatrix2"

    const-class v4, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_FORWARD_MATRIX2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.blackLevelPattern"

    const-class v4, Landroid/hardware/camera2/params/BlackLevelPattern;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.maxAnalogSensitivity"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.orientation"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.availableTestPatternModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.opticalBlackRegions"

    const-class v4, [Landroid/graphics/Rect;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_OPTICAL_BLACK_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sensor.readoutTimestamp"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_READOUT_TIMESTAMP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.shading.availableModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SHADING_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.statistics.info.availableFaceDetectModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.statistics.info.maxFaceCount"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.statistics.info.availableHotPixelMapModes"

    const-class v4, [Z

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_HOT_PIXEL_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.statistics.info.availableLensShadingMapModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_LENS_SHADING_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.statistics.info.availableOisDataModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_OIS_DATA_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.tonemap.maxCurvePoints"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->TONEMAP_MAX_CURVE_POINTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.tonemap.availableToneMapModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->TONEMAP_AVAILABLE_TONE_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.led.availableLeds"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LED_AVAILABLE_LEDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.info.supportedHardwareLevel"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.info.version"

    const-class v4, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_VERSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.info.deviceStateSensorOrientationMap"

    const-class v4, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.info.deviceStateOrientations"

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_ORIENTATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.info.sessionConfigurationQueryVersion"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SESSION_CONFIGURATION_QUERY_VERSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.info.deviceId"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.sync.maxLatency"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.reprocess.maxCaptureStall"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REPROCESS_MAX_CAPTURE_STALL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableDepthStreamConfigurations"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableDepthMinFrameDurations"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableDepthStallDurations"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.depthIsExclusive"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_DEPTH_IS_EXCLUSIVE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableRecommendedDepthStreamConfigurations"

    const-class v3, [Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_RECOMMENDED_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableDynamicDepthStreamConfigurations"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableDynamicDepthMinFrameDurations"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableDynamicDepthStallDurations"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableDepthStreamConfigurationsMaximumResolution"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableDepthMinFrameDurationsMaximumResolution"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableDepthStallDurationsMaximumResolution"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableDynamicDepthStreamConfigurationsMaximumResolution"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableDynamicDepthMinFrameDurationsMaximumResolution"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.depth.availableDynamicDepthStallDurationsMaximumResolution"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.logicalMultiCamera.physicalIds"

    const-class v3, [B

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LOGICAL_MULTI_CAMERA_PHYSICAL_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.logicalMultiCamera.sensorSyncType"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LOGICAL_MULTI_CAMERA_SENSOR_SYNC_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.distortionCorrection.availableModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DISTORTION_CORRECTION_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.heic.availableHeicStreamConfigurations"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.heic.availableHeicMinFrameDurations"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.heic.availableHeicStallDurations"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.heic.availableHeicStreamConfigurationsMaximumResolution"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.heic.availableHeicMinFrameDurationsMaximumResolution"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.heic.availableHeicStallDurationsMaximumResolution"

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.automotive.lens.facing"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->AUTOMOTIVE_LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.automotive.location"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->AUTOMOTIVE_LOCATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.jpegr.availableJpegRStreamConfigurations"

    const-class v2, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.jpegr.availableJpegRMinFrameDurations"

    const-class v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.jpegr.availableJpegRStallDurations"

    const-class v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.jpegr.availableJpegRStreamConfigurationsMaximumResolution"

    const-class v2, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.jpegr.availableJpegRMinFrameDurationsMaximumResolution"

    const-class v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.jpegr.availableJpegRStallDurationsMaximumResolution"

    const-class v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$9;

    invoke-direct {v1}, Landroid/hardware/camera2/CameraCharacteristics$9;-><init>()V

    const-string v2, "android.efv.paddingZoomFactorRange"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->EFV_PADDING_ZOOM_FACTOR_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/util/Map$Entry;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->AVAILABLE_SESSION_CHARACTERISTICS_KEYS_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-void
.end method

.method static synthetic blacklist lambda$getAvailableSessionCharacteristicsKeys$0(Ljava/lang/Integer;Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist overrideProperty(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_ORIENTATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;

    iget-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    nop

    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/CameraCharacteristics;->mFoldedDeviceState:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->getSensorOrientation(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1

    monitor-exit v1

    return-object v2

    :cond_1
    const-string v3, "CameraCharacteristics"

    const-string v4, "No valid device state to orientation mapping! Using default!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->overrideProperty(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public whitelist getAvailableCaptureRequestKeys()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableRequestKeys:Ljava/util/List;

    if-nez v0, :cond_1

    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_0

    const-class v3, Landroid/hardware/camera2/CaptureRequest;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableRequestKeys:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "android.request.availableRequestKeys must be non-null in the characteristics"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableRequestKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAvailableCaptureResultKeys()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableResultKeys:Ljava/util/List;

    if-nez v0, :cond_1

    const-class v0, Landroid/hardware/camera2/CaptureResult$Key;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_0

    const-class v3, Landroid/hardware/camera2/CaptureResult;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableResultKeys:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "android.request.availableResultKeys must be non-null in the characteristics"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableResultKeys:Ljava/util/List;

    return-object v0
.end method

.method blacklist getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TTKey;>;[IZ)",
            "Ljava/util/List<",
            "TTKey;>;"
        }
    .end annotation

    const-class v0, Landroid/hardware/camera2/CameraMetadata;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Landroid/hardware/camera2/CameraMetadata;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys(Ljava/lang/Class;Ljava/lang/Class;Landroid/hardware/camera2/CameraMetadata;[IZ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "metadataClass must be a subclass of CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "metadataClass must be a strict subclass of CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getAvailablePhysicalCameraRequestKeys()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailablePhysicalRequestKeys:Ljava/util/List;

    if-nez v0, :cond_1

    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_PHYSICAL_CAMERA_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-nez v2, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    const-class v3, Landroid/hardware/camera2/CaptureRequest;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailablePhysicalRequestKeys:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailablePhysicalRequestKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAvailableSessionCharacteristicsKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableSessionCharacteristicsKeys:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableSessionCharacteristicsKeys:Ljava/util/List;

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SESSION_CONFIGURATION_QUERY_VERSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableSessionCharacteristicsKeys:Ljava/util/List;

    iget-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableSessionCharacteristicsKeys:Ljava/util/List;

    return-object v1

    :cond_1
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->AVAILABLE_SESSION_CHARACTERISTICS_KEYS_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/hardware/camera2/CameraCharacteristics$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/hardware/camera2/CameraCharacteristics$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableSessionCharacteristicsKeys:Ljava/util/List;

    iget-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableSessionCharacteristicsKeys:Ljava/util/List;

    return-object v1
.end method

.method public whitelist getAvailableSessionKeys()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableSessionKeys:Ljava/util/List;

    if-nez v0, :cond_1

    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_SESSION_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-nez v2, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    const-class v3, Landroid/hardware/camera2/CaptureRequest;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableSessionKeys:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableSessionKeys:Ljava/util/List;

    return-object v0
.end method

.method blacklist getDeviceStateListener()Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/CameraCharacteristics$1;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    return-object v0
.end method

.method protected greylist-max-o getKeyClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    return-object v1
.end method

.method public whitelist getKeys()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeys:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeys:Ljava/util/List;

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeyClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys(Ljava/lang/Class;Ljava/lang/Class;Landroid/hardware/camera2/CameraMetadata;[IZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeys:Ljava/util/List;

    iget-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeys:Ljava/util/List;

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "android.request.availableCharacteristicsKeys must be non-null in the characteristics"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public whitelist getKeysNeedingPermission()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeysNeedingPermission:Ljava/util/List;

    if-nez v0, :cond_1

    const-class v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_CHARACTERISTIC_KEYS_NEEDING_PERMISSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-nez v2, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeysNeedingPermission:Ljava/util/List;

    iget-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeysNeedingPermission:Ljava/util/List;

    return-object v3

    :cond_0
    nop

    const-class v3, Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeysNeedingPermission:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeysNeedingPermission:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 2

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v0
.end method

.method public whitelist getPhysicalCameraIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o getProtected(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist getProtected(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->getProtected(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getRecommendedStreamConfigurationMap(I)Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_3

    const/16 v0, 0x20

    if-ge p1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mRecommendedConfigurations:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getRecommendedStreamConfigurations()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mRecommendedConfigurations:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mRecommendedConfigurations:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mRecommendedConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid use case: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetAvailableSamsungKeyList(Ljava/lang/Class;Ljava/lang/Class;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TTKey;>;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;)",
            "Ljava/util/List<",
            "TTKey;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
