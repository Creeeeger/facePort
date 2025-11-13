.class public final Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags; = null

.field public static final blacklist FLAG_ALLOW_SDK_SANDBOX_QUERY_INTENT_ACTIVITIES:Ljava/lang/String; = "android.content.pm.allow_sdk_sandbox_query_intent_activities"

.field public static final blacklist FLAG_ARCHIVING:Ljava/lang/String; = "android.content.pm.archiving"

.field public static final blacklist FLAG_ASL_IN_APK_APP_METADATA_SOURCE:Ljava/lang/String; = "android.content.pm.asl_in_apk_app_metadata_source"

.field public static final blacklist FLAG_COMPONENT_STATE_CHANGED_METRICS:Ljava/lang/String; = "android.content.pm.component_state_changed_metrics"

.field public static final blacklist FLAG_DISALLOW_SDK_LIBS_TO_BE_APPS:Ljava/lang/String; = "android.content.pm.disallow_sdk_libs_to_be_apps"

.field public static final blacklist FLAG_EMERGENCY_INSTALL_PERMISSION:Ljava/lang/String; = "android.content.pm.emergency_install_permission"

.field public static final blacklist FLAG_ENCODE_APP_INTENT:Ljava/lang/String; = "android.content.pm.encode_app_intent"

.field public static final blacklist FLAG_FIX_DUPLICATED_FLAGS:Ljava/lang/String; = "android.content.pm.fix_duplicated_flags"

.field public static final blacklist FLAG_FIX_SYSTEM_APPS_FIRST_INSTALL_TIME:Ljava/lang/String; = "android.content.pm.fix_system_apps_first_install_time"

.field public static final blacklist FLAG_FORCE_MULTI_ARCH_NATIVE_LIBS_MATCH:Ljava/lang/String; = "android.content.pm.force_multi_arch_native_libs_match"

.field public static final blacklist FLAG_GET_PACKAGE_INFO:Ljava/lang/String; = "android.content.pm.get_package_info"

.field public static final blacklist FLAG_GET_PACKAGE_INFO_WITH_FD:Ljava/lang/String; = "android.content.pm.get_package_info_with_fd"

.field public static final blacklist FLAG_GET_PACKAGE_STORAGE_STATS:Ljava/lang/String; = "android.content.pm.get_package_storage_stats"

.field public static final blacklist FLAG_GET_RESOLVED_APK_PATH:Ljava/lang/String; = "android.content.pm.get_resolved_apk_path"

.field public static final blacklist FLAG_IMPROVE_HOME_APP_BEHAVIOR:Ljava/lang/String; = "android.content.pm.improve_home_app_behavior"

.field public static final blacklist FLAG_IMPROVE_INSTALL_DONT_KILL:Ljava/lang/String; = "android.content.pm.improve_install_dont_kill"

.field public static final blacklist FLAG_IMPROVE_INSTALL_FREEZE:Ljava/lang/String; = "android.content.pm.improve_install_freeze"

.field public static final blacklist FLAG_INTRODUCE_MEDIA_PROCESSING_TYPE:Ljava/lang/String; = "android.content.pm.introduce_media_processing_type"

.field public static final blacklist FLAG_LIGHTWEIGHT_INVISIBLE_LABEL_DETECTION:Ljava/lang/String; = "android.content.pm.lightweight_invisible_label_detection"

.field public static final blacklist FLAG_MIN_TARGET_SDK_24:Ljava/lang/String; = "android.content.pm.min_target_sdk_24"

.field public static final blacklist FLAG_NULLABLE_DATA_DIR:Ljava/lang/String; = "android.content.pm.nullable_data_dir"

.field public static final blacklist FLAG_PACKAGE_RESTART_QUERY_DISABLED_BY_DEFAULT:Ljava/lang/String; = "android.content.pm.package_restart_query_disabled_by_default"

.field public static final blacklist FLAG_PROVIDE_INFO_OF_APK_IN_APEX:Ljava/lang/String; = "android.content.pm.provide_info_of_apk_in_apex"

.field public static final blacklist FLAG_QUARANTINED_ENABLED:Ljava/lang/String; = "android.content.pm.quarantined_enabled"

.field public static final blacklist FLAG_READ_INSTALL_INFO:Ljava/lang/String; = "android.content.pm.read_install_info"

.field public static final blacklist FLAG_RECOVERABILITY_DETECTION:Ljava/lang/String; = "android.content.pm.recoverability_detection"

.field public static final blacklist FLAG_RELATIVE_REFERENCE_INTENT_FILTERS:Ljava/lang/String; = "android.content.pm.relative_reference_intent_filters"

.field public static final blacklist FLAG_RESTRICT_NONPRELOADS_SYSTEM_SHAREDUIDS:Ljava/lang/String; = "android.content.pm.restrict_nonpreloads_system_shareduids"

.field public static final blacklist FLAG_ROLLBACK_LIFETIME:Ljava/lang/String; = "android.content.pm.rollback_lifetime"

.field public static final blacklist FLAG_SDK_LIB_INDEPENDENCE:Ljava/lang/String; = "android.content.pm.sdk_lib_independence"

.field public static final blacklist FLAG_SET_PRE_VERIFIED_DOMAINS:Ljava/lang/String; = "android.content.pm.set_pre_verified_domains"

.field public static final blacklist FLAG_STAY_STOPPED:Ljava/lang/String; = "android.content.pm.stay_stopped"

.field public static final blacklist FLAG_USE_ART_SERVICE_V2:Ljava/lang/String; = "android.content.pm.use_art_service_v2"

.field public static final blacklist FLAG_USE_PIA_V2:Ljava/lang/String; = "android.content.pm.use_pia_v2"

.field public static final blacklist FLAG_WAIT_APPLICATION_KILLED:Ljava/lang/String; = "android.content.pm.wait_application_killed"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist allowSdkSandboxQueryIntentActivities()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->allowSdkSandboxQueryIntentActivities()Z

    move-result v0

    return v0
.end method

.method public static blacklist archiving()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->archiving()Z

    move-result v0

    return v0
.end method

.method public static blacklist aslInApkAppMetadataSource()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->aslInApkAppMetadataSource()Z

    move-result v0

    return v0
.end method

.method public static blacklist componentStateChangedMetrics()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->componentStateChangedMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist disallowSdkLibsToBeApps()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->disallowSdkLibsToBeApps()Z

    move-result v0

    return v0
.end method

.method public static blacklist emergencyInstallPermission()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->emergencyInstallPermission()Z

    move-result v0

    return v0
.end method

.method public static blacklist encodeAppIntent()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->encodeAppIntent()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixDuplicatedFlags()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->fixDuplicatedFlags()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixSystemAppsFirstInstallTime()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->fixSystemAppsFirstInstallTime()Z

    move-result v0

    return v0
.end method

.method public static blacklist forceMultiArchNativeLibsMatch()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->forceMultiArchNativeLibsMatch()Z

    move-result v0

    return v0
.end method

.method public static blacklist getPackageInfo()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->getPackageInfo()Z

    move-result v0

    return v0
.end method

.method public static blacklist getPackageInfoWithFd()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->getPackageInfoWithFd()Z

    move-result v0

    return v0
.end method

.method public static blacklist getPackageStorageStats()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->getPackageStorageStats()Z

    move-result v0

    return v0
.end method

.method public static blacklist getResolvedApkPath()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->getResolvedApkPath()Z

    move-result v0

    return v0
.end method

.method public static blacklist improveHomeAppBehavior()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->improveHomeAppBehavior()Z

    move-result v0

    return v0
.end method

.method public static blacklist improveInstallDontKill()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->improveInstallDontKill()Z

    move-result v0

    return v0
.end method

.method public static blacklist improveInstallFreeze()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->improveInstallFreeze()Z

    move-result v0

    return v0
.end method

.method public static blacklist introduceMediaProcessingType()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->introduceMediaProcessingType()Z

    move-result v0

    return v0
.end method

.method public static blacklist lightweightInvisibleLabelDetection()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->lightweightInvisibleLabelDetection()Z

    move-result v0

    return v0
.end method

.method public static blacklist minTargetSdk24()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->minTargetSdk24()Z

    move-result v0

    return v0
.end method

.method public static blacklist nullableDataDir()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->nullableDataDir()Z

    move-result v0

    return v0
.end method

.method public static blacklist packageRestartQueryDisabledByDefault()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->packageRestartQueryDisabledByDefault()Z

    move-result v0

    return v0
.end method

.method public static blacklist provideInfoOfApkInApex()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->provideInfoOfApkInApex()Z

    move-result v0

    return v0
.end method

.method public static blacklist quarantinedEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->quarantinedEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist readInstallInfo()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->readInstallInfo()Z

    move-result v0

    return v0
.end method

.method public static blacklist recoverabilityDetection()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->recoverabilityDetection()Z

    move-result v0

    return v0
.end method

.method public static blacklist relativeReferenceIntentFilters()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->relativeReferenceIntentFilters()Z

    move-result v0

    return v0
.end method

.method public static blacklist restrictNonpreloadsSystemShareduids()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->restrictNonpreloadsSystemShareduids()Z

    move-result v0

    return v0
.end method

.method public static blacklist rollbackLifetime()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->rollbackLifetime()Z

    move-result v0

    return v0
.end method

.method public static blacklist sdkLibIndependence()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->sdkLibIndependence()Z

    move-result v0

    return v0
.end method

.method public static blacklist setPreVerifiedDomains()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->setPreVerifiedDomains()Z

    move-result v0

    return v0
.end method

.method public static blacklist stayStopped()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->stayStopped()Z

    move-result v0

    return v0
.end method

.method public static blacklist useArtServiceV2()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->useArtServiceV2()Z

    move-result v0

    return v0
.end method

.method public static blacklist usePiaV2()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->usePiaV2()Z

    move-result v0

    return v0
.end method

.method public static blacklist waitApplicationKilled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->waitApplicationKilled()Z

    move-result v0

    return v0
.end method
