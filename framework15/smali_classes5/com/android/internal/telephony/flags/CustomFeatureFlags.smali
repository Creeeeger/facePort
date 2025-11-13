.class public Lcom/android/internal/telephony/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/telephony/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/telephony/flags/FeatureFlags;",
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
    .locals 104
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/telephony/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v102, "com.android.internal.telephony.flags.work_profile_api_split"

    const-string v103, ""

    const-string v2, "com.android.internal.telephony.flags.add_anomaly_when_notify_config_changed_with_invalid_phone"

    const-string v3, "com.android.internal.telephony.flags.add_rat_related_suggested_action_to_ims_registration"

    const-string v4, "com.android.internal.telephony.flags.allow_mmtel_in_non_vops"

    const-string v5, "com.android.internal.telephony.flags.answer_audio_only_when_answering_via_mmi_code"

    const-string v6, "com.android.internal.telephony.flags.ap_domain_selection_enabled"

    const-string v7, "com.android.internal.telephony.flags.apn_setting_field_support_flag"

    const-string v8, "com.android.internal.telephony.flags.auto_data_switch_allow_roaming"

    const-string v9, "com.android.internal.telephony.flags.auto_data_switch_uses_data_enabled"

    const-string v10, "com.android.internal.telephony.flags.backup_and_restore_for_enable_2g"

    const-string v11, "com.android.internal.telephony.flags.call_extra_for_non_hold_supported_carriers"

    const-string v12, "com.android.internal.telephony.flags.carrier_enabled_satellite_flag"

    const-string v13, "com.android.internal.telephony.flags.carrier_restriction_rules_enhancement"

    const-string v14, "com.android.internal.telephony.flags.carrier_restriction_status"

    const-string v15, "com.android.internal.telephony.flags.carrier_roaming_nb_iot_ntn"

    const-string v16, "com.android.internal.telephony.flags.change_method_of_obtaining_ims_registration_radio_tech"

    const-string v17, "com.android.internal.telephony.flags.cleanup_open_logical_channel_record_on_dispose"

    const-string v18, "com.android.internal.telephony.flags.clear_cached_ims_phone_number_when_device_lost_ims_registration"

    const-string v19, "com.android.internal.telephony.flags.combine_ril_death_handle"

    const-string v20, "com.android.internal.telephony.flags.conference_hold_unhold_changed_to_send_message"

    const-string v21, "com.android.internal.telephony.flags.data_call_session_stats_captures_cross_sim_calling"

    const-string v22, "com.android.internal.telephony.flags.data_only_cellular_service"

    const-string v23, "com.android.internal.telephony.flags.data_only_service_allow_emergency_call_only"

    const-string v24, "com.android.internal.telephony.flags.data_rat_metric_enabled"

    const-string v25, "com.android.internal.telephony.flags.dismiss_network_selection_notification_on_sim_disable"

    const-string v26, "com.android.internal.telephony.flags.do_not_override_precise_label"

    const-string v27, "com.android.internal.telephony.flags.domain_selection_metrics_enabled"

    const-string v28, "com.android.internal.telephony.flags.dsrs_diagnostics_enabled"

    const-string v29, "com.android.internal.telephony.flags.emergency_registration_state"

    const-string v30, "com.android.internal.telephony.flags.enable_aead_algorithms"

    const-string v31, "com.android.internal.telephony.flags.enable_carrier_config_n1_control_attempt2"

    const-string v32, "com.android.internal.telephony.flags.enable_identifier_disclosure_transparency"

    const-string v33, "com.android.internal.telephony.flags.enable_identifier_disclosure_transparency_unsol_events"

    const-string v34, "com.android.internal.telephony.flags.enable_modem_cipher_transparency"

    const-string v35, "com.android.internal.telephony.flags.enable_modem_cipher_transparency_unsol_events"

    const-string v36, "com.android.internal.telephony.flags.enable_multiple_sa_proposals"

    const-string v37, "com.android.internal.telephony.flags.enable_sip_subscribe_retry"

    const-string v38, "com.android.internal.telephony.flags.enable_telephony_analytics"

    const-string v39, "com.android.internal.telephony.flags.enable_wps_check_api_flag"

    const-string v40, "com.android.internal.telephony.flags.enforce_subscription_user_filter"

    const-string v41, "com.android.internal.telephony.flags.enforce_telephony_feature_mapping"

    const-string v42, "com.android.internal.telephony.flags.enforce_telephony_feature_mapping_for_public_apis"

    const-string v43, "com.android.internal.telephony.flags.ensure_access_to_call_settings_is_restricted"

    const-string v44, "com.android.internal.telephony.flags.esim_available_memory"

    const-string v45, "com.android.internal.telephony.flags.esim_bootstrap_provisioning_flag"

    const-string v46, "com.android.internal.telephony.flags.fix_crash_on_getting_config_when_phone_is_gone"

    const-string v47, "com.android.internal.telephony.flags.force_iwlan_mms"

    const-string v48, "com.android.internal.telephony.flags.geofence_enhancement_for_better_ux"

    const-string v49, "com.android.internal.telephony.flags.hide_prefer_3g_item"

    const-string v50, "com.android.internal.telephony.flags.hide_preinstalled_carrier_app_at_most_once"

    const-string v51, "com.android.internal.telephony.flags.hide_roaming_icon"

    const-string v52, "com.android.internal.telephony.flags.ignore_already_terminated_incoming_call_before_registering_listener"

    const-string v53, "com.android.internal.telephony.flags.ignore_existing_networks_for_internet_allowed_checking"

    const-string v54, "com.android.internal.telephony.flags.imsi_key_retry_download_on_phone_unlock"

    const-string v55, "com.android.internal.telephony.flags.keep_empty_requests_network"

    const-string v56, "com.android.internal.telephony.flags.log_mms_sms_database_access_info"

    const-string v57, "com.android.internal.telephony.flags.metered_embb_urlcc"

    const-string v58, "com.android.internal.telephony.flags.minimal_telephony_cdm_check"

    const-string v59, "com.android.internal.telephony.flags.minimal_telephony_managers_conditional_on_features"

    const-string v60, "com.android.internal.telephony.flags.mms_disabled_error"

    const-string v61, "com.android.internal.telephony.flags.mms_get_apn_from_pdsc"

    const-string v62, "com.android.internal.telephony.flags.network_registration_info_reject_cause"

    const-string v63, "com.android.internal.telephony.flags.network_validation"

    const-string v64, "com.android.internal.telephony.flags.notify_data_activity_changed_with_slot"

    const-string v65, "com.android.internal.telephony.flags.notify_initial_ims_provisioning_status"

    const-string v66, "com.android.internal.telephony.flags.oem_enabled_satellite_flag"

    const-string v67, "com.android.internal.telephony.flags.prevent_invocation_repeat_of_ril_call_when_device_does_not_support_voice"

    const-string v68, "com.android.internal.telephony.flags.prevent_system_server_and_phone_deadlock"

    const-string v69, "com.android.internal.telephony.flags.reconnect_qualified_network"

    const-string v70, "com.android.internal.telephony.flags.refine_preferred_data_profile_selection"

    const-string v71, "com.android.internal.telephony.flags.relax_ho_teardown"

    const-string v72, "com.android.internal.telephony.flags.remove_country_code_from_local_singapore_calls"

    const-string v73, "com.android.internal.telephony.flags.reorganize_roaming_notification"

    const-string v74, "com.android.internal.telephony.flags.reset_mobile_network_settings"

    const-string v75, "com.android.internal.telephony.flags.reset_primary_sim_default_values"

    const-string v76, "com.android.internal.telephony.flags.roaming_notification_for_single_data_network"

    const-string v77, "com.android.internal.telephony.flags.safer_get_phone_number"

    const-string v78, "com.android.internal.telephony.flags.satellite_internet"

    const-string v79, "com.android.internal.telephony.flags.satellite_persistent_logging"

    const-string v80, "com.android.internal.telephony.flags.set_carrier_restriction_status"

    const-string v81, "com.android.internal.telephony.flags.set_no_reply_timer_for_cfnry"

    const-string v82, "com.android.internal.telephony.flags.set_number_of_sim_for_ims_enable"

    const-string v83, "com.android.internal.telephony.flags.show_call_fail_notification_for_2g_toggle"

    const-string v84, "com.android.internal.telephony.flags.show_call_id_and_call_waiting_in_additional_settings_menu"

    const-string v85, "com.android.internal.telephony.flags.simultaneous_calling_indications"

    const-string v86, "com.android.internal.telephony.flags.slicing_additional_error_codes"

    const-string v87, "com.android.internal.telephony.flags.sms_domain_selection_enabled"

    const-string v88, "com.android.internal.telephony.flags.stop_spamming_emergency_notification"

    const-string v89, "com.android.internal.telephony.flags.subscription_user_association_query"

    const-string v90, "com.android.internal.telephony.flags.support_nr_sa_rrc_idle"

    const-string v91, "com.android.internal.telephony.flags.support_psim_to_esim_conversion"

    const-string v92, "com.android.internal.telephony.flags.terminate_active_video_call_when_accepting_second_video_call_as_audio_only"

    const-string v93, "com.android.internal.telephony.flags.unregister_sms_broadcast_receiver_from_cat_service"

    const-string v94, "com.android.internal.telephony.flags.unthrottle_check_transport"

    const-string v95, "com.android.internal.telephony.flags.update_ims_service_by_gathering_provisioning_changes"

    const-string v96, "com.android.internal.telephony.flags.update_roaming_state_to_set_wfc_mode"

    const-string v97, "com.android.internal.telephony.flags.use_alarm_callback"

    const-string v98, "com.android.internal.telephony.flags.use_aosp_domain_selection_service"

    const-string v99, "com.android.internal.telephony.flags.use_oem_domain_selection_service"

    const-string v100, "com.android.internal.telephony.flags.use_relaxed_id_match"

    const-string v101, "com.android.internal.telephony.flags.vonr_enabled_metric"

    filled-new-array/range {v2 .. v103}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist addAnomalyWhenNotifyConfigChangedWithInvalidPhone()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.add_anomaly_when_notify_config_changed_with_invalid_phone"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist addRatRelatedSuggestedActionToImsRegistration()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.add_rat_related_suggested_action_to_ims_registration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist allowMmtelInNonVops()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.allow_mmtel_in_non_vops"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist answerAudioOnlyWhenAnsweringViaMmiCode()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.answer_audio_only_when_answering_via_mmi_code"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist apDomainSelectionEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ap_domain_selection_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist apnSettingFieldSupportFlag()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.apn_setting_field_support_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist autoDataSwitchAllowRoaming()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.auto_data_switch_allow_roaming"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist autoDataSwitchUsesDataEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.auto_data_switch_uses_data_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist backupAndRestoreForEnable2g()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.backup_and_restore_for_enable_2g"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist callExtraForNonHoldSupportedCarriers()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.call_extra_for_non_hold_supported_carriers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist carrierEnabledSatelliteFlag()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_enabled_satellite_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist carrierRestrictionRulesEnhancement()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_restriction_rules_enhancement"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist carrierRestrictionStatus()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_restriction_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist carrierRoamingNbIotNtn()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.carrier_roaming_nb_iot_ntn"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist changeMethodOfObtainingImsRegistrationRadioTech()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.change_method_of_obtaining_ims_registration_radio_tech"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cleanupOpenLogicalChannelRecordOnDispose()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.cleanup_open_logical_channel_record_on_dispose"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist clearCachedImsPhoneNumberWhenDeviceLostImsRegistration()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.clear_cached_ims_phone_number_when_device_lost_ims_registration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist combineRilDeathHandle()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.combine_ril_death_handle"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist conferenceHoldUnholdChangedToSendMessage()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.conference_hold_unhold_changed_to_send_message"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dataCallSessionStatsCapturesCrossSimCalling()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.data_call_session_stats_captures_cross_sim_calling"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dataOnlyCellularService()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.data_only_cellular_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dataOnlyServiceAllowEmergencyCallOnly()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.data_only_service_allow_emergency_call_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dataRatMetricEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.data_rat_metric_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dismissNetworkSelectionNotificationOnSimDisable()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.dismiss_network_selection_notification_on_sim_disable"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist doNotOverridePreciseLabel()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.do_not_override_precise_label"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist domainSelectionMetricsEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.domain_selection_metrics_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dsrsDiagnosticsEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.dsrs_diagnostics_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist emergencyRegistrationState()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.emergency_registration_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableAeadAlgorithms()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_aead_algorithms"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableCarrierConfigN1ControlAttempt2()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_carrier_config_n1_control_attempt2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableIdentifierDisclosureTransparency()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_identifier_disclosure_transparency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableIdentifierDisclosureTransparencyUnsolEvents()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_identifier_disclosure_transparency_unsol_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableModemCipherTransparency()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_modem_cipher_transparency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableModemCipherTransparencyUnsolEvents()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_modem_cipher_transparency_unsol_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableMultipleSaProposals()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_multiple_sa_proposals"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableSipSubscribeRetry()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_sip_subscribe_retry"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableTelephonyAnalytics()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_telephony_analytics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableWpsCheckApiFlag()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enable_wps_check_api_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enforceSubscriptionUserFilter()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enforce_subscription_user_filter"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enforceTelephonyFeatureMapping()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enforce_telephony_feature_mapping"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enforceTelephonyFeatureMappingForPublicApis()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.enforce_telephony_feature_mapping_for_public_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ensureAccessToCallSettingsIsRestricted()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ensure_access_to_call_settings_is_restricted"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist esimAvailableMemory()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.esim_available_memory"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist esimBootstrapProvisioningFlag()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.esim_bootstrap_provisioning_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixCrashOnGettingConfigWhenPhoneIsGone()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.fix_crash_on_getting_config_when_phone_is_gone"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist forceIwlanMms()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.force_iwlan_mms"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist geofenceEnhancementForBetterUx()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.geofence_enhancement_for_better_ux"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 101
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v99, "com.android.internal.telephony.flags.vonr_enabled_metric"

    const-string v100, "com.android.internal.telephony.flags.work_profile_api_split"

    const-string v0, "com.android.internal.telephony.flags.add_anomaly_when_notify_config_changed_with_invalid_phone"

    const-string v1, "com.android.internal.telephony.flags.add_rat_related_suggested_action_to_ims_registration"

    const-string v2, "com.android.internal.telephony.flags.allow_mmtel_in_non_vops"

    const-string v3, "com.android.internal.telephony.flags.answer_audio_only_when_answering_via_mmi_code"

    const-string v4, "com.android.internal.telephony.flags.ap_domain_selection_enabled"

    const-string v5, "com.android.internal.telephony.flags.apn_setting_field_support_flag"

    const-string v6, "com.android.internal.telephony.flags.auto_data_switch_allow_roaming"

    const-string v7, "com.android.internal.telephony.flags.auto_data_switch_uses_data_enabled"

    const-string v8, "com.android.internal.telephony.flags.backup_and_restore_for_enable_2g"

    const-string v9, "com.android.internal.telephony.flags.call_extra_for_non_hold_supported_carriers"

    const-string v10, "com.android.internal.telephony.flags.carrier_enabled_satellite_flag"

    const-string v11, "com.android.internal.telephony.flags.carrier_restriction_rules_enhancement"

    const-string v12, "com.android.internal.telephony.flags.carrier_restriction_status"

    const-string v13, "com.android.internal.telephony.flags.carrier_roaming_nb_iot_ntn"

    const-string v14, "com.android.internal.telephony.flags.change_method_of_obtaining_ims_registration_radio_tech"

    const-string v15, "com.android.internal.telephony.flags.cleanup_open_logical_channel_record_on_dispose"

    const-string v16, "com.android.internal.telephony.flags.clear_cached_ims_phone_number_when_device_lost_ims_registration"

    const-string v17, "com.android.internal.telephony.flags.combine_ril_death_handle"

    const-string v18, "com.android.internal.telephony.flags.conference_hold_unhold_changed_to_send_message"

    const-string v19, "com.android.internal.telephony.flags.data_call_session_stats_captures_cross_sim_calling"

    const-string v20, "com.android.internal.telephony.flags.data_only_cellular_service"

    const-string v21, "com.android.internal.telephony.flags.data_only_service_allow_emergency_call_only"

    const-string v22, "com.android.internal.telephony.flags.data_rat_metric_enabled"

    const-string v23, "com.android.internal.telephony.flags.dismiss_network_selection_notification_on_sim_disable"

    const-string v24, "com.android.internal.telephony.flags.do_not_override_precise_label"

    const-string v25, "com.android.internal.telephony.flags.domain_selection_metrics_enabled"

    const-string v26, "com.android.internal.telephony.flags.dsrs_diagnostics_enabled"

    const-string v27, "com.android.internal.telephony.flags.emergency_registration_state"

    const-string v28, "com.android.internal.telephony.flags.enable_aead_algorithms"

    const-string v29, "com.android.internal.telephony.flags.enable_carrier_config_n1_control_attempt2"

    const-string v30, "com.android.internal.telephony.flags.enable_identifier_disclosure_transparency"

    const-string v31, "com.android.internal.telephony.flags.enable_identifier_disclosure_transparency_unsol_events"

    const-string v32, "com.android.internal.telephony.flags.enable_modem_cipher_transparency"

    const-string v33, "com.android.internal.telephony.flags.enable_modem_cipher_transparency_unsol_events"

    const-string v34, "com.android.internal.telephony.flags.enable_multiple_sa_proposals"

    const-string v35, "com.android.internal.telephony.flags.enable_sip_subscribe_retry"

    const-string v36, "com.android.internal.telephony.flags.enable_telephony_analytics"

    const-string v37, "com.android.internal.telephony.flags.enable_wps_check_api_flag"

    const-string v38, "com.android.internal.telephony.flags.enforce_subscription_user_filter"

    const-string v39, "com.android.internal.telephony.flags.enforce_telephony_feature_mapping"

    const-string v40, "com.android.internal.telephony.flags.enforce_telephony_feature_mapping_for_public_apis"

    const-string v41, "com.android.internal.telephony.flags.ensure_access_to_call_settings_is_restricted"

    const-string v42, "com.android.internal.telephony.flags.esim_available_memory"

    const-string v43, "com.android.internal.telephony.flags.esim_bootstrap_provisioning_flag"

    const-string v44, "com.android.internal.telephony.flags.fix_crash_on_getting_config_when_phone_is_gone"

    const-string v45, "com.android.internal.telephony.flags.force_iwlan_mms"

    const-string v46, "com.android.internal.telephony.flags.geofence_enhancement_for_better_ux"

    const-string v47, "com.android.internal.telephony.flags.hide_prefer_3g_item"

    const-string v48, "com.android.internal.telephony.flags.hide_preinstalled_carrier_app_at_most_once"

    const-string v49, "com.android.internal.telephony.flags.hide_roaming_icon"

    const-string v50, "com.android.internal.telephony.flags.ignore_already_terminated_incoming_call_before_registering_listener"

    const-string v51, "com.android.internal.telephony.flags.ignore_existing_networks_for_internet_allowed_checking"

    const-string v52, "com.android.internal.telephony.flags.imsi_key_retry_download_on_phone_unlock"

    const-string v53, "com.android.internal.telephony.flags.keep_empty_requests_network"

    const-string v54, "com.android.internal.telephony.flags.log_mms_sms_database_access_info"

    const-string v55, "com.android.internal.telephony.flags.metered_embb_urlcc"

    const-string v56, "com.android.internal.telephony.flags.minimal_telephony_cdm_check"

    const-string v57, "com.android.internal.telephony.flags.minimal_telephony_managers_conditional_on_features"

    const-string v58, "com.android.internal.telephony.flags.mms_disabled_error"

    const-string v59, "com.android.internal.telephony.flags.mms_get_apn_from_pdsc"

    const-string v60, "com.android.internal.telephony.flags.network_registration_info_reject_cause"

    const-string v61, "com.android.internal.telephony.flags.network_validation"

    const-string v62, "com.android.internal.telephony.flags.notify_data_activity_changed_with_slot"

    const-string v63, "com.android.internal.telephony.flags.notify_initial_ims_provisioning_status"

    const-string v64, "com.android.internal.telephony.flags.oem_enabled_satellite_flag"

    const-string v65, "com.android.internal.telephony.flags.prevent_invocation_repeat_of_ril_call_when_device_does_not_support_voice"

    const-string v66, "com.android.internal.telephony.flags.prevent_system_server_and_phone_deadlock"

    const-string v67, "com.android.internal.telephony.flags.reconnect_qualified_network"

    const-string v68, "com.android.internal.telephony.flags.refine_preferred_data_profile_selection"

    const-string v69, "com.android.internal.telephony.flags.relax_ho_teardown"

    const-string v70, "com.android.internal.telephony.flags.remove_country_code_from_local_singapore_calls"

    const-string v71, "com.android.internal.telephony.flags.reorganize_roaming_notification"

    const-string v72, "com.android.internal.telephony.flags.reset_mobile_network_settings"

    const-string v73, "com.android.internal.telephony.flags.reset_primary_sim_default_values"

    const-string v74, "com.android.internal.telephony.flags.roaming_notification_for_single_data_network"

    const-string v75, "com.android.internal.telephony.flags.safer_get_phone_number"

    const-string v76, "com.android.internal.telephony.flags.satellite_internet"

    const-string v77, "com.android.internal.telephony.flags.satellite_persistent_logging"

    const-string v78, "com.android.internal.telephony.flags.set_carrier_restriction_status"

    const-string v79, "com.android.internal.telephony.flags.set_no_reply_timer_for_cfnry"

    const-string v80, "com.android.internal.telephony.flags.set_number_of_sim_for_ims_enable"

    const-string v81, "com.android.internal.telephony.flags.show_call_fail_notification_for_2g_toggle"

    const-string v82, "com.android.internal.telephony.flags.show_call_id_and_call_waiting_in_additional_settings_menu"

    const-string v83, "com.android.internal.telephony.flags.simultaneous_calling_indications"

    const-string v84, "com.android.internal.telephony.flags.slicing_additional_error_codes"

    const-string v85, "com.android.internal.telephony.flags.sms_domain_selection_enabled"

    const-string v86, "com.android.internal.telephony.flags.stop_spamming_emergency_notification"

    const-string v87, "com.android.internal.telephony.flags.subscription_user_association_query"

    const-string v88, "com.android.internal.telephony.flags.support_nr_sa_rrc_idle"

    const-string v89, "com.android.internal.telephony.flags.support_psim_to_esim_conversion"

    const-string v90, "com.android.internal.telephony.flags.terminate_active_video_call_when_accepting_second_video_call_as_audio_only"

    const-string v91, "com.android.internal.telephony.flags.unregister_sms_broadcast_receiver_from_cat_service"

    const-string v92, "com.android.internal.telephony.flags.unthrottle_check_transport"

    const-string v93, "com.android.internal.telephony.flags.update_ims_service_by_gathering_provisioning_changes"

    const-string v94, "com.android.internal.telephony.flags.update_roaming_state_to_set_wfc_mode"

    const-string v95, "com.android.internal.telephony.flags.use_alarm_callback"

    const-string v96, "com.android.internal.telephony.flags.use_aosp_domain_selection_service"

    const-string v97, "com.android.internal.telephony.flags.use_oem_domain_selection_service"

    const-string v98, "com.android.internal.telephony.flags.use_relaxed_id_match"

    filled-new-array/range {v0 .. v100}, [Ljava/lang/String;

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
            "Lcom/android/internal/telephony/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist hidePrefer3gItem()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.hide_prefer_3g_item"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist hidePreinstalledCarrierAppAtMostOnce()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.hide_preinstalled_carrier_app_at_most_once"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist hideRoamingIcon()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.hide_roaming_icon"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ignoreAlreadyTerminatedIncomingCallBeforeRegisteringListener()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ignore_already_terminated_incoming_call_before_registering_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ignoreExistingNetworksForInternetAllowedChecking()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.ignore_existing_networks_for_internet_allowed_checking"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist imsiKeyRetryDownloadOnPhoneUnlock()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.imsi_key_retry_download_on_phone_unlock"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist keepEmptyRequestsNetwork()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.keep_empty_requests_network"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist logMmsSmsDatabaseAccessInfo()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.log_mms_sms_database_access_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist meteredEmbbUrlcc()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.metered_embb_urlcc"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist minimalTelephonyCdmCheck()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.minimal_telephony_cdm_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist minimalTelephonyManagersConditionalOnFeatures()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.minimal_telephony_managers_conditional_on_features"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist mmsDisabledError()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.mms_disabled_error"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist mmsGetApnFromPdsc()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.mms_get_apn_from_pdsc"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist networkRegistrationInfoRejectCause()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.network_registration_info_reject_cause"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist networkValidation()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.network_validation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notifyDataActivityChangedWithSlot()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.notify_data_activity_changed_with_slot"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notifyInitialImsProvisioningStatus()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.notify_initial_ims_provisioning_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist oemEnabledSatelliteFlag()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.oem_enabled_satellite_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist preventInvocationRepeatOfRilCallWhenDeviceDoesNotSupportVoice()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.prevent_invocation_repeat_of_ril_call_when_device_does_not_support_voice"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist preventSystemServerAndPhoneDeadlock()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.prevent_system_server_and_phone_deadlock"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reconnectQualifiedNetwork()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.reconnect_qualified_network"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist refinePreferredDataProfileSelection()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.refine_preferred_data_profile_selection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist relaxHoTeardown()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.relax_ho_teardown"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist removeCountryCodeFromLocalSingaporeCalls()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.remove_country_code_from_local_singapore_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reorganizeRoamingNotification()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.reorganize_roaming_notification"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist resetMobileNetworkSettings()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.reset_mobile_network_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist resetPrimarySimDefaultValues()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.reset_primary_sim_default_values"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist roamingNotificationForSingleDataNetwork()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.roaming_notification_for_single_data_network"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist saferGetPhoneNumber()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.safer_get_phone_number"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist satelliteInternet()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_internet"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist satellitePersistentLogging()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.satellite_persistent_logging"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setCarrierRestrictionStatus()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.set_carrier_restriction_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setNoReplyTimerForCfnry()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.set_no_reply_timer_for_cfnry"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setNumberOfSimForImsEnable()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.set_number_of_sim_for_ims_enable"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist showCallFailNotificationFor2gToggle()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.show_call_fail_notification_for_2g_toggle"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist showCallIdAndCallWaitingInAdditionalSettingsMenu()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.show_call_id_and_call_waiting_in_additional_settings_menu"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist simultaneousCallingIndications()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.simultaneous_calling_indications"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist slicingAdditionalErrorCodes()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.slicing_additional_error_codes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist smsDomainSelectionEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.sms_domain_selection_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist stopSpammingEmergencyNotification()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.stop_spamming_emergency_notification"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist subscriptionUserAssociationQuery()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.subscription_user_association_query"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist supportNrSaRrcIdle()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_nr_sa_rrc_idle"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist supportPsimToEsimConversion()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.support_psim_to_esim_conversion"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist terminateActiveVideoCallWhenAcceptingSecondVideoCallAsAudioOnly()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.terminate_active_video_call_when_accepting_second_video_call_as_audio_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist unregisterSmsBroadcastReceiverFromCatService()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.unregister_sms_broadcast_receiver_from_cat_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist unthrottleCheckTransport()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.unthrottle_check_transport"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist updateImsServiceByGatheringProvisioningChanges()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.update_ims_service_by_gathering_provisioning_changes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist updateRoamingStateToSetWfcMode()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.update_roaming_state_to_set_wfc_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useAlarmCallback()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.use_alarm_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useAospDomainSelectionService()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.use_aosp_domain_selection_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useOemDomainSelectionService()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.use_oem_domain_selection_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useRelaxedIdMatch()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.use_relaxed_id_match"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vonrEnabledMetric()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.vonr_enabled_metric"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist workProfileApiSplit()Z
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;

    invoke-direct {v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;-><init>()V

    const-string v1, "com.android.internal.telephony.flags.work_profile_api_split"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
