.class public final Landroid/hardware/camera2/CaptureRequest;
.super Landroid/hardware/camera2/CameraMetadata;
.source "CaptureRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CaptureRequest$Key;,
        Landroid/hardware/camera2/CaptureRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/CameraMetadata<",
        "Landroid/hardware/camera2/CaptureRequest$Key<",
        "*>;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final whitelist BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/hardware/camera2/params/RggbChannelVector;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_AE_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_AF_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AUTOFRAMING:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_AWB_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_EXTENDED_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_SETTINGS_OVERRIDE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_AUTO_ZOOM:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_MAX_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_ROTATE_VIEWPORT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_TRANSLATE_VIEWPORT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist EXTENSION_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLASH_STRENGTH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[D>;"
        }
    .end annotation
.end field

.field public static final whitelist JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LED_TRANSMIT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_FILTER_DENSITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_ID:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_TYPE_COUNT:I = 0x3

.field public static final blacklist REQUEST_TYPE_REGULAR:I = 0x0

.field public static final blacklist REQUEST_TYPE_REPROCESS:I = 0x1

.field public static final blacklist REQUEST_TYPE_ZSL_STILL:I = 0x2

.field public static final whitelist SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_CROP_REGION_SET:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_ROTATE_AND_CROP:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_TEST_PATTERN_DATA:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SET_TAG_STRING_PREFIX:Ljava/lang/String; = "android.hardware.camera2.CaptureRequest.setTag."

.field public static final whitelist SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/hardware/camera2/params/TonemapCurve;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final blacklist TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final blacklist TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o mEmptySurfaceSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field private greylist-max-o mIsPartOfCHSRequestList:Z

.field private greylist-max-o mIsReprocess:Z

.field private greylist-max-o mLogicalCameraId:Ljava/lang/String;

.field private greylist-max-r mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field private final greylist-max-o mPhysicalCameraSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReleaseSurfaces:Z

.field private greylist-max-o mReprocessableSessionId:I

.field private blacklist mRequestType:I

.field private greylist-max-o mStreamIdxArray:[I

.field private greylist-max-o mSurfaceConverted:Z

.field private greylist-max-o mSurfaceIdxArray:[I

.field private final greylist-max-o mSurfaceSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSurfacesLock:Ljava/lang/Object;

.field private greylist-max-o mUserTag:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLogicalCameraSettings(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalCameraSettings(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceSet(Landroid/hardware/camera2/CaptureRequest;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPartOfCHSRequestList(Landroid/hardware/camera2/CaptureRequest;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserTag(Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreadFromParcel(Landroid/hardware/camera2/CaptureRequest;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->mEmptySurfaceSet:Landroid/util/ArraySet;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$1;

    invoke-direct {v0}, Landroid/hardware/camera2/CaptureRequest$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.colorCorrection.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.colorCorrection.transform"

    const-class v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.colorCorrection.gains"

    const-class v2, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.colorCorrection.aberrationMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aeAntibandingMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aeExposureCompensation"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aeLock"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aeMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aeRegions"

    const-class v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v1, Landroid/hardware/camera2/CaptureRequest$2;

    invoke-direct {v1}, Landroid/hardware/camera2/CaptureRequest$2;-><init>()V

    const-string v2, "android.control.aeTargetFpsRange"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aePrecaptureTrigger"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.afMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.afRegions"

    const-class v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.afTrigger"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.awbLock"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.awbMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.awbRegions"

    const-class v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.captureIntent"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.effectMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.sceneMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.videoStabilizationMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.postRawSensitivityBoost"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.enableZsl"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.extendedSceneMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EXTENDED_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.zoomRatio"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.afRegionsSet"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.aeRegionsSet"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.awbRegionsSet"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.settingsOverride"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SETTINGS_OVERRIDE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.control.autoframing"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AUTOFRAMING:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.edge.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.flash.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.flash.strengthLevel"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_STRENGTH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.hotPixel.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.gpsLocation"

    const-class v2, Landroid/location/Location;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.gpsCoordinates"

    const-class v2, [D

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.gpsProcessingMethod"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.gpsTimestamp"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.orientation"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.quality"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.thumbnailQuality"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.jpeg.thumbnailSize"

    const-class v2, Landroid/util/Size;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.lens.aperture"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.lens.filterDensity"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FILTER_DENSITY:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.lens.focalLength"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.lens.focusDistance"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.lens.opticalStabilizationMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.noiseReduction.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.request.id"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->REQUEST_ID:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.scaler.cropRegion"

    const-class v2, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.scaler.rotateAndCrop"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_ROTATE_AND_CROP:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.scaler.cropRegionSet"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.sensor.exposureTime"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.sensor.frameDuration"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.sensor.sensitivity"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.sensor.testPatternData"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_DATA:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.sensor.testPatternMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.sensor.pixelMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.shading.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.statistics.faceDetectMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.statistics.hotPixelMapMode"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.statistics.lensShadingMapMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.statistics.oisDataMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.curveBlue"

    const-class v2, [F

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.curveGreen"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.curveRed"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.curve"

    const-class v2, Landroid/hardware/camera2/params/TonemapCurve;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.gamma"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.tonemap.presetCurve"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.led.transmit"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LED_TRANSMIT:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.blackLevel.lock"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.reprocess.effectiveExposureFactor"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.distortionCorrection.mode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.extension.strength"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->EXTENSION_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.efv.paddingZoomFactor"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->EFV_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.efv.autoZoom"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->EFV_AUTO_ZOOM:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.efv.maxPaddingZoomFactor"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->EFV_MAX_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.efv.stabilizationMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->EFV_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v1, Landroid/hardware/camera2/CaptureRequest$3;

    invoke-direct {v1}, Landroid/hardware/camera2/CaptureRequest$3;-><init>()V

    const-string v2, "android.efv.translateViewport"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->EFV_TRANSLATE_VIEWPORT:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "android.efv.rotateViewport"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->EFV_ROTATE_VIEWPORT:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    const-string v0, "CaptureRequest-JV"

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/CaptureRequest;->mRequestType:I

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReleaseSurfaces:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    iput v1, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/CaptureRequest-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/CaptureRequest;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 6

    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    const-string v0, "CaptureRequest-JV"

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/CaptureRequest;->mRequestType:I

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReleaseSurfaces:Z

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    iget-object v0, p1, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest;->setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-boolean v0, p1, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    iget-boolean v0, p1, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    iget v0, p1, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    iput v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    iget-object v0, p1, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    const-string v0, "CaptureRequest-JV"

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/CaptureRequest;->mRequestType:I

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReleaseSurfaces:Z

    if-eqz p5, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Create a reprocess capture request with with more than one physical camera is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p4, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v5, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest;->setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iput-boolean p2, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    if-eqz p2, :cond_4

    if-eq p3, v1, :cond_3

    iput p3, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create a reprocess capture request with an invalid session ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput v1, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    :goto_2
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private greylist-max-o equals(Landroid/hardware/camera2/CaptureRequest;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    iget-boolean v1, p1, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    iget v1, p1, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureRequest;->setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    invoke-virtual {v3, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v4, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    const-class v4, Landroid/view/Surface;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v5, Landroid/view/Surface;

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->surfaceLeakFix()Z

    move-result v5

    if-eqz v5, :cond_2

    iput-boolean v3, p0, Landroid/hardware/camera2/CaptureRequest;->mReleaseSurfaces:Z

    :cond_2
    array-length v5, v4

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    move-object v8, v7

    check-cast v8, Landroid/view/Surface;

    iget-object v9, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_6

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_4

    move v2, v3

    :cond_4
    move v1, v2

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    :cond_5
    return-void

    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading cached CaptureRequest is not supported"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Physical camera count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should always be positive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public greylist-max-o containsTarget(Landroid/view/Surface;)Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o convertSurfaceToStreamId(Landroid/util/SparseArray;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v0, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    if-eqz v0, :cond_0

    const-string v0, "CaptureRequest-JV"

    const-string v4, "Cannot convert already converted surfaces!"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :cond_0
    iget-object v0, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    iget-object v0, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    const/4 v0, 0x0

    iget-object v4, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 v10, 0x0

    invoke-virtual {v9}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/Surface;

    if-ne v5, v12, :cond_1

    const/4 v6, 0x1

    iget-object v11, v1, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    aput v8, v11, v0

    iget-object v11, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    aput v10, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    nop

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    if-nez v6, :cond_8

    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceId(Landroid/view/Surface;)J

    move-result-wide v7

    const/4 v9, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_8

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 v12, 0x0

    invoke-virtual {v11}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/Surface;

    invoke-static {v14}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceId(Landroid/view/Surface;)J

    move-result-wide v15

    cmp-long v15, v7, v15

    if-nez v15, :cond_5

    const/4 v6, 0x1

    iget-object v13, v1, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    aput v10, v13, v0

    iget-object v13, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    aput v12, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_5
    nop

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_6
    :goto_7
    if-eqz v6, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    :goto_8
    if-eqz v6, :cond_9

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    iput-object v4, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v7, "CaptureRequest contains unconfigured Input/Output Surface!"

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CaptureRequest;->equals(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReleaseSurfaces:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o getKeyClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    return-object v1
.end method

.method public whitelist getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    invoke-super {p0}, Landroid/hardware/camera2/CameraMetadata;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getLogicalCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 2

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v0
.end method

.method protected greylist-max-o getProtected(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

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

    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->getProtected(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getReprocessableSessionId()I
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Getting the reprocessable session ID for a non-reprocess capture request is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRequestType()I
    .locals 5

    iget v0, p0, Landroid/hardware/camera2/CaptureRequest;->mRequestType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/CaptureRequest;->mRequestType:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Landroid/hardware/camera2/CaptureRequest;->mRequestType:I

    :cond_3
    :goto_1
    iget v0, p0, Landroid/hardware/camera2/CaptureRequest;->mRequestType:I

    return v0
.end method

.method public whitelist getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist getTargets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isPartOfCRequestList()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    return v0
.end method

.method public whitelist isReprocess()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    return v0
.end method

.method public greylist-max-o recoverStreamIdToSurface()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    if-nez v1, :cond_0

    const-string v1, "CaptureRequest-JV"

    const-string v2, "Cannot convert already converted surfaces!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    iput-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mPhysicalCameraSettings:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CaptureRequest;->mLogicalCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v3, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfacesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->mEmptySurfaceSet:Landroid/util/ArraySet;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Landroid/util/ArraySet;

    :goto_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/Surface;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-boolean v3, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceConverted:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    array-length v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    array-length v5, v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Landroid/hardware/camera2/CaptureRequest;->mStreamIdxArray:[I

    aget v5, v5, v3

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceIdxArray:[I

    aget v5, v5, v3

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "android.hardware.camera2.CaptureRequest.setTag."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const-string v2, "android.hardware.camera2.CaptureRequest.setTag."

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    goto :goto_5

    :cond_6
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Physical camera settings map must contain a key for the logical camera id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
