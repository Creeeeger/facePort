.class public final Lcom/android/internal/camera/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ANALYTICS_24Q3:Ljava/lang/String; = "com.android.internal.camera.flags.analytics_24q3"

.field public static final blacklist FLAG_CACHE_PERMISSION_SERVICES:Ljava/lang/String; = "com.android.internal.camera.flags.cache_permission_services"

.field public static final blacklist FLAG_CALCULATE_PERF_OVERRIDE_DURING_SESSION_SUPPORT:Ljava/lang/String; = "com.android.internal.camera.flags.calculate_perf_override_during_session_support"

.field public static final blacklist FLAG_CAMERA_AE_MODE_LOW_LIGHT_BOOST:Ljava/lang/String; = "com.android.internal.camera.flags.camera_ae_mode_low_light_boost"

.field public static final blacklist FLAG_CAMERA_DEVICE_SETUP:Ljava/lang/String; = "com.android.internal.camera.flags.camera_device_setup"

.field public static final blacklist FLAG_CAMERA_EXTENSIONS_CHARACTERISTICS_GET:Ljava/lang/String; = "com.android.internal.camera.flags.camera_extensions_characteristics_get"

.field public static final blacklist FLAG_CAMERA_HSUM_PERMISSION:Ljava/lang/String; = "com.android.internal.camera.flags.camera_hsum_permission"

.field public static final blacklist FLAG_CAMERA_MANUAL_FLASH_STRENGTH_CONTROL:Ljava/lang/String; = "com.android.internal.camera.flags.camera_manual_flash_strength_control"

.field public static final blacklist FLAG_CAMERA_PRIVACY_ALLOWLIST:Ljava/lang/String; = "com.android.internal.camera.flags.camera_privacy_allowlist"

.field public static final blacklist FLAG_CHECK_SESSION_SUPPORT_BEFORE_SESSION_CHAR:Ljava/lang/String; = "com.android.internal.camera.flags.check_session_support_before_session_char"

.field public static final blacklist FLAG_CONCERT_MODE:Ljava/lang/String; = "com.android.internal.camera.flags.concert_mode"

.field public static final blacklist FLAG_CONCERT_MODE_API:Ljava/lang/String; = "com.android.internal.camera.flags.concert_mode_api"

.field public static final blacklist FLAG_DELAY_LAZY_HAL_INSTANTIATION:Ljava/lang/String; = "com.android.internal.camera.flags.delay_lazy_hal_instantiation"

.field public static final blacklist FLAG_EXTENSION_10_BIT:Ljava/lang/String; = "com.android.internal.camera.flags.extension_10_bit"

.field public static final blacklist FLAG_FEATURE_COMBINATION_QUERY:Ljava/lang/String; = "com.android.internal.camera.flags.feature_combination_query"

.field public static final blacklist FLAG_INJECT_SESSION_PARAMS:Ljava/lang/String; = "com.android.internal.camera.flags.inject_session_params"

.field public static final blacklist FLAG_LAZY_AIDL_WAIT_FOR_SERVICE:Ljava/lang/String; = "com.android.internal.camera.flags.lazy_aidl_wait_for_service"

.field public static final blacklist FLAG_LOG_ULTRAWIDE_USAGE:Ljava/lang/String; = "com.android.internal.camera.flags.log_ultrawide_usage"

.field public static final blacklist FLAG_LOG_ZOOM_OVERRIDE_USAGE:Ljava/lang/String; = "com.android.internal.camera.flags.log_zoom_override_usage"

.field public static final blacklist FLAG_MULTIRESOLUTION_IMAGEREADER_USAGE_CONFIG:Ljava/lang/String; = "com.android.internal.camera.flags.multiresolution_imagereader_usage_config"

.field public static final blacklist FLAG_MULTI_RES_RAW_REPROCESSING:Ljava/lang/String; = "com.android.internal.camera.flags.multi_res_raw_reprocessing"

.field public static final blacklist FLAG_REALTIME_PRIORITY_BUMP:Ljava/lang/String; = "com.android.internal.camera.flags.realtime_priority_bump"

.field public static final blacklist FLAG_RETURN_BUFFERS_OUTSIDE_LOCKS:Ljava/lang/String; = "com.android.internal.camera.flags.return_buffers_outside_locks"

.field public static final blacklist FLAG_SESSION_HAL_BUF_MANAGER:Ljava/lang/String; = "com.android.internal.camera.flags.session_hal_buf_manager"

.field public static final blacklist FLAG_SINGLE_THREAD_EXECUTOR:Ljava/lang/String; = "com.android.internal.camera.flags.single_thread_executor"

.field public static final blacklist FLAG_SURFACE_IPC:Ljava/lang/String; = "com.android.internal.camera.flags.surface_ipc"

.field public static final blacklist FLAG_SURFACE_LEAK_FIX:Ljava/lang/String; = "com.android.internal.camera.flags.surface_leak_fix"

.field public static final blacklist FLAG_USE_RO_BOARD_API_LEVEL_FOR_VNDK_VERSION:Ljava/lang/String; = "com.android.internal.camera.flags.use_ro_board_api_level_for_vndk_version"

.field public static final blacklist FLAG_USE_SYSTEM_API_FOR_VNDK_VERSION:Ljava/lang/String; = "com.android.internal.camera.flags.use_system_api_for_vndk_version"

.field public static final blacklist FLAG_WATCH_FOREGROUND_CHANGES:Ljava/lang/String; = "com.android.internal.camera.flags.watch_foreground_changes"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/camera/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist analytics24q3()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->analytics24q3()Z

    move-result v0

    return v0
.end method

.method public static greylist cachePermissionServices()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cachePermissionServices()Z

    move-result v0

    return v0
.end method

.method public static greylist calculatePerfOverrideDuringSessionSupport()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->calculatePerfOverrideDuringSessionSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraAeModeLowLightBoost()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraAeModeLowLightBoost()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraDeviceSetup()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraDeviceSetup()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraExtensionsCharacteristicsGet()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraExtensionsCharacteristicsGet()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraHsumPermission()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraHsumPermission()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraManualFlashStrengthControl()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraManualFlashStrengthControl()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraPrivacyAllowlist()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->cameraPrivacyAllowlist()Z

    move-result v0

    return v0
.end method

.method public static greylist checkSessionSupportBeforeSessionChar()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->checkSessionSupportBeforeSessionChar()Z

    move-result v0

    return v0
.end method

.method public static greylist concertMode()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->concertMode()Z

    move-result v0

    return v0
.end method

.method public static greylist concertModeApi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->concertModeApi()Z

    move-result v0

    return v0
.end method

.method public static greylist delayLazyHalInstantiation()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->delayLazyHalInstantiation()Z

    move-result v0

    return v0
.end method

.method public static greylist extension10Bit()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->extension10Bit()Z

    move-result v0

    return v0
.end method

.method public static greylist featureCombinationQuery()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->featureCombinationQuery()Z

    move-result v0

    return v0
.end method

.method public static greylist injectSessionParams()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->injectSessionParams()Z

    move-result v0

    return v0
.end method

.method public static greylist lazyAidlWaitForService()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->lazyAidlWaitForService()Z

    move-result v0

    return v0
.end method

.method public static greylist logUltrawideUsage()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->logUltrawideUsage()Z

    move-result v0

    return v0
.end method

.method public static greylist logZoomOverrideUsage()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->logZoomOverrideUsage()Z

    move-result v0

    return v0
.end method

.method public static greylist multiResRawReprocessing()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->multiResRawReprocessing()Z

    move-result v0

    return v0
.end method

.method public static greylist multiresolutionImagereaderUsageConfig()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->multiresolutionImagereaderUsageConfig()Z

    move-result v0

    return v0
.end method

.method public static greylist realtimePriorityBump()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->realtimePriorityBump()Z

    move-result v0

    return v0
.end method

.method public static greylist returnBuffersOutsideLocks()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->returnBuffersOutsideLocks()Z

    move-result v0

    return v0
.end method

.method public static greylist sessionHalBufManager()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->sessionHalBufManager()Z

    move-result v0

    return v0
.end method

.method public static greylist singleThreadExecutor()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->singleThreadExecutor()Z

    move-result v0

    return v0
.end method

.method public static greylist surfaceIpc()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->surfaceIpc()Z

    move-result v0

    return v0
.end method

.method public static greylist surfaceLeakFix()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->surfaceLeakFix()Z

    move-result v0

    return v0
.end method

.method public static greylist useRoBoardApiLevelForVndkVersion()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->useRoBoardApiLevelForVndkVersion()Z

    move-result v0

    return v0
.end method

.method public static greylist useSystemApiForVndkVersion()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->useSystemApiForVndkVersion()Z

    move-result v0

    return v0
.end method

.method public static greylist watchForegroundChanges()Z
    .locals 1

    sget-object v0, Lcom/android/internal/camera/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/camera/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/camera/flags/FeatureFlags;->watchForegroundChanges()Z

    move-result v0

    return v0
.end method
