.class public final Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags; = null

.field public static final blacklist FLAG_ADPF_FMQ_EAGER_SEND:Ljava/lang/String; = "android.os.adpf_fmq_eager_send"

.field public static final blacklist FLAG_ADPF_GPU_REPORT_ACTUAL_WORK_DURATION:Ljava/lang/String; = "android.os.adpf_gpu_report_actual_work_duration"

.field public static final blacklist FLAG_ADPF_HWUI_GPU:Ljava/lang/String; = "android.os.adpf_hwui_gpu"

.field public static final blacklist FLAG_ADPF_MEASURE_DURING_INPUT_EVENT_BOOST:Ljava/lang/String; = "android.os.adpf_measure_during_input_event_boost"

.field public static final blacklist FLAG_ADPF_OBTAINVIEW_BOOST:Ljava/lang/String; = "android.os.adpf_obtainview_boost"

.field public static final blacklist FLAG_ADPF_PLATFORM_POWER_EFFICIENCY:Ljava/lang/String; = "android.os.adpf_platform_power_efficiency"

.field public static final blacklist FLAG_ADPF_PREFER_POWER_EFFICIENCY:Ljava/lang/String; = "android.os.adpf_prefer_power_efficiency"

.field public static final blacklist FLAG_ADPF_USE_FMQ_CHANNEL:Ljava/lang/String; = "android.os.adpf_use_fmq_channel"

.field public static final blacklist FLAG_ADPF_USE_FMQ_CHANNEL_FIXED:Ljava/lang/String; = "android.os.adpf_use_fmq_channel_fixed"

.field public static final blacklist FLAG_ALLOW_PRIVATE_PROFILE:Ljava/lang/String; = "android.os.allow_private_profile"

.field public static final blacklist FLAG_ALLOW_THERMAL_HEADROOM_THRESHOLDS:Ljava/lang/String; = "android.os.allow_thermal_headroom_thresholds"

.field public static final blacklist FLAG_ANDROID_OS_BUILD_VANILLA_ICE_CREAM:Ljava/lang/String; = "android.os.android_os_build_vanilla_ice_cream"

.field public static final blacklist FLAG_BATTERY_PART_STATUS_API:Ljava/lang/String; = "android.os.battery_part_status_api"

.field public static final blacklist FLAG_BATTERY_SAVER_SUPPORTED_CHECK_API:Ljava/lang/String; = "android.os.battery_saver_supported_check_api"

.field public static final blacklist FLAG_BATTERY_SERVICE_SUPPORT_CURRENT_ADB_COMMAND:Ljava/lang/String; = "android.os.battery_service_support_current_adb_command"

.field public static final blacklist FLAG_BUGREPORT_MODE_MAX_VALUE:Ljava/lang/String; = "android.os.bugreport_mode_max_value"

.field public static final blacklist FLAG_DISALLOW_CELLULAR_NULL_CIPHERS_RESTRICTION:Ljava/lang/String; = "android.os.disallow_cellular_null_ciphers_restriction"

.field public static final blacklist FLAG_MESSAGE_QUEUE_TAIL_TRACKING:Ljava/lang/String; = "android.os.message_queue_tail_tracking"

.field public static final blacklist FLAG_PERFETTO_SDK_TRACING:Ljava/lang/String; = "android.os.perfetto_sdk_tracing"

.field public static final blacklist FLAG_REMOVE_APP_PROFILER_PSS_COLLECTION:Ljava/lang/String; = "android.os.remove_app_profiler_pss_collection"

.field public static final blacklist FLAG_SECURITY_STATE_SERVICE:Ljava/lang/String; = "android.os.security_state_service"

.field public static final blacklist FLAG_STATE_OF_HEALTH_PUBLIC:Ljava/lang/String; = "android.os.state_of_health_public"

.field public static final blacklist FLAG_STORAGE_LIFETIME_API:Ljava/lang/String; = "android.os.storage_lifetime_api"

.field public static final blacklist FLAG_STRICT_MODE_RESTRICTED_NETWORK:Ljava/lang/String; = "android.os.strict_mode_restricted_network"

.field public static final blacklist FLAG_TELEMETRY_APIS_FRAMEWORK_INITIALIZATION:Ljava/lang/String; = "android.os.telemetry_apis_framework_initialization"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adpfFmqEagerSend()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->adpfFmqEagerSend()Z

    move-result v0

    return v0
.end method

.method public static blacklist adpfGpuReportActualWorkDuration()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->adpfGpuReportActualWorkDuration()Z

    move-result v0

    return v0
.end method

.method public static blacklist adpfHwuiGpu()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->adpfHwuiGpu()Z

    move-result v0

    return v0
.end method

.method public static blacklist adpfMeasureDuringInputEventBoost()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->adpfMeasureDuringInputEventBoost()Z

    move-result v0

    return v0
.end method

.method public static blacklist adpfObtainviewBoost()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->adpfObtainviewBoost()Z

    move-result v0

    return v0
.end method

.method public static blacklist adpfPlatformPowerEfficiency()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->adpfPlatformPowerEfficiency()Z

    move-result v0

    return v0
.end method

.method public static blacklist adpfPreferPowerEfficiency()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->adpfPreferPowerEfficiency()Z

    move-result v0

    return v0
.end method

.method public static blacklist adpfUseFmqChannel()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->adpfUseFmqChannel()Z

    move-result v0

    return v0
.end method

.method public static blacklist adpfUseFmqChannelFixed()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->adpfUseFmqChannelFixed()Z

    move-result v0

    return v0
.end method

.method public static blacklist allowPrivateProfile()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->allowPrivateProfile()Z

    move-result v0

    return v0
.end method

.method public static blacklist allowThermalHeadroomThresholds()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->allowThermalHeadroomThresholds()Z

    move-result v0

    return v0
.end method

.method public static blacklist androidOsBuildVanillaIceCream()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->androidOsBuildVanillaIceCream()Z

    move-result v0

    return v0
.end method

.method public static blacklist batteryPartStatusApi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->batteryPartStatusApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist batterySaverSupportedCheckApi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->batterySaverSupportedCheckApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist batteryServiceSupportCurrentAdbCommand()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->batteryServiceSupportCurrentAdbCommand()Z

    move-result v0

    return v0
.end method

.method public static blacklist bugreportModeMaxValue()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->bugreportModeMaxValue()Z

    move-result v0

    return v0
.end method

.method public static blacklist disallowCellularNullCiphersRestriction()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->disallowCellularNullCiphersRestriction()Z

    move-result v0

    return v0
.end method

.method public static blacklist messageQueueTailTracking()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->messageQueueTailTracking()Z

    move-result v0

    return v0
.end method

.method public static blacklist perfettoSdkTracing()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->perfettoSdkTracing()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeAppProfilerPssCollection()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->removeAppProfilerPssCollection()Z

    move-result v0

    return v0
.end method

.method public static blacklist securityStateService()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->securityStateService()Z

    move-result v0

    return v0
.end method

.method public static blacklist stateOfHealthPublic()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->stateOfHealthPublic()Z

    move-result v0

    return v0
.end method

.method public static blacklist storageLifetimeApi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->storageLifetimeApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist strictModeRestrictedNetwork()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->strictModeRestrictedNetwork()Z

    move-result v0

    return v0
.end method

.method public static blacklist telemetryApisFrameworkInitialization()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;->telemetryApisFrameworkInitialization()Z

    move-result v0

    return v0
.end method
