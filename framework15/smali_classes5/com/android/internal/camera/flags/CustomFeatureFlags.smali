.class public Lcom/android/internal/camera/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/camera/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/camera/flags/FeatureFlags;",
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
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/camera/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v31, "com.android.internal.camera.flags.watch_foreground_changes"

    const-string v32, ""

    const-string v2, "com.android.internal.camera.flags.analytics_24q3"

    const-string v3, "com.android.internal.camera.flags.cache_permission_services"

    const-string v4, "com.android.internal.camera.flags.calculate_perf_override_during_session_support"

    const-string v5, "com.android.internal.camera.flags.camera_ae_mode_low_light_boost"

    const-string v6, "com.android.internal.camera.flags.camera_device_setup"

    const-string v7, "com.android.internal.camera.flags.camera_extensions_characteristics_get"

    const-string v8, "com.android.internal.camera.flags.camera_hsum_permission"

    const-string v9, "com.android.internal.camera.flags.camera_manual_flash_strength_control"

    const-string v10, "com.android.internal.camera.flags.camera_privacy_allowlist"

    const-string v11, "com.android.internal.camera.flags.check_session_support_before_session_char"

    const-string v12, "com.android.internal.camera.flags.concert_mode"

    const-string v13, "com.android.internal.camera.flags.concert_mode_api"

    const-string v14, "com.android.internal.camera.flags.delay_lazy_hal_instantiation"

    const-string v15, "com.android.internal.camera.flags.extension_10_bit"

    const-string v16, "com.android.internal.camera.flags.feature_combination_query"

    const-string v17, "com.android.internal.camera.flags.inject_session_params"

    const-string v18, "com.android.internal.camera.flags.lazy_aidl_wait_for_service"

    const-string v19, "com.android.internal.camera.flags.log_ultrawide_usage"

    const-string v20, "com.android.internal.camera.flags.log_zoom_override_usage"

    const-string v21, "com.android.internal.camera.flags.multi_res_raw_reprocessing"

    const-string v22, "com.android.internal.camera.flags.multiresolution_imagereader_usage_config"

    const-string v23, "com.android.internal.camera.flags.realtime_priority_bump"

    const-string v24, "com.android.internal.camera.flags.return_buffers_outside_locks"

    const-string v25, "com.android.internal.camera.flags.session_hal_buf_manager"

    const-string v26, "com.android.internal.camera.flags.single_thread_executor"

    const-string v27, "com.android.internal.camera.flags.surface_ipc"

    const-string v28, "com.android.internal.camera.flags.surface_leak_fix"

    const-string v29, "com.android.internal.camera.flags.use_ro_board_api_level_for_vndk_version"

    const-string v30, "com.android.internal.camera.flags.use_system_api_for_vndk_version"

    filled-new-array/range {v2 .. v32}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/camera/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/camera/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist analytics24q3()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.internal.camera.flags.analytics_24q3"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cachePermissionServices()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.internal.camera.flags.cache_permission_services"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist calculatePerfOverrideDuringSessionSupport()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.internal.camera.flags.calculate_perf_override_during_session_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraAeModeLowLightBoost()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_ae_mode_low_light_boost"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraDeviceSetup()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_device_setup"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraExtensionsCharacteristicsGet()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_extensions_characteristics_get"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraHsumPermission()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_hsum_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraManualFlashStrengthControl()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_manual_flash_strength_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraPrivacyAllowlist()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.internal.camera.flags.camera_privacy_allowlist"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist checkSessionSupportBeforeSessionChar()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.internal.camera.flags.check_session_support_before_session_char"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist concertMode()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.internal.camera.flags.concert_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist concertModeApi()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.internal.camera.flags.concert_mode_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist delayLazyHalInstantiation()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.internal.camera.flags.delay_lazy_hal_instantiation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist extension10Bit()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.internal.camera.flags.extension_10_bit"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist featureCombinationQuery()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.internal.camera.flags.feature_combination_query"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v28, "com.android.internal.camera.flags.use_system_api_for_vndk_version"

    const-string v29, "com.android.internal.camera.flags.watch_foreground_changes"

    const-string v0, "com.android.internal.camera.flags.analytics_24q3"

    const-string v1, "com.android.internal.camera.flags.cache_permission_services"

    const-string v2, "com.android.internal.camera.flags.calculate_perf_override_during_session_support"

    const-string v3, "com.android.internal.camera.flags.camera_ae_mode_low_light_boost"

    const-string v4, "com.android.internal.camera.flags.camera_device_setup"

    const-string v5, "com.android.internal.camera.flags.camera_extensions_characteristics_get"

    const-string v6, "com.android.internal.camera.flags.camera_hsum_permission"

    const-string v7, "com.android.internal.camera.flags.camera_manual_flash_strength_control"

    const-string v8, "com.android.internal.camera.flags.camera_privacy_allowlist"

    const-string v9, "com.android.internal.camera.flags.check_session_support_before_session_char"

    const-string v10, "com.android.internal.camera.flags.concert_mode"

    const-string v11, "com.android.internal.camera.flags.concert_mode_api"

    const-string v12, "com.android.internal.camera.flags.delay_lazy_hal_instantiation"

    const-string v13, "com.android.internal.camera.flags.extension_10_bit"

    const-string v14, "com.android.internal.camera.flags.feature_combination_query"

    const-string v15, "com.android.internal.camera.flags.inject_session_params"

    const-string v16, "com.android.internal.camera.flags.lazy_aidl_wait_for_service"

    const-string v17, "com.android.internal.camera.flags.log_ultrawide_usage"

    const-string v18, "com.android.internal.camera.flags.log_zoom_override_usage"

    const-string v19, "com.android.internal.camera.flags.multi_res_raw_reprocessing"

    const-string v20, "com.android.internal.camera.flags.multiresolution_imagereader_usage_config"

    const-string v21, "com.android.internal.camera.flags.realtime_priority_bump"

    const-string v22, "com.android.internal.camera.flags.return_buffers_outside_locks"

    const-string v23, "com.android.internal.camera.flags.session_hal_buf_manager"

    const-string v24, "com.android.internal.camera.flags.single_thread_executor"

    const-string v25, "com.android.internal.camera.flags.surface_ipc"

    const-string v26, "com.android.internal.camera.flags.surface_leak_fix"

    const-string v27, "com.android.internal.camera.flags.use_ro_board_api_level_for_vndk_version"

    filled-new-array/range {v0 .. v29}, [Ljava/lang/String;

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
            "Lcom/android/internal/camera/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/camera/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist injectSessionParams()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.internal.camera.flags.inject_session_params"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/camera/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist lazyAidlWaitForService()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.internal.camera.flags.lazy_aidl_wait_for_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist logUltrawideUsage()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.internal.camera.flags.log_ultrawide_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist logZoomOverrideUsage()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.internal.camera.flags.log_zoom_override_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist multiResRawReprocessing()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.internal.camera.flags.multi_res_raw_reprocessing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist multiresolutionImagereaderUsageConfig()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.internal.camera.flags.multiresolution_imagereader_usage_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist realtimePriorityBump()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.internal.camera.flags.realtime_priority_bump"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist returnBuffersOutsideLocks()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.internal.camera.flags.return_buffers_outside_locks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sessionHalBufManager()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.internal.camera.flags.session_hal_buf_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist singleThreadExecutor()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.internal.camera.flags.single_thread_executor"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist surfaceIpc()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.internal.camera.flags.surface_ipc"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist surfaceLeakFix()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.internal.camera.flags.surface_leak_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useRoBoardApiLevelForVndkVersion()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.internal.camera.flags.use_ro_board_api_level_for_vndk_version"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useSystemApiForVndkVersion()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.internal.camera.flags.use_system_api_for_vndk_version"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist watchForegroundChanges()Z
    .locals 2

    new-instance v0, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.internal.camera.flags.watch_foreground_changes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/camera/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
