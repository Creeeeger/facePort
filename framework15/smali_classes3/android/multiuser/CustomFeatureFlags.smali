.class public Landroid/multiuser/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/multiuser/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/multiuser/FeatureFlags;",
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
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/multiuser/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v37, "android.multiuser.use_private_space_icon_in_biometric_prompt"

    const-string v38, ""

    const-string v2, "android.multiuser.add_ui_for_sounds_from_background_users"

    const-string v3, "android.multiuser.allow_main_user_to_access_blocked_number_provider"

    const-string v4, "android.multiuser.allow_resolver_sheet_for_private_space"

    const-string v5, "android.multiuser.avatar_sync"

    const-string v6, "android.multiuser.bind_wallpaper_service_on_its_own_thread_during_a_user_switch"

    const-string v7, "android.multiuser.block_private_space_creation"

    const-string v8, "android.multiuser.delete_private_space_from_reset"

    const-string v9, "android.multiuser.disable_private_space_items_on_home"

    const-string v10, "android.multiuser.enable_biometrics_to_unlock_private_space"

    const-string v11, "android.multiuser.enable_hiding_profiles"

    const-string v12, "android.multiuser.enable_launcher_apps_hidden_profile_checks"

    const-string v13, "android.multiuser.enable_permission_to_access_hidden_profiles"

    const-string v14, "android.multiuser.enable_private_space_autolock_on_restarts"

    const-string v15, "android.multiuser.enable_private_space_features"

    const-string v16, "android.multiuser.enable_private_space_intent_redirection"

    const-string v17, "android.multiuser.enable_ps_sensitive_notifications_toggle"

    const-string v18, "android.multiuser.enable_system_user_only_for_services_and_providers"

    const-string v19, "android.multiuser.fix_avatar_concurrent_file_write"

    const-string v20, "android.multiuser.fix_avatar_picker_read_back_order"

    const-string v21, "android.multiuser.fix_avatar_picker_selected_read_back"

    const-string v22, "android.multiuser.handle_interleaved_settings_for_private_space"

    const-string v23, "android.multiuser.move_quiet_mode_operations_to_separate_thread"

    const-string v24, "android.multiuser.new_multiuser_settings_ux"

    const-string v25, "android.multiuser.reorder_wallpaper_during_user_switch"

    const-string v26, "android.multiuser.restrict_quiet_mode_credential_bug_fix_to_managed_profiles"

    const-string v27, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml"

    const-string v28, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml_read_only"

    const-string v29, "android.multiuser.schedule_stop_of_background_user"

    const-string v30, "android.multiuser.set_power_mode_during_user_switch"

    const-string v31, "android.multiuser.show_set_screen_lock_dialog"

    const-string v32, "android.multiuser.start_user_before_scheduled_alarms"

    const-string v33, "android.multiuser.support_autolock_for_private_space"

    const-string v34, "android.multiuser.support_communal_profile"

    const-string v35, "android.multiuser.support_communal_profile_nextgen"

    const-string v36, "android.multiuser.use_all_cpus_during_user_switch"

    filled-new-array/range {v2 .. v38}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/multiuser/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/multiuser/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist addUiForSoundsFromBackgroundUsers()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.multiuser.add_ui_for_sounds_from_background_users"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist allowMainUserToAccessBlockedNumberProvider()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.multiuser.allow_main_user_to_access_blocked_number_provider"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist allowResolverSheetForPrivateSpace()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.multiuser.allow_resolver_sheet_for_private_space"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist avatarSync()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.multiuser.avatar_sync"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bindWallpaperServiceOnItsOwnThreadDuringAUserSwitch()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.multiuser.bind_wallpaper_service_on_its_own_thread_during_a_user_switch"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist blockPrivateSpaceCreation()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.multiuser.block_private_space_creation"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deletePrivateSpaceFromReset()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.multiuser.delete_private_space_from_reset"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disablePrivateSpaceItemsOnHome()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.multiuser.disable_private_space_items_on_home"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableBiometricsToUnlockPrivateSpace()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.multiuser.enable_biometrics_to_unlock_private_space"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableHidingProfiles()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.multiuser.enable_hiding_profiles"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableLauncherAppsHiddenProfileChecks()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.multiuser.enable_launcher_apps_hidden_profile_checks"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePermissionToAccessHiddenProfiles()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.multiuser.enable_permission_to_access_hidden_profiles"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePrivateSpaceAutolockOnRestarts()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.multiuser.enable_private_space_autolock_on_restarts"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePrivateSpaceFeatures()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.multiuser.enable_private_space_features"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePrivateSpaceIntentRedirection()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.multiuser.enable_private_space_intent_redirection"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePsSensitiveNotificationsToggle()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.multiuser.enable_ps_sensitive_notifications_toggle"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableSystemUserOnlyForServicesAndProviders()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.multiuser.enable_system_user_only_for_services_and_providers"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixAvatarConcurrentFileWrite()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.multiuser.fix_avatar_concurrent_file_write"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixAvatarPickerReadBackOrder()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.multiuser.fix_avatar_picker_read_back_order"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixAvatarPickerSelectedReadBack()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.multiuser.fix_avatar_picker_selected_read_back"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v34, "android.multiuser.use_all_cpus_during_user_switch"

    const-string v35, "android.multiuser.use_private_space_icon_in_biometric_prompt"

    const-string v0, "android.multiuser.add_ui_for_sounds_from_background_users"

    const-string v1, "android.multiuser.allow_main_user_to_access_blocked_number_provider"

    const-string v2, "android.multiuser.allow_resolver_sheet_for_private_space"

    const-string v3, "android.multiuser.avatar_sync"

    const-string v4, "android.multiuser.bind_wallpaper_service_on_its_own_thread_during_a_user_switch"

    const-string v5, "android.multiuser.block_private_space_creation"

    const-string v6, "android.multiuser.delete_private_space_from_reset"

    const-string v7, "android.multiuser.disable_private_space_items_on_home"

    const-string v8, "android.multiuser.enable_biometrics_to_unlock_private_space"

    const-string v9, "android.multiuser.enable_hiding_profiles"

    const-string v10, "android.multiuser.enable_launcher_apps_hidden_profile_checks"

    const-string v11, "android.multiuser.enable_permission_to_access_hidden_profiles"

    const-string v12, "android.multiuser.enable_private_space_autolock_on_restarts"

    const-string v13, "android.multiuser.enable_private_space_features"

    const-string v14, "android.multiuser.enable_private_space_intent_redirection"

    const-string v15, "android.multiuser.enable_ps_sensitive_notifications_toggle"

    const-string v16, "android.multiuser.enable_system_user_only_for_services_and_providers"

    const-string v17, "android.multiuser.fix_avatar_concurrent_file_write"

    const-string v18, "android.multiuser.fix_avatar_picker_read_back_order"

    const-string v19, "android.multiuser.fix_avatar_picker_selected_read_back"

    const-string v20, "android.multiuser.handle_interleaved_settings_for_private_space"

    const-string v21, "android.multiuser.move_quiet_mode_operations_to_separate_thread"

    const-string v22, "android.multiuser.new_multiuser_settings_ux"

    const-string v23, "android.multiuser.reorder_wallpaper_during_user_switch"

    const-string v24, "android.multiuser.restrict_quiet_mode_credential_bug_fix_to_managed_profiles"

    const-string v25, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml"

    const-string v26, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml_read_only"

    const-string v27, "android.multiuser.schedule_stop_of_background_user"

    const-string v28, "android.multiuser.set_power_mode_during_user_switch"

    const-string v29, "android.multiuser.show_set_screen_lock_dialog"

    const-string v30, "android.multiuser.start_user_before_scheduled_alarms"

    const-string v31, "android.multiuser.support_autolock_for_private_space"

    const-string v32, "android.multiuser.support_communal_profile"

    const-string v33, "android.multiuser.support_communal_profile_nextgen"

    filled-new-array/range {v0 .. v35}, [Ljava/lang/String;

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
            "Landroid/multiuser/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/multiuser/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist handleInterleavedSettingsForPrivateSpace()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.multiuser.handle_interleaved_settings_for_private_space"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/multiuser/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/multiuser/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist moveQuietModeOperationsToSeparateThread()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.multiuser.move_quiet_mode_operations_to_separate_thread"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist newMultiuserSettingsUx()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.multiuser.new_multiuser_settings_ux"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reorderWallpaperDuringUserSwitch()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.multiuser.reorder_wallpaper_during_user_switch"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist restrictQuietModeCredentialBugFixToManagedProfiles()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.multiuser.restrict_quiet_mode_credential_bug_fix_to_managed_profiles"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist saveGlobalAndGuestRestrictionsOnSystemUserXml()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist saveGlobalAndGuestRestrictionsOnSystemUserXmlReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist scheduleStopOfBackgroundUser()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.multiuser.schedule_stop_of_background_user"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setPowerModeDuringUserSwitch()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.multiuser.set_power_mode_during_user_switch"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist showSetScreenLockDialog()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.multiuser.show_set_screen_lock_dialog"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist startUserBeforeScheduledAlarms()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.multiuser.start_user_before_scheduled_alarms"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist supportAutolockForPrivateSpace()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.multiuser.support_autolock_for_private_space"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist supportCommunalProfile()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.multiuser.support_communal_profile"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist supportCommunalProfileNextgen()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.multiuser.support_communal_profile_nextgen"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useAllCpusDuringUserSwitch()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.multiuser.use_all_cpus_during_user_switch"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist usePrivateSpaceIconInBiometricPrompt()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.multiuser.use_private_space_icon_in_biometric_prompt"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
