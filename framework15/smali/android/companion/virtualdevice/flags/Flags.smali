.class public final Landroid/companion/virtualdevice/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/companion/virtualdevice/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CAMERA_DEVICE_AWARENESS:Ljava/lang/String; = "android.companion.virtualdevice.flags.camera_device_awareness"

.field public static final blacklist FLAG_DEVICE_AWARE_DRM:Ljava/lang/String; = "android.companion.virtualdevice.flags.device_aware_drm"

.field public static final blacklist FLAG_DEVICE_AWARE_RECORD_AUDIO_PERMISSION:Ljava/lang/String; = "android.companion.virtualdevice.flags.device_aware_record_audio_permission"

.field public static final blacklist FLAG_INTENT_INTERCEPTION_ACTION_MATCHING_FIX:Ljava/lang/String; = "android.companion.virtualdevice.flags.intent_interception_action_matching_fix"

.field public static final blacklist FLAG_METRICS_COLLECTION:Ljava/lang/String; = "android.companion.virtualdevice.flags.metrics_collection"

.field public static final blacklist FLAG_VIRTUAL_CAMERA_SERVICE_DISCOVERY:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_camera_service_discovery"

.field public static final blacklist FLAG_VIRTUAL_DISPLAY_MULTI_WINDOW_MODE_SUPPORT:Ljava/lang/String; = "android.companion.virtualdevice.flags.virtual_display_multi_window_mode_support"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/virtualdevice/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/companion/virtualdevice/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Landroid/companion/virtualdevice/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist cameraDeviceAwareness()Z
    .locals 1

    sget-object v0, Landroid/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Landroid/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/companion/virtualdevice/flags/FeatureFlags;->cameraDeviceAwareness()Z

    move-result v0

    return v0
.end method

.method public static greylist deviceAwareDrm()Z
    .locals 1

    sget-object v0, Landroid/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Landroid/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/companion/virtualdevice/flags/FeatureFlags;->deviceAwareDrm()Z

    move-result v0

    return v0
.end method

.method public static greylist deviceAwareRecordAudioPermission()Z
    .locals 1

    sget-object v0, Landroid/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Landroid/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/companion/virtualdevice/flags/FeatureFlags;->deviceAwareRecordAudioPermission()Z

    move-result v0

    return v0
.end method

.method public static greylist intentInterceptionActionMatchingFix()Z
    .locals 1

    sget-object v0, Landroid/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Landroid/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/companion/virtualdevice/flags/FeatureFlags;->intentInterceptionActionMatchingFix()Z

    move-result v0

    return v0
.end method

.method public static greylist metricsCollection()Z
    .locals 1

    sget-object v0, Landroid/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Landroid/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/companion/virtualdevice/flags/FeatureFlags;->metricsCollection()Z

    move-result v0

    return v0
.end method

.method public static greylist virtualCameraServiceDiscovery()Z
    .locals 1

    sget-object v0, Landroid/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Landroid/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/companion/virtualdevice/flags/FeatureFlags;->virtualCameraServiceDiscovery()Z

    move-result v0

    return v0
.end method

.method public static greylist virtualDisplayMultiWindowModeSupport()Z
    .locals 1

    sget-object v0, Landroid/companion/virtualdevice/flags/Flags;->FEATURE_FLAGS:Landroid/companion/virtualdevice/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/companion/virtualdevice/flags/FeatureFlags;->virtualDisplayMultiWindowModeSupport()Z

    move-result v0

    return v0
.end method
