.class public Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v26, "android.os.telemetry_apis_framework_initialization"

    const-string v27, ""

    const-string v2, "android.os.adpf_fmq_eager_send"

    const-string v3, "android.os.adpf_gpu_report_actual_work_duration"

    const-string v4, "android.os.adpf_hwui_gpu"

    const-string v5, "android.os.adpf_measure_during_input_event_boost"

    const-string v6, "android.os.adpf_obtainview_boost"

    const-string v7, "android.os.adpf_platform_power_efficiency"

    const-string v8, "android.os.adpf_prefer_power_efficiency"

    const-string v9, "android.os.adpf_use_fmq_channel"

    const-string v10, "android.os.adpf_use_fmq_channel_fixed"

    const-string v11, "android.os.allow_private_profile"

    const-string v12, "android.os.allow_thermal_headroom_thresholds"

    const-string v13, "android.os.android_os_build_vanilla_ice_cream"

    const-string v14, "android.os.battery_part_status_api"

    const-string v15, "android.os.battery_saver_supported_check_api"

    const-string v16, "android.os.battery_service_support_current_adb_command"

    const-string v17, "android.os.bugreport_mode_max_value"

    const-string v18, "android.os.disallow_cellular_null_ciphers_restriction"

    const-string v19, "android.os.message_queue_tail_tracking"

    const-string v20, "android.os.perfetto_sdk_tracing"

    const-string v21, "android.os.remove_app_profiler_pss_collection"

    const-string v22, "android.os.security_state_service"

    const-string v23, "android.os.state_of_health_public"

    const-string v24, "android.os.storage_lifetime_api"

    const-string v25, "android.os.strict_mode_restricted_network"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist adpfFmqEagerSend()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.os.adpf_fmq_eager_send"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfGpuReportActualWorkDuration()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.os.adpf_gpu_report_actual_work_duration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfHwuiGpu()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.os.adpf_hwui_gpu"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfMeasureDuringInputEventBoost()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.os.adpf_measure_during_input_event_boost"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfObtainviewBoost()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.os.adpf_obtainview_boost"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfPlatformPowerEfficiency()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.os.adpf_platform_power_efficiency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfPreferPowerEfficiency()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.os.adpf_prefer_power_efficiency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfUseFmqChannel()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.os.adpf_use_fmq_channel"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adpfUseFmqChannelFixed()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.os.adpf_use_fmq_channel_fixed"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowPrivateProfile()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.os.allow_private_profile"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowThermalHeadroomThresholds()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.os.allow_thermal_headroom_thresholds"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist androidOsBuildVanillaIceCream()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.os.android_os_build_vanilla_ice_cream"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist batteryPartStatusApi()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.os.battery_part_status_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist batterySaverSupportedCheckApi()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.os.battery_saver_supported_check_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist batteryServiceSupportCurrentAdbCommand()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.os.battery_service_support_current_adb_command"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bugreportModeMaxValue()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.os.bugreport_mode_max_value"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disallowCellularNullCiphersRestriction()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.os.disallow_cellular_null_ciphers_restriction"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v23, "android.os.strict_mode_restricted_network"

    const-string v24, "android.os.telemetry_apis_framework_initialization"

    const-string v0, "android.os.adpf_fmq_eager_send"

    const-string v1, "android.os.adpf_gpu_report_actual_work_duration"

    const-string v2, "android.os.adpf_hwui_gpu"

    const-string v3, "android.os.adpf_measure_during_input_event_boost"

    const-string v4, "android.os.adpf_obtainview_boost"

    const-string v5, "android.os.adpf_platform_power_efficiency"

    const-string v6, "android.os.adpf_prefer_power_efficiency"

    const-string v7, "android.os.adpf_use_fmq_channel"

    const-string v8, "android.os.adpf_use_fmq_channel_fixed"

    const-string v9, "android.os.allow_private_profile"

    const-string v10, "android.os.allow_thermal_headroom_thresholds"

    const-string v11, "android.os.android_os_build_vanilla_ice_cream"

    const-string v12, "android.os.battery_part_status_api"

    const-string v13, "android.os.battery_saver_supported_check_api"

    const-string v14, "android.os.battery_service_support_current_adb_command"

    const-string v15, "android.os.bugreport_mode_max_value"

    const-string v16, "android.os.disallow_cellular_null_ciphers_restriction"

    const-string v17, "android.os.message_queue_tail_tracking"

    const-string v18, "android.os.perfetto_sdk_tracing"

    const-string v19, "android.os.remove_app_profiler_pss_collection"

    const-string v20, "android.os.security_state_service"

    const-string v21, "android.os.state_of_health_public"

    const-string v22, "android.os.storage_lifetime_api"

    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/os/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist messageQueueTailTracking()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.os.message_queue_tail_tracking"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist perfettoSdkTracing()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.os.perfetto_sdk_tracing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeAppProfilerPssCollection()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.os.remove_app_profiler_pss_collection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist securityStateService()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.os.security_state_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stateOfHealthPublic()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.os.state_of_health_public"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist storageLifetimeApi()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.os.storage_lifetime_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist strictModeRestrictedNetwork()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.os.strict_mode_restricted_network"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist telemetryApisFrameworkInitialization()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.os.telemetry_apis_framework_initialization"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
