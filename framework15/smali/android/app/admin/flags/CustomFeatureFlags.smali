.class public Landroid/app/admin/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/app/admin/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/admin/flags/FeatureFlags;",
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
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/admin/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v45, "android.app.admin.flags.unmanaged_mode_migration"

    const-string v46, ""

    const-string v2, "android.app.admin.flags.allow_querying_profile_type"

    const-string v3, "android.app.admin.flags.allow_screen_brightness_control_on_cope"

    const-string v4, "android.app.admin.flags.always_persist_do"

    const-string v5, "android.app.admin.flags.assist_content_user_restriction_enabled"

    const-string v6, "android.app.admin.flags.backup_connected_apps_settings"

    const-string v7, "android.app.admin.flags.backup_service_security_log_event_enabled"

    const-string v8, "android.app.admin.flags.coexistence_migration_for_non_emm_management_enabled"

    const-string v9, "android.app.admin.flags.copy_account_with_retry_enabled"

    const-string v10, "android.app.admin.flags.cross_user_suspension_enabled_ro"

    const-string v11, "android.app.admin.flags.dedicated_device_control_api_enabled"

    const-string v12, "android.app.admin.flags.dedicated_device_control_enabled"

    const-string v13, "android.app.admin.flags.default_sms_personal_app_suspension_fix_enabled"

    const-string v14, "android.app.admin.flags.delete_private_space_under_restriction"

    const-string v15, "android.app.admin.flags.device_policy_size_tracking_enabled"

    const-string v16, "android.app.admin.flags.device_policy_size_tracking_internal_bug_fix_enabled"

    const-string v17, "android.app.admin.flags.device_policy_size_tracking_internal_enabled"

    const-string v18, "android.app.admin.flags.device_theft_api_enabled"

    const-string v19, "android.app.admin.flags.device_theft_impl_enabled"

    const-string v20, "android.app.admin.flags.disallow_user_control_bg_usage_fix"

    const-string v21, "android.app.admin.flags.disallow_user_control_stopped_state_fix"

    const-string v22, "android.app.admin.flags.dmrh_set_app_restrictions"

    const-string v23, "android.app.admin.flags.dumpsys_policy_engine_migration_enabled"

    const-string v24, "android.app.admin.flags.esim_management_enabled"

    const-string v25, "android.app.admin.flags.esim_management_ux_enabled"

    const-string v26, "android.app.admin.flags.headless_device_owner_delegate_security_logging_bug_fix"

    const-string v27, "android.app.admin.flags.headless_device_owner_provisioning_fix_enabled"

    const-string v28, "android.app.admin.flags.headless_device_owner_single_user_enabled"

    const-string v29, "android.app.admin.flags.headless_single_min_target_sdk"

    const-string v30, "android.app.admin.flags.headless_single_user_bad_device_admin_state_fix"

    const-string v31, "android.app.admin.flags.headless_single_user_compatibility_fix"

    const-string v32, "android.app.admin.flags.headless_single_user_fixes"

    const-string v33, "android.app.admin.flags.hsum_unlock_notification_fix"

    const-string v34, "android.app.admin.flags.is_mte_policy_enforced"

    const-string v35, "android.app.admin.flags.is_recursive_required_app_merging_enabled"

    const-string v36, "android.app.admin.flags.onboarding_bugreport_storage_bug_fix"

    const-string v37, "android.app.admin.flags.onboarding_bugreport_v2_enabled"

    const-string v38, "android.app.admin.flags.onboarding_consentless_bugreports"

    const-string v39, "android.app.admin.flags.permission_migration_for_zero_trust_api_enabled"

    const-string v40, "android.app.admin.flags.permission_migration_for_zero_trust_impl_enabled"

    const-string v41, "android.app.admin.flags.policy_engine_migration_v2_enabled"

    const-string v42, "android.app.admin.flags.power_exemption_bg_usage_fix"

    const-string v43, "android.app.admin.flags.quiet_mode_credential_bug_fix"

    const-string v44, "android.app.admin.flags.security_log_v2_enabled"

    filled-new-array/range {v2 .. v46}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/app/admin/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/app/admin/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist allowQueryingProfileType()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.app.admin.flags.allow_querying_profile_type"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist allowScreenBrightnessControlOnCope()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.app.admin.flags.allow_screen_brightness_control_on_cope"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist alwaysPersistDo()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.app.admin.flags.always_persist_do"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist assistContentUserRestrictionEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.app.admin.flags.assist_content_user_restriction_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist backupConnectedAppsSettings()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.app.admin.flags.backup_connected_apps_settings"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist backupServiceSecurityLogEventEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.app.admin.flags.backup_service_security_log_event_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist coexistenceMigrationForNonEmmManagementEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.app.admin.flags.coexistence_migration_for_non_emm_management_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist copyAccountWithRetryEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.admin.flags.copy_account_with_retry_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist crossUserSuspensionEnabledRo()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.app.admin.flags.cross_user_suspension_enabled_ro"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dedicatedDeviceControlApiEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.app.admin.flags.dedicated_device_control_api_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dedicatedDeviceControlEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.app.admin.flags.dedicated_device_control_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist defaultSmsPersonalAppSuspensionFixEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.app.admin.flags.default_sms_personal_app_suspension_fix_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deletePrivateSpaceUnderRestriction()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.app.admin.flags.delete_private_space_under_restriction"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist devicePolicySizeTrackingEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.app.admin.flags.device_policy_size_tracking_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist devicePolicySizeTrackingInternalBugFixEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.app.admin.flags.device_policy_size_tracking_internal_bug_fix_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist devicePolicySizeTrackingInternalEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.app.admin.flags.device_policy_size_tracking_internal_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deviceTheftApiEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.app.admin.flags.device_theft_api_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deviceTheftImplEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.app.admin.flags.device_theft_impl_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disallowUserControlBgUsageFix()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.app.admin.flags.disallow_user_control_bg_usage_fix"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disallowUserControlStoppedStateFix()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.app.admin.flags.disallow_user_control_stopped_state_fix"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dmrhSetAppRestrictions()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.app.admin.flags.dmrh_set_app_restrictions"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dumpsysPolicyEngineMigrationEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.app.admin.flags.dumpsys_policy_engine_migration_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist esimManagementEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.app.admin.flags.esim_management_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist esimManagementUxEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.app.admin.flags.esim_management_ux_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v42, "android.app.admin.flags.security_log_v2_enabled"

    const-string v43, "android.app.admin.flags.unmanaged_mode_migration"

    const-string v0, "android.app.admin.flags.allow_querying_profile_type"

    const-string v1, "android.app.admin.flags.allow_screen_brightness_control_on_cope"

    const-string v2, "android.app.admin.flags.always_persist_do"

    const-string v3, "android.app.admin.flags.assist_content_user_restriction_enabled"

    const-string v4, "android.app.admin.flags.backup_connected_apps_settings"

    const-string v5, "android.app.admin.flags.backup_service_security_log_event_enabled"

    const-string v6, "android.app.admin.flags.coexistence_migration_for_non_emm_management_enabled"

    const-string v7, "android.app.admin.flags.copy_account_with_retry_enabled"

    const-string v8, "android.app.admin.flags.cross_user_suspension_enabled_ro"

    const-string v9, "android.app.admin.flags.dedicated_device_control_api_enabled"

    const-string v10, "android.app.admin.flags.dedicated_device_control_enabled"

    const-string v11, "android.app.admin.flags.default_sms_personal_app_suspension_fix_enabled"

    const-string v12, "android.app.admin.flags.delete_private_space_under_restriction"

    const-string v13, "android.app.admin.flags.device_policy_size_tracking_enabled"

    const-string v14, "android.app.admin.flags.device_policy_size_tracking_internal_bug_fix_enabled"

    const-string v15, "android.app.admin.flags.device_policy_size_tracking_internal_enabled"

    const-string v16, "android.app.admin.flags.device_theft_api_enabled"

    const-string v17, "android.app.admin.flags.device_theft_impl_enabled"

    const-string v18, "android.app.admin.flags.disallow_user_control_bg_usage_fix"

    const-string v19, "android.app.admin.flags.disallow_user_control_stopped_state_fix"

    const-string v20, "android.app.admin.flags.dmrh_set_app_restrictions"

    const-string v21, "android.app.admin.flags.dumpsys_policy_engine_migration_enabled"

    const-string v22, "android.app.admin.flags.esim_management_enabled"

    const-string v23, "android.app.admin.flags.esim_management_ux_enabled"

    const-string v24, "android.app.admin.flags.headless_device_owner_delegate_security_logging_bug_fix"

    const-string v25, "android.app.admin.flags.headless_device_owner_provisioning_fix_enabled"

    const-string v26, "android.app.admin.flags.headless_device_owner_single_user_enabled"

    const-string v27, "android.app.admin.flags.headless_single_min_target_sdk"

    const-string v28, "android.app.admin.flags.headless_single_user_bad_device_admin_state_fix"

    const-string v29, "android.app.admin.flags.headless_single_user_compatibility_fix"

    const-string v30, "android.app.admin.flags.headless_single_user_fixes"

    const-string v31, "android.app.admin.flags.hsum_unlock_notification_fix"

    const-string v32, "android.app.admin.flags.is_mte_policy_enforced"

    const-string v33, "android.app.admin.flags.is_recursive_required_app_merging_enabled"

    const-string v34, "android.app.admin.flags.onboarding_bugreport_storage_bug_fix"

    const-string v35, "android.app.admin.flags.onboarding_bugreport_v2_enabled"

    const-string v36, "android.app.admin.flags.onboarding_consentless_bugreports"

    const-string v37, "android.app.admin.flags.permission_migration_for_zero_trust_api_enabled"

    const-string v38, "android.app.admin.flags.permission_migration_for_zero_trust_impl_enabled"

    const-string v39, "android.app.admin.flags.policy_engine_migration_v2_enabled"

    const-string v40, "android.app.admin.flags.power_exemption_bg_usage_fix"

    const-string v41, "android.app.admin.flags.quiet_mode_credential_bug_fix"

    filled-new-array/range {v0 .. v43}, [Ljava/lang/String;

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
            "Landroid/app/admin/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist headlessDeviceOwnerDelegateSecurityLoggingBugFix()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.app.admin.flags.headless_device_owner_delegate_security_logging_bug_fix"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist headlessDeviceOwnerProvisioningFixEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.app.admin.flags.headless_device_owner_provisioning_fix_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist headlessDeviceOwnerSingleUserEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.app.admin.flags.headless_device_owner_single_user_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist headlessSingleMinTargetSdk()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.app.admin.flags.headless_single_min_target_sdk"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist headlessSingleUserBadDeviceAdminStateFix()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.app.admin.flags.headless_single_user_bad_device_admin_state_fix"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist headlessSingleUserCompatibilityFix()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.app.admin.flags.headless_single_user_compatibility_fix"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist headlessSingleUserFixes()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.app.admin.flags.headless_single_user_fixes"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist hsumUnlockNotificationFix()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.app.admin.flags.hsum_unlock_notification_fix"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/admin/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/admin/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isMtePolicyEnforced()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.app.admin.flags.is_mte_policy_enforced"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist isRecursiveRequiredAppMergingEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.app.admin.flags.is_recursive_required_app_merging_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist onboardingBugreportStorageBugFix()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.app.admin.flags.onboarding_bugreport_storage_bug_fix"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist onboardingBugreportV2Enabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.app.admin.flags.onboarding_bugreport_v2_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist onboardingConsentlessBugreports()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.app.admin.flags.onboarding_consentless_bugreports"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist permissionMigrationForZeroTrustApiEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.app.admin.flags.permission_migration_for_zero_trust_api_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist permissionMigrationForZeroTrustImplEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.app.admin.flags.permission_migration_for_zero_trust_impl_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist policyEngineMigrationV2Enabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.admin.flags.policy_engine_migration_v2_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist powerExemptionBgUsageFix()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.app.admin.flags.power_exemption_bg_usage_fix"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist quietModeCredentialBugFix()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.app.admin.flags.quiet_mode_credential_bug_fix"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist securityLogV2Enabled()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.app.admin.flags.security_log_v2_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist unmanagedModeMigration()Z
    .locals 2

    new-instance v0, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Landroid/app/admin/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.app.admin.flags.unmanaged_mode_migration"

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
