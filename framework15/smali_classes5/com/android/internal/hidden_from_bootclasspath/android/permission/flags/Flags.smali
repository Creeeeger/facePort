.class public final Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags; = null

.field public static final blacklist FLAG_APEX_SIGNATURE_PERMISSION_ALLOWLIST_ENABLED:Ljava/lang/String; = "android.permission.flags.apex_signature_permission_allowlist_enabled"

.field public static final blacklist FLAG_DEVICE_AWARE_APP_OP_NEW_SCHEMA_ENABLED:Ljava/lang/String; = "android.permission.flags.device_aware_app_op_new_schema_enabled"

.field public static final blacklist FLAG_DEVICE_AWARE_PERMISSIONS_ENABLED:Ljava/lang/String; = "android.permission.flags.device_aware_permissions_enabled"

.field public static final blacklist FLAG_DEVICE_AWARE_PERMISSION_APIS_ENABLED:Ljava/lang/String; = "android.permission.flags.device_aware_permission_apis_enabled"

.field public static final blacklist FLAG_DEVICE_ID_IN_OP_PROXY_INFO_ENABLED:Ljava/lang/String; = "android.permission.flags.device_id_in_op_proxy_info_enabled"

.field public static final blacklist FLAG_DONT_REMOVE_EXISTING_UID_STATES:Ljava/lang/String; = "android.permission.flags.dont_remove_existing_uid_states"

.field public static final blacklist FLAG_ENHANCED_CONFIRMATION_MODE_APIS_ENABLED:Ljava/lang/String; = "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

.field public static final blacklist FLAG_FACTORY_RESET_PREP_PERMISSION_APIS:Ljava/lang/String; = "android.permission.flags.factory_reset_prep_permission_apis"

.field public static final blacklist FLAG_FINISH_RUNNING_OPS_FOR_KILLED_PACKAGES:Ljava/lang/String; = "android.permission.flags.finish_running_ops_for_killed_packages"

.field public static final blacklist FLAG_GET_EMERGENCY_ROLE_HOLDER_API_ENABLED:Ljava/lang/String; = "android.permission.flags.get_emergency_role_holder_api_enabled"

.field public static final blacklist FLAG_IGNORE_PROCESS_TEXT:Ljava/lang/String; = "android.permission.flags.ignore_process_text"

.field public static final blacklist FLAG_OP_ENABLE_MOBILE_DATA_BY_USER:Ljava/lang/String; = "android.permission.flags.op_enable_mobile_data_by_user"

.field public static final blacklist FLAG_RETAIL_DEMO_ROLE_ENABLED:Ljava/lang/String; = "android.permission.flags.retail_demo_role_enabled"

.field public static final blacklist FLAG_RUNTIME_PERMISSION_APPOPS_MAPPING_ENABLED:Ljava/lang/String; = "android.permission.flags.runtime_permission_appops_mapping_enabled"

.field public static final blacklist FLAG_SENSITIVE_CONTENT_IMPROVEMENTS:Ljava/lang/String; = "android.permission.flags.sensitive_content_improvements"

.field public static final blacklist FLAG_SENSITIVE_CONTENT_METRICS_BUGFIX:Ljava/lang/String; = "android.permission.flags.sensitive_content_metrics_bugfix"

.field public static final blacklist FLAG_SENSITIVE_CONTENT_RECENTS_SCREENSHOT_BUGFIX:Ljava/lang/String; = "android.permission.flags.sensitive_content_recents_screenshot_bugfix"

.field public static final blacklist FLAG_SENSITIVE_NOTIFICATION_APP_PROTECTION:Ljava/lang/String; = "android.permission.flags.sensitive_notification_app_protection"

.field public static final blacklist FLAG_SERVER_SIDE_ATTRIBUTION_REGISTRATION:Ljava/lang/String; = "android.permission.flags.server_side_attribution_registration"

.field public static final blacklist FLAG_SET_NEXT_ATTRIBUTION_SOURCE:Ljava/lang/String; = "android.permission.flags.set_next_attribution_source"

.field public static final blacklist FLAG_SHOULD_REGISTER_ATTRIBUTION_SOURCE:Ljava/lang/String; = "android.permission.flags.should_register_attribution_source"

.field public static final blacklist FLAG_SIGNATURE_PERMISSION_ALLOWLIST_ENABLED:Ljava/lang/String; = "android.permission.flags.signature_permission_allowlist_enabled"

.field public static final blacklist FLAG_SYSTEM_SERVER_ROLE_CONTROLLER_ENABLED:Ljava/lang/String; = "android.permission.flags.system_server_role_controller_enabled"

.field public static final blacklist FLAG_VOICE_ACTIVATION_PERMISSION_APIS:Ljava/lang/String; = "android.permission.flags.voice_activation_permission_apis"

.field public static final blacklist FLAG_WALLET_ROLE_ENABLED:Ljava/lang/String; = "android.permission.flags.wallet_role_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist apexSignaturePermissionAllowlistEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->apexSignaturePermissionAllowlistEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceAwareAppOpNewSchemaEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->deviceAwareAppOpNewSchemaEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceAwarePermissionApisEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceAwarePermissionsEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->deviceAwarePermissionsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceIdInOpProxyInfoEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->deviceIdInOpProxyInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist dontRemoveExistingUidStates()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->dontRemoveExistingUidStates()Z

    move-result v0

    return v0
.end method

.method public static blacklist enhancedConfirmationModeApisEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->enhancedConfirmationModeApisEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist factoryResetPrepPermissionApis()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->factoryResetPrepPermissionApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist finishRunningOpsForKilledPackages()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->finishRunningOpsForKilledPackages()Z

    move-result v0

    return v0
.end method

.method public static blacklist getEmergencyRoleHolderApiEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->getEmergencyRoleHolderApiEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist ignoreProcessText()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->ignoreProcessText()Z

    move-result v0

    return v0
.end method

.method public static blacklist opEnableMobileDataByUser()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->opEnableMobileDataByUser()Z

    move-result v0

    return v0
.end method

.method public static blacklist retailDemoRoleEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->retailDemoRoleEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist runtimePermissionAppopsMappingEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->runtimePermissionAppopsMappingEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist sensitiveContentImprovements()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->sensitiveContentImprovements()Z

    move-result v0

    return v0
.end method

.method public static blacklist sensitiveContentMetricsBugfix()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->sensitiveContentMetricsBugfix()Z

    move-result v0

    return v0
.end method

.method public static blacklist sensitiveContentRecentsScreenshotBugfix()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->sensitiveContentRecentsScreenshotBugfix()Z

    move-result v0

    return v0
.end method

.method public static blacklist sensitiveNotificationAppProtection()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->sensitiveNotificationAppProtection()Z

    move-result v0

    return v0
.end method

.method public static blacklist serverSideAttributionRegistration()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->serverSideAttributionRegistration()Z

    move-result v0

    return v0
.end method

.method public static blacklist setNextAttributionSource()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->setNextAttributionSource()Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldRegisterAttributionSource()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->shouldRegisterAttributionSource()Z

    move-result v0

    return v0
.end method

.method public static blacklist signaturePermissionAllowlistEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->signaturePermissionAllowlistEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist systemServerRoleControllerEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->systemServerRoleControllerEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist voiceActivationPermissionApis()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->voiceActivationPermissionApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist walletRoleEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;->walletRoleEnabled()Z

    move-result v0

    return v0
.end method
