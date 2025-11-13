.class public Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;",
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
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v36, "android.content.pm.wait_application_killed"

    const-string v37, ""

    const-string v2, "android.content.pm.allow_sdk_sandbox_query_intent_activities"

    const-string v3, "android.content.pm.archiving"

    const-string v4, "android.content.pm.asl_in_apk_app_metadata_source"

    const-string v5, "android.content.pm.component_state_changed_metrics"

    const-string v6, "android.content.pm.disallow_sdk_libs_to_be_apps"

    const-string v7, "android.content.pm.emergency_install_permission"

    const-string v8, "android.content.pm.encode_app_intent"

    const-string v9, "android.content.pm.fix_duplicated_flags"

    const-string v10, "android.content.pm.fix_system_apps_first_install_time"

    const-string v11, "android.content.pm.force_multi_arch_native_libs_match"

    const-string v12, "android.content.pm.get_package_info"

    const-string v13, "android.content.pm.get_package_info_with_fd"

    const-string v14, "android.content.pm.get_package_storage_stats"

    const-string v15, "android.content.pm.get_resolved_apk_path"

    const-string v16, "android.content.pm.improve_home_app_behavior"

    const-string v17, "android.content.pm.improve_install_dont_kill"

    const-string v18, "android.content.pm.improve_install_freeze"

    const-string v19, "android.content.pm.introduce_media_processing_type"

    const-string v20, "android.content.pm.lightweight_invisible_label_detection"

    const-string v21, "android.content.pm.min_target_sdk_24"

    const-string v22, "android.content.pm.nullable_data_dir"

    const-string v23, "android.content.pm.package_restart_query_disabled_by_default"

    const-string v24, "android.content.pm.provide_info_of_apk_in_apex"

    const-string v25, "android.content.pm.quarantined_enabled"

    const-string v26, "android.content.pm.read_install_info"

    const-string v27, "android.content.pm.recoverability_detection"

    const-string v28, "android.content.pm.relative_reference_intent_filters"

    const-string v29, "android.content.pm.restrict_nonpreloads_system_shareduids"

    const-string v30, "android.content.pm.rollback_lifetime"

    const-string v31, "android.content.pm.sdk_lib_independence"

    const-string v32, "android.content.pm.set_pre_verified_domains"

    const-string v33, "android.content.pm.stay_stopped"

    const-string v34, "android.content.pm.use_art_service_v2"

    const-string v35, "android.content.pm.use_pia_v2"

    filled-new-array/range {v2 .. v37}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist allowSdkSandboxQueryIntentActivities()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.content.pm.allow_sdk_sandbox_query_intent_activities"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist archiving()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.content.pm.archiving"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aslInApkAppMetadataSource()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.content.pm.asl_in_apk_app_metadata_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist componentStateChangedMetrics()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.content.pm.component_state_changed_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disallowSdkLibsToBeApps()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.content.pm.disallow_sdk_libs_to_be_apps"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist emergencyInstallPermission()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.content.pm.emergency_install_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist encodeAppIntent()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.content.pm.encode_app_intent"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixDuplicatedFlags()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.content.pm.fix_duplicated_flags"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixSystemAppsFirstInstallTime()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.content.pm.fix_system_apps_first_install_time"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist forceMultiArchNativeLibsMatch()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.content.pm.force_multi_arch_native_libs_match"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v33, "android.content.pm.use_pia_v2"

    const-string v34, "android.content.pm.wait_application_killed"

    const-string v0, "android.content.pm.allow_sdk_sandbox_query_intent_activities"

    const-string v1, "android.content.pm.archiving"

    const-string v2, "android.content.pm.asl_in_apk_app_metadata_source"

    const-string v3, "android.content.pm.component_state_changed_metrics"

    const-string v4, "android.content.pm.disallow_sdk_libs_to_be_apps"

    const-string v5, "android.content.pm.emergency_install_permission"

    const-string v6, "android.content.pm.encode_app_intent"

    const-string v7, "android.content.pm.fix_duplicated_flags"

    const-string v8, "android.content.pm.fix_system_apps_first_install_time"

    const-string v9, "android.content.pm.force_multi_arch_native_libs_match"

    const-string v10, "android.content.pm.get_package_info"

    const-string v11, "android.content.pm.get_package_info_with_fd"

    const-string v12, "android.content.pm.get_package_storage_stats"

    const-string v13, "android.content.pm.get_resolved_apk_path"

    const-string v14, "android.content.pm.improve_home_app_behavior"

    const-string v15, "android.content.pm.improve_install_dont_kill"

    const-string v16, "android.content.pm.improve_install_freeze"

    const-string v17, "android.content.pm.introduce_media_processing_type"

    const-string v18, "android.content.pm.lightweight_invisible_label_detection"

    const-string v19, "android.content.pm.min_target_sdk_24"

    const-string v20, "android.content.pm.nullable_data_dir"

    const-string v21, "android.content.pm.package_restart_query_disabled_by_default"

    const-string v22, "android.content.pm.provide_info_of_apk_in_apex"

    const-string v23, "android.content.pm.quarantined_enabled"

    const-string v24, "android.content.pm.read_install_info"

    const-string v25, "android.content.pm.recoverability_detection"

    const-string v26, "android.content.pm.relative_reference_intent_filters"

    const-string v27, "android.content.pm.restrict_nonpreloads_system_shareduids"

    const-string v28, "android.content.pm.rollback_lifetime"

    const-string v29, "android.content.pm.sdk_lib_independence"

    const-string v30, "android.content.pm.set_pre_verified_domains"

    const-string v31, "android.content.pm.stay_stopped"

    const-string v32, "android.content.pm.use_art_service_v2"

    filled-new-array/range {v0 .. v34}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageInfo()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.content.pm.get_package_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getPackageInfoWithFd()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.content.pm.get_package_info_with_fd"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getPackageStorageStats()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.content.pm.get_package_storage_stats"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getResolvedApkPath()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.content.pm.get_resolved_apk_path"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist improveHomeAppBehavior()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.content.pm.improve_home_app_behavior"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist improveInstallDontKill()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.content.pm.improve_install_dont_kill"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist improveInstallFreeze()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.content.pm.improve_install_freeze"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist introduceMediaProcessingType()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.content.pm.introduce_media_processing_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lightweightInvisibleLabelDetection()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.content.pm.lightweight_invisible_label_detection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist minTargetSdk24()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.content.pm.min_target_sdk_24"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nullableDataDir()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.content.pm.nullable_data_dir"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist packageRestartQueryDisabledByDefault()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.content.pm.package_restart_query_disabled_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist provideInfoOfApkInApex()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.content.pm.provide_info_of_apk_in_apex"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist quarantinedEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.content.pm.quarantined_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist readInstallInfo()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.content.pm.read_install_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist recoverabilityDetection()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.content.pm.recoverability_detection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist relativeReferenceIntentFilters()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.content.pm.relative_reference_intent_filters"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist restrictNonpreloadsSystemShareduids()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.content.pm.restrict_nonpreloads_system_shareduids"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rollbackLifetime()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.content.pm.rollback_lifetime"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sdkLibIndependence()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.content.pm.sdk_lib_independence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setPreVerifiedDomains()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.content.pm.set_pre_verified_domains"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stayStopped()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.content.pm.stay_stopped"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useArtServiceV2()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.content.pm.use_art_service_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist usePiaV2()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.content.pm.use_pia_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist waitApplicationKilled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.content.pm.wait_application_killed"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
