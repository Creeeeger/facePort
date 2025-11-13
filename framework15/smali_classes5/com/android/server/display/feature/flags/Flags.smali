.class public final Lcom/android/server/display/feature/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ALWAYS_ROTATE_DISPLAY_DEVICE:Ljava/lang/String; = "com.android.server.display.feature.flags.always_rotate_display_device"

.field public static final blacklist FLAG_AUTO_BRIGHTNESS_MODES:Ljava/lang/String; = "com.android.server.display.feature.flags.auto_brightness_modes"

.field public static final blacklist FLAG_BACK_UP_SMOOTH_DISPLAY_AND_FORCE_PEAK_REFRESH_RATE:Ljava/lang/String; = "com.android.server.display.feature.flags.back_up_smooth_display_and_force_peak_refresh_rate"

.field public static final blacklist FLAG_BRIGHTNESS_INT_RANGE_USER_PERCEPTION:Ljava/lang/String; = "com.android.server.display.feature.flags.brightness_int_range_user_perception"

.field public static final blacklist FLAG_BRIGHTNESS_WEAR_BEDTIME_MODE_CLAMPER:Ljava/lang/String; = "com.android.server.display.feature.flags.brightness_wear_bedtime_mode_clamper"

.field public static final blacklist FLAG_ENABLE_ADAPTIVE_TONE_IMPROVEMENTS_1:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_adaptive_tone_improvements_1"

.field public static final blacklist FLAG_ENABLE_ADAPTIVE_TONE_IMPROVEMENTS_2:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_adaptive_tone_improvements_2"

.field public static final blacklist FLAG_ENABLE_CONNECTED_DISPLAY_ERROR_HANDLING:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_connected_display_error_handling"

.field public static final blacklist FLAG_ENABLE_CONNECTED_DISPLAY_MANAGEMENT:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_connected_display_management"

.field public static final blacklist FLAG_ENABLE_DISPLAYS_REFRESH_RATES_SYNCHRONIZATION:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_displays_refresh_rates_synchronization"

.field public static final blacklist FLAG_ENABLE_DISPLAY_OFFLOAD:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_display_offload"

.field public static final blacklist FLAG_ENABLE_DISPLAY_RESOLUTION_RANGE_VOTING:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_display_resolution_range_voting"

.field public static final blacklist FLAG_ENABLE_HDR_CLAMPER:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_hdr_clamper"

.field public static final blacklist FLAG_ENABLE_MODE_LIMIT_FOR_EXTERNAL_DISPLAY:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_mode_limit_for_external_display"

.field public static final blacklist FLAG_ENABLE_NBM_CONTROLLER:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_nbm_controller"

.field public static final blacklist FLAG_ENABLE_PEAK_REFRESH_RATE_PHYSICAL_LIMIT:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_peak_refresh_rate_physical_limit"

.field public static final blacklist FLAG_ENABLE_PIXEL_ANISOTROPY_CORRECTION:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_pixel_anisotropy_correction"

.field public static final blacklist FLAG_ENABLE_PORT_IN_DISPLAY_LAYOUT:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_port_in_display_layout"

.field public static final blacklist FLAG_ENABLE_POWER_THROTTLING_CLAMPER:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_power_throttling_clamper"

.field public static final blacklist FLAG_ENABLE_RESTRICT_DISPLAY_MODES:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_restrict_display_modes"

.field public static final blacklist FLAG_ENABLE_SYNTHETIC_60HZ_MODES:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_synthetic_60hz_modes"

.field public static final blacklist FLAG_ENABLE_USER_PREFERRED_MODE_VOTE:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_user_preferred_mode_vote"

.field public static final blacklist FLAG_ENABLE_VSYNC_LOW_LIGHT_VOTE:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_vsync_low_light_vote"

.field public static final blacklist FLAG_ENABLE_VSYNC_LOW_POWER_VOTE:Ljava/lang/String; = "com.android.server.display.feature.flags.enable_vsync_low_power_vote"

.field public static final blacklist FLAG_EVEN_DIMMER:Ljava/lang/String; = "com.android.server.display.feature.flags.even_dimmer"

.field public static final blacklist FLAG_FAST_HDR_TRANSITIONS:Ljava/lang/String; = "com.android.server.display.feature.flags.fast_hdr_transitions"

.field public static final blacklist FLAG_IDLE_SCREEN_REFRESH_RATE_TIMEOUT:Ljava/lang/String; = "com.android.server.display.feature.flags.idle_screen_refresh_rate_timeout"

.field public static final blacklist FLAG_IGNORE_APP_PREFERRED_REFRESH_RATE_REQUEST:Ljava/lang/String; = "com.android.server.display.feature.flags.ignore_app_preferred_refresh_rate_request"

.field public static final blacklist FLAG_OFFLOAD_CONTROLS_DOZE_AUTO_BRIGHTNESS:Ljava/lang/String; = "com.android.server.display.feature.flags.offload_controls_doze_auto_brightness"

.field public static final blacklist FLAG_OFFLOAD_DOZE_OVERRIDE_HOLDS_WAKELOCK:Ljava/lang/String; = "com.android.server.display.feature.flags.offload_doze_override_holds_wakelock"

.field public static final blacklist FLAG_REFACTOR_DISPLAY_POWER_CONTROLLER:Ljava/lang/String; = "com.android.server.display.feature.flags.refactor_display_power_controller"

.field public static final blacklist FLAG_REFRESH_RATE_VOTING_TELEMETRY:Ljava/lang/String; = "com.android.server.display.feature.flags.refresh_rate_voting_telemetry"

.field public static final blacklist FLAG_RESOLUTION_BACKUP_RESTORE:Ljava/lang/String; = "com.android.server.display.feature.flags.resolution_backup_restore"

.field public static final blacklist FLAG_SENSOR_BASED_BRIGHTNESS_THROTTLING:Ljava/lang/String; = "com.android.server.display.feature.flags.sensor_based_brightness_throttling"

.field public static final blacklist FLAG_USE_FUSION_PROX_SENSOR:Ljava/lang/String; = "com.android.server.display.feature.flags.use_fusion_prox_sensor"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/display/feature/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist alwaysRotateDisplayDevice()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->alwaysRotateDisplayDevice()Z

    move-result v0

    return v0
.end method

.method public static greylist autoBrightnessModes()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->autoBrightnessModes()Z

    move-result v0

    return v0
.end method

.method public static greylist backUpSmoothDisplayAndForcePeakRefreshRate()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->backUpSmoothDisplayAndForcePeakRefreshRate()Z

    move-result v0

    return v0
.end method

.method public static greylist brightnessIntRangeUserPerception()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->brightnessIntRangeUserPerception()Z

    move-result v0

    return v0
.end method

.method public static greylist brightnessWearBedtimeModeClamper()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->brightnessWearBedtimeModeClamper()Z

    move-result v0

    return v0
.end method

.method public static greylist enableAdaptiveToneImprovements1()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableAdaptiveToneImprovements1()Z

    move-result v0

    return v0
.end method

.method public static greylist enableAdaptiveToneImprovements2()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableAdaptiveToneImprovements2()Z

    move-result v0

    return v0
.end method

.method public static greylist enableConnectedDisplayErrorHandling()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableConnectedDisplayErrorHandling()Z

    move-result v0

    return v0
.end method

.method public static greylist enableConnectedDisplayManagement()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableConnectedDisplayManagement()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDisplayOffload()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableDisplayOffload()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDisplayResolutionRangeVoting()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableDisplayResolutionRangeVoting()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDisplaysRefreshRatesSynchronization()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableDisplaysRefreshRatesSynchronization()Z

    move-result v0

    return v0
.end method

.method public static greylist enableHdrClamper()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableHdrClamper()Z

    move-result v0

    return v0
.end method

.method public static greylist enableModeLimitForExternalDisplay()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableModeLimitForExternalDisplay()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNbmController()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableNbmController()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePeakRefreshRatePhysicalLimit()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enablePeakRefreshRatePhysicalLimit()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePixelAnisotropyCorrection()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enablePixelAnisotropyCorrection()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePortInDisplayLayout()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enablePortInDisplayLayout()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePowerThrottlingClamper()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enablePowerThrottlingClamper()Z

    move-result v0

    return v0
.end method

.method public static greylist enableRestrictDisplayModes()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableRestrictDisplayModes()Z

    move-result v0

    return v0
.end method

.method public static greylist enableSynthetic60hzModes()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableSynthetic60hzModes()Z

    move-result v0

    return v0
.end method

.method public static greylist enableUserPreferredModeVote()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableUserPreferredModeVote()Z

    move-result v0

    return v0
.end method

.method public static greylist enableVsyncLowLightVote()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableVsyncLowLightVote()Z

    move-result v0

    return v0
.end method

.method public static greylist enableVsyncLowPowerVote()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->enableVsyncLowPowerVote()Z

    move-result v0

    return v0
.end method

.method public static greylist evenDimmer()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->evenDimmer()Z

    move-result v0

    return v0
.end method

.method public static greylist fastHdrTransitions()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->fastHdrTransitions()Z

    move-result v0

    return v0
.end method

.method public static greylist idleScreenRefreshRateTimeout()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->idleScreenRefreshRateTimeout()Z

    move-result v0

    return v0
.end method

.method public static greylist ignoreAppPreferredRefreshRateRequest()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->ignoreAppPreferredRefreshRateRequest()Z

    move-result v0

    return v0
.end method

.method public static greylist offloadControlsDozeAutoBrightness()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->offloadControlsDozeAutoBrightness()Z

    move-result v0

    return v0
.end method

.method public static greylist offloadDozeOverrideHoldsWakelock()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->offloadDozeOverrideHoldsWakelock()Z

    move-result v0

    return v0
.end method

.method public static greylist refactorDisplayPowerController()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->refactorDisplayPowerController()Z

    move-result v0

    return v0
.end method

.method public static greylist refreshRateVotingTelemetry()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->refreshRateVotingTelemetry()Z

    move-result v0

    return v0
.end method

.method public static greylist resolutionBackupRestore()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->resolutionBackupRestore()Z

    move-result v0

    return v0
.end method

.method public static greylist sensorBasedBrightnessThrottling()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->sensorBasedBrightnessThrottling()Z

    move-result v0

    return v0
.end method

.method public static greylist useFusionProxSensor()Z
    .locals 1

    sget-object v0, Lcom/android/server/display/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/display/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/feature/flags/FeatureFlags;->useFusionProxSensor()Z

    move-result v0

    return v0
.end method
