.class public Lcom/android/server/telecom/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/server/telecom/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/telecom/flags/FeatureFlags;",
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
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/telecom/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v49, "com.android.server.telecom.flags.voip_app_actions_support"

    const-string v50, ""

    const-string v2, "com.android.server.telecom.flags.add_call_uri_for_missed_calls"

    const-string v3, "com.android.server.telecom.flags.associated_user_refactor_for_work_profile"

    const-string v4, "com.android.server.telecom.flags.available_routes_never_updated_after_set_system_audio_state"

    const-string v5, "com.android.server.telecom.flags.business_call_composer"

    const-string v6, "com.android.server.telecom.flags.cache_call_audio_callbacks"

    const-string v7, "com.android.server.telecom.flags.call_audio_communication_device_refactor"

    const-string v8, "com.android.server.telecom.flags.call_details_id_changes"

    const-string v9, "com.android.server.telecom.flags.cancel_removal_on_emergency_redial"

    const-string v10, "com.android.server.telecom.flags.clear_communication_device_after_audio_ops_complete"

    const-string v11, "com.android.server.telecom.flags.communication_device_protected_by_lock"

    const-string v12, "com.android.server.telecom.flags.early_binding_to_incall_service"

    const-string v13, "com.android.server.telecom.flags.early_update_internal_call_audio_state"

    const-string v14, "com.android.server.telecom.flags.ecc_keyguard"

    const-string v15, "com.android.server.telecom.flags.enable_call_sequencing"

    const-string v16, "com.android.server.telecom.flags.ensure_audio_mode_updates_on_foreground_call_change"

    const-string v17, "com.android.server.telecom.flags.fix_audio_flicker_for_outgoing_calls"

    const-string v18, "com.android.server.telecom.flags.gen_anom_report_on_focus_timeout"

    const-string v19, "com.android.server.telecom.flags.get_last_known_cell_identity"

    const-string v20, "com.android.server.telecom.flags.get_registered_phone_accounts"

    const-string v21, "com.android.server.telecom.flags.ignore_auto_route_to_watch_device"

    const-string v22, "com.android.server.telecom.flags.is_new_outgoing_call_broadcast_unblocking"

    const-string v23, "com.android.server.telecom.flags.only_update_telephony_on_valid_sub_ids"

    const-string v24, "com.android.server.telecom.flags.postpone_register_to_leaudio"

    const-string v25, "com.android.server.telecom.flags.profile_user_support"

    const-string v26, "com.android.server.telecom.flags.reset_mute_when_entering_quiescent_bt_route"

    const-string v27, "com.android.server.telecom.flags.resolve_switching_bt_devices_computation"

    const-string v28, "com.android.server.telecom.flags.separately_bind_to_bt_incall_service"

    const-string v29, "com.android.server.telecom.flags.set_audio_mode_before_abandon_focus"

    const-string v30, "com.android.server.telecom.flags.set_mute_state"

    const-string v31, "com.android.server.telecom.flags.set_remote_connection_call_id"

    const-string v32, "com.android.server.telecom.flags.skip_filter_phone_account_perform_dnd_filter"

    const-string v33, "com.android.server.telecom.flags.telecom_log_external_wearable_calls"

    const-string v34, "com.android.server.telecom.flags.telecom_mainline_blocked_numbers_manager"

    const-string v35, "com.android.server.telecom.flags.telecom_resolve_hidden_dependencies"

    const-string v36, "com.android.server.telecom.flags.telecom_skip_log_based_on_extra"

    const-string v37, "com.android.server.telecom.flags.telephony_has_default_but_telecom_does_not"

    const-string v38, "com.android.server.telecom.flags.transactional_cs_verifier"

    const-string v39, "com.android.server.telecom.flags.transactional_hold_disconnects_unholdable"

    const-string v40, "com.android.server.telecom.flags.transactional_video_state"

    const-string v41, "com.android.server.telecom.flags.transit_route_before_audio_disconnect_bt"

    const-string v42, "com.android.server.telecom.flags.unregister_unresolvable_accounts"

    const-string v43, "com.android.server.telecom.flags.update_route_mask_when_bt_connected"

    const-string v44, "com.android.server.telecom.flags.updated_rcs_call_count_tracking"

    const-string v45, "com.android.server.telecom.flags.use_actual_address_to_enter_connecting_state"

    const-string v46, "com.android.server.telecom.flags.use_device_provided_serialized_ringer_vibration"

    const-string v47, "com.android.server.telecom.flags.use_improved_listener_order"

    const-string v48, "com.android.server.telecom.flags.use_refactored_audio_route_switching"

    filled-new-array/range {v2 .. v50}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/telecom/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/telecom/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist addCallUriForMissedCalls()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.server.telecom.flags.add_call_uri_for_missed_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist associatedUserRefactorForWorkProfile()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.server.telecom.flags.associated_user_refactor_for_work_profile"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist availableRoutesNeverUpdatedAfterSetSystemAudioState()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.server.telecom.flags.available_routes_never_updated_after_set_system_audio_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist businessCallComposer()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.server.telecom.flags.business_call_composer"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cacheCallAudioCallbacks()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.server.telecom.flags.cache_call_audio_callbacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist callAudioCommunicationDeviceRefactor()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.server.telecom.flags.call_audio_communication_device_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist callDetailsIdChanges()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.server.telecom.flags.call_details_id_changes"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cancelRemovalOnEmergencyRedial()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.server.telecom.flags.cancel_removal_on_emergency_redial"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist clearCommunicationDeviceAfterAudioOpsComplete()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.server.telecom.flags.clear_communication_device_after_audio_ops_complete"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist communicationDeviceProtectedByLock()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.server.telecom.flags.communication_device_protected_by_lock"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist earlyBindingToIncallService()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.server.telecom.flags.early_binding_to_incall_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist earlyUpdateInternalCallAudioState()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.server.telecom.flags.early_update_internal_call_audio_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist eccKeyguard()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.server.telecom.flags.ecc_keyguard"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableCallSequencing()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.server.telecom.flags.enable_call_sequencing"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ensureAudioModeUpdatesOnForegroundCallChange()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.server.telecom.flags.ensure_audio_mode_updates_on_foreground_call_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixAudioFlickerForOutgoingCalls()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.server.telecom.flags.fix_audio_flicker_for_outgoing_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist genAnomReportOnFocusTimeout()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.server.telecom.flags.gen_anom_report_on_focus_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v46, "com.android.server.telecom.flags.use_refactored_audio_route_switching"

    const-string v47, "com.android.server.telecom.flags.voip_app_actions_support"

    const-string v0, "com.android.server.telecom.flags.add_call_uri_for_missed_calls"

    const-string v1, "com.android.server.telecom.flags.associated_user_refactor_for_work_profile"

    const-string v2, "com.android.server.telecom.flags.available_routes_never_updated_after_set_system_audio_state"

    const-string v3, "com.android.server.telecom.flags.business_call_composer"

    const-string v4, "com.android.server.telecom.flags.cache_call_audio_callbacks"

    const-string v5, "com.android.server.telecom.flags.call_audio_communication_device_refactor"

    const-string v6, "com.android.server.telecom.flags.call_details_id_changes"

    const-string v7, "com.android.server.telecom.flags.cancel_removal_on_emergency_redial"

    const-string v8, "com.android.server.telecom.flags.clear_communication_device_after_audio_ops_complete"

    const-string v9, "com.android.server.telecom.flags.communication_device_protected_by_lock"

    const-string v10, "com.android.server.telecom.flags.early_binding_to_incall_service"

    const-string v11, "com.android.server.telecom.flags.early_update_internal_call_audio_state"

    const-string v12, "com.android.server.telecom.flags.ecc_keyguard"

    const-string v13, "com.android.server.telecom.flags.enable_call_sequencing"

    const-string v14, "com.android.server.telecom.flags.ensure_audio_mode_updates_on_foreground_call_change"

    const-string v15, "com.android.server.telecom.flags.fix_audio_flicker_for_outgoing_calls"

    const-string v16, "com.android.server.telecom.flags.gen_anom_report_on_focus_timeout"

    const-string v17, "com.android.server.telecom.flags.get_last_known_cell_identity"

    const-string v18, "com.android.server.telecom.flags.get_registered_phone_accounts"

    const-string v19, "com.android.server.telecom.flags.ignore_auto_route_to_watch_device"

    const-string v20, "com.android.server.telecom.flags.is_new_outgoing_call_broadcast_unblocking"

    const-string v21, "com.android.server.telecom.flags.only_update_telephony_on_valid_sub_ids"

    const-string v22, "com.android.server.telecom.flags.postpone_register_to_leaudio"

    const-string v23, "com.android.server.telecom.flags.profile_user_support"

    const-string v24, "com.android.server.telecom.flags.reset_mute_when_entering_quiescent_bt_route"

    const-string v25, "com.android.server.telecom.flags.resolve_switching_bt_devices_computation"

    const-string v26, "com.android.server.telecom.flags.separately_bind_to_bt_incall_service"

    const-string v27, "com.android.server.telecom.flags.set_audio_mode_before_abandon_focus"

    const-string v28, "com.android.server.telecom.flags.set_mute_state"

    const-string v29, "com.android.server.telecom.flags.set_remote_connection_call_id"

    const-string v30, "com.android.server.telecom.flags.skip_filter_phone_account_perform_dnd_filter"

    const-string v31, "com.android.server.telecom.flags.telecom_log_external_wearable_calls"

    const-string v32, "com.android.server.telecom.flags.telecom_mainline_blocked_numbers_manager"

    const-string v33, "com.android.server.telecom.flags.telecom_resolve_hidden_dependencies"

    const-string v34, "com.android.server.telecom.flags.telecom_skip_log_based_on_extra"

    const-string v35, "com.android.server.telecom.flags.telephony_has_default_but_telecom_does_not"

    const-string v36, "com.android.server.telecom.flags.transactional_cs_verifier"

    const-string v37, "com.android.server.telecom.flags.transactional_hold_disconnects_unholdable"

    const-string v38, "com.android.server.telecom.flags.transactional_video_state"

    const-string v39, "com.android.server.telecom.flags.transit_route_before_audio_disconnect_bt"

    const-string v40, "com.android.server.telecom.flags.unregister_unresolvable_accounts"

    const-string v41, "com.android.server.telecom.flags.update_route_mask_when_bt_connected"

    const-string v42, "com.android.server.telecom.flags.updated_rcs_call_count_tracking"

    const-string v43, "com.android.server.telecom.flags.use_actual_address_to_enter_connecting_state"

    const-string v44, "com.android.server.telecom.flags.use_device_provided_serialized_ringer_vibration"

    const-string v45, "com.android.server.telecom.flags.use_improved_listener_order"

    filled-new-array/range {v0 .. v47}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLastKnownCellIdentity()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.telecom.flags.get_last_known_cell_identity"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist getRegisteredPhoneAccounts()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.server.telecom.flags.get_registered_phone_accounts"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
            "Lcom/android/server/telecom/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist ignoreAutoRouteToWatchDevice()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.server.telecom.flags.ignore_auto_route_to_watch_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isNewOutgoingCallBroadcastUnblocking()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.server.telecom.flags.is_new_outgoing_call_broadcast_unblocking"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist onlyUpdateTelephonyOnValidSubIds()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.server.telecom.flags.only_update_telephony_on_valid_sub_ids"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist postponeRegisterToLeaudio()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.server.telecom.flags.postpone_register_to_leaudio"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist profileUserSupport()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.server.telecom.flags.profile_user_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist resetMuteWhenEnteringQuiescentBtRoute()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.server.telecom.flags.reset_mute_when_entering_quiescent_bt_route"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist resolveSwitchingBtDevicesComputation()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.server.telecom.flags.resolve_switching_bt_devices_computation"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist separatelyBindToBtIncallService()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.server.telecom.flags.separately_bind_to_bt_incall_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setAudioModeBeforeAbandonFocus()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.server.telecom.flags.set_audio_mode_before_abandon_focus"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setMuteState()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.server.telecom.flags.set_mute_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setRemoteConnectionCallId()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.server.telecom.flags.set_remote_connection_call_id"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist skipFilterPhoneAccountPerformDndFilter()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.server.telecom.flags.skip_filter_phone_account_perform_dnd_filter"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telecomLogExternalWearableCalls()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_log_external_wearable_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telecomMainlineBlockedNumbersManager()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_mainline_blocked_numbers_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telecomResolveHiddenDependencies()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_resolve_hidden_dependencies"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telecomSkipLogBasedOnExtra()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telecom_skip_log_based_on_extra"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist telephonyHasDefaultButTelecomDoesNot()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.server.telecom.flags.telephony_has_default_but_telecom_does_not"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist transactionalCsVerifier()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.server.telecom.flags.transactional_cs_verifier"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist transactionalHoldDisconnectsUnholdable()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.server.telecom.flags.transactional_hold_disconnects_unholdable"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist transactionalVideoState()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.server.telecom.flags.transactional_video_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist transitRouteBeforeAudioDisconnectBt()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.telecom.flags.transit_route_before_audio_disconnect_bt"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist unregisterUnresolvableAccounts()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.server.telecom.flags.unregister_unresolvable_accounts"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist updateRouteMaskWhenBtConnected()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.server.telecom.flags.update_route_mask_when_bt_connected"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist updatedRcsCallCountTracking()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.server.telecom.flags.updated_rcs_call_count_tracking"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useActualAddressToEnterConnectingState()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.server.telecom.flags.use_actual_address_to_enter_connecting_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useDeviceProvidedSerializedRingerVibration()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.server.telecom.flags.use_device_provided_serialized_ringer_vibration"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useImprovedListenerOrder()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.server.telecom.flags.use_improved_listener_order"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useRefactoredAudioRouteSwitching()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.server.telecom.flags.use_refactored_audio_route_switching"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist voipAppActionsSupport()Z
    .locals 2

    new-instance v0, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.server.telecom.flags.voip_app_actions_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
