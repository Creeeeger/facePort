.class public Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;",
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
            "Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v26, "android.permission.flags.wallet_role_enabled"

    const-string v27, ""

    const-string v2, "android.permission.flags.apex_signature_permission_allowlist_enabled"

    const-string v3, "android.permission.flags.device_aware_app_op_new_schema_enabled"

    const-string v4, "android.permission.flags.device_aware_permission_apis_enabled"

    const-string v5, "android.permission.flags.device_aware_permissions_enabled"

    const-string v6, "android.permission.flags.device_id_in_op_proxy_info_enabled"

    const-string v7, "android.permission.flags.dont_remove_existing_uid_states"

    const-string v8, "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    const-string v9, "android.permission.flags.factory_reset_prep_permission_apis"

    const-string v10, "android.permission.flags.finish_running_ops_for_killed_packages"

    const-string v11, "android.permission.flags.get_emergency_role_holder_api_enabled"

    const-string v12, "android.permission.flags.ignore_process_text"

    const-string v13, "android.permission.flags.op_enable_mobile_data_by_user"

    const-string v14, "android.permission.flags.retail_demo_role_enabled"

    const-string v15, "android.permission.flags.runtime_permission_appops_mapping_enabled"

    const-string v16, "android.permission.flags.sensitive_content_improvements"

    const-string v17, "android.permission.flags.sensitive_content_metrics_bugfix"

    const-string v18, "android.permission.flags.sensitive_content_recents_screenshot_bugfix"

    const-string v19, "android.permission.flags.sensitive_notification_app_protection"

    const-string v20, "android.permission.flags.server_side_attribution_registration"

    const-string v21, "android.permission.flags.set_next_attribution_source"

    const-string v22, "android.permission.flags.should_register_attribution_source"

    const-string v23, "android.permission.flags.signature_permission_allowlist_enabled"

    const-string v24, "android.permission.flags.system_server_role_controller_enabled"

    const-string v25, "android.permission.flags.voice_activation_permission_apis"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist apexSignaturePermissionAllowlistEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.permission.flags.apex_signature_permission_allowlist_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwareAppOpNewSchemaEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.permission.flags.device_aware_app_op_new_schema_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwarePermissionApisEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.permission.flags.device_aware_permission_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceAwarePermissionsEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.permission.flags.device_aware_permissions_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deviceIdInOpProxyInfoEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.permission.flags.device_id_in_op_proxy_info_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dontRemoveExistingUidStates()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.permission.flags.dont_remove_existing_uid_states"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enhancedConfirmationModeApisEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist factoryResetPrepPermissionApis()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.permission.flags.factory_reset_prep_permission_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist finishRunningOpsForKilledPackages()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.permission.flags.finish_running_ops_for_killed_packages"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getEmergencyRoleHolderApiEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.permission.flags.get_emergency_role_holder_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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

    const-string v23, "android.permission.flags.voice_activation_permission_apis"

    const-string v24, "android.permission.flags.wallet_role_enabled"

    const-string v0, "android.permission.flags.apex_signature_permission_allowlist_enabled"

    const-string v1, "android.permission.flags.device_aware_app_op_new_schema_enabled"

    const-string v2, "android.permission.flags.device_aware_permission_apis_enabled"

    const-string v3, "android.permission.flags.device_aware_permissions_enabled"

    const-string v4, "android.permission.flags.device_id_in_op_proxy_info_enabled"

    const-string v5, "android.permission.flags.dont_remove_existing_uid_states"

    const-string v6, "android.permission.flags.enhanced_confirmation_mode_apis_enabled"

    const-string v7, "android.permission.flags.factory_reset_prep_permission_apis"

    const-string v8, "android.permission.flags.finish_running_ops_for_killed_packages"

    const-string v9, "android.permission.flags.get_emergency_role_holder_api_enabled"

    const-string v10, "android.permission.flags.ignore_process_text"

    const-string v11, "android.permission.flags.op_enable_mobile_data_by_user"

    const-string v12, "android.permission.flags.retail_demo_role_enabled"

    const-string v13, "android.permission.flags.runtime_permission_appops_mapping_enabled"

    const-string v14, "android.permission.flags.sensitive_content_improvements"

    const-string v15, "android.permission.flags.sensitive_content_metrics_bugfix"

    const-string v16, "android.permission.flags.sensitive_content_recents_screenshot_bugfix"

    const-string v17, "android.permission.flags.sensitive_notification_app_protection"

    const-string v18, "android.permission.flags.server_side_attribution_registration"

    const-string v19, "android.permission.flags.set_next_attribution_source"

    const-string v20, "android.permission.flags.should_register_attribution_source"

    const-string v21, "android.permission.flags.signature_permission_allowlist_enabled"

    const-string v22, "android.permission.flags.system_server_role_controller_enabled"

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreProcessText()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.permission.flags.ignore_process_text"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist opEnableMobileDataByUser()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.permission.flags.op_enable_mobile_data_by_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist retailDemoRoleEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.permission.flags.retail_demo_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist runtimePermissionAppopsMappingEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.permission.flags.runtime_permission_appops_mapping_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentImprovements()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.permission.flags.sensitive_content_improvements"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentMetricsBugfix()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.permission.flags.sensitive_content_metrics_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveContentRecentsScreenshotBugfix()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.permission.flags.sensitive_content_recents_screenshot_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sensitiveNotificationAppProtection()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.permission.flags.sensitive_notification_app_protection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist serverSideAttributionRegistration()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.permission.flags.server_side_attribution_registration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setNextAttributionSource()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.permission.flags.set_next_attribution_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldRegisterAttributionSource()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.permission.flags.should_register_attribution_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist signaturePermissionAllowlistEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.permission.flags.signature_permission_allowlist_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemServerRoleControllerEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.permission.flags.system_server_role_controller_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist voiceActivationPermissionApis()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.permission.flags.voice_activation_permission_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist walletRoleEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.permission.flags.wallet_role_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
