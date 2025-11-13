.class public final Lcom/android/server/telecom/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_CALL_URI_FOR_MISSED_CALLS:Ljava/lang/String; = "com.android.server.telecom.flags.add_call_uri_for_missed_calls"

.field public static final blacklist FLAG_ASSOCIATED_USER_REFACTOR_FOR_WORK_PROFILE:Ljava/lang/String; = "com.android.server.telecom.flags.associated_user_refactor_for_work_profile"

.field public static final blacklist FLAG_AVAILABLE_ROUTES_NEVER_UPDATED_AFTER_SET_SYSTEM_AUDIO_STATE:Ljava/lang/String; = "com.android.server.telecom.flags.available_routes_never_updated_after_set_system_audio_state"

.field public static final blacklist FLAG_BUSINESS_CALL_COMPOSER:Ljava/lang/String; = "com.android.server.telecom.flags.business_call_composer"

.field public static final blacklist FLAG_CACHE_CALL_AUDIO_CALLBACKS:Ljava/lang/String; = "com.android.server.telecom.flags.cache_call_audio_callbacks"

.field public static final blacklist FLAG_CALL_AUDIO_COMMUNICATION_DEVICE_REFACTOR:Ljava/lang/String; = "com.android.server.telecom.flags.call_audio_communication_device_refactor"

.field public static final blacklist FLAG_CALL_DETAILS_ID_CHANGES:Ljava/lang/String; = "com.android.server.telecom.flags.call_details_id_changes"

.field public static final blacklist FLAG_CANCEL_REMOVAL_ON_EMERGENCY_REDIAL:Ljava/lang/String; = "com.android.server.telecom.flags.cancel_removal_on_emergency_redial"

.field public static final blacklist FLAG_CLEAR_COMMUNICATION_DEVICE_AFTER_AUDIO_OPS_COMPLETE:Ljava/lang/String; = "com.android.server.telecom.flags.clear_communication_device_after_audio_ops_complete"

.field public static final blacklist FLAG_COMMUNICATION_DEVICE_PROTECTED_BY_LOCK:Ljava/lang/String; = "com.android.server.telecom.flags.communication_device_protected_by_lock"

.field public static final blacklist FLAG_EARLY_BINDING_TO_INCALL_SERVICE:Ljava/lang/String; = "com.android.server.telecom.flags.early_binding_to_incall_service"

.field public static final blacklist FLAG_EARLY_UPDATE_INTERNAL_CALL_AUDIO_STATE:Ljava/lang/String; = "com.android.server.telecom.flags.early_update_internal_call_audio_state"

.field public static final blacklist FLAG_ECC_KEYGUARD:Ljava/lang/String; = "com.android.server.telecom.flags.ecc_keyguard"

.field public static final blacklist FLAG_ENABLE_CALL_SEQUENCING:Ljava/lang/String; = "com.android.server.telecom.flags.enable_call_sequencing"

.field public static final blacklist FLAG_ENSURE_AUDIO_MODE_UPDATES_ON_FOREGROUND_CALL_CHANGE:Ljava/lang/String; = "com.android.server.telecom.flags.ensure_audio_mode_updates_on_foreground_call_change"

.field public static final blacklist FLAG_FIX_AUDIO_FLICKER_FOR_OUTGOING_CALLS:Ljava/lang/String; = "com.android.server.telecom.flags.fix_audio_flicker_for_outgoing_calls"

.field public static final blacklist FLAG_GEN_ANOM_REPORT_ON_FOCUS_TIMEOUT:Ljava/lang/String; = "com.android.server.telecom.flags.gen_anom_report_on_focus_timeout"

.field public static final blacklist FLAG_GET_LAST_KNOWN_CELL_IDENTITY:Ljava/lang/String; = "com.android.server.telecom.flags.get_last_known_cell_identity"

.field public static final blacklist FLAG_GET_REGISTERED_PHONE_ACCOUNTS:Ljava/lang/String; = "com.android.server.telecom.flags.get_registered_phone_accounts"

.field public static final blacklist FLAG_IGNORE_AUTO_ROUTE_TO_WATCH_DEVICE:Ljava/lang/String; = "com.android.server.telecom.flags.ignore_auto_route_to_watch_device"

.field public static final blacklist FLAG_IS_NEW_OUTGOING_CALL_BROADCAST_UNBLOCKING:Ljava/lang/String; = "com.android.server.telecom.flags.is_new_outgoing_call_broadcast_unblocking"

.field public static final blacklist FLAG_ONLY_UPDATE_TELEPHONY_ON_VALID_SUB_IDS:Ljava/lang/String; = "com.android.server.telecom.flags.only_update_telephony_on_valid_sub_ids"

.field public static final blacklist FLAG_POSTPONE_REGISTER_TO_LEAUDIO:Ljava/lang/String; = "com.android.server.telecom.flags.postpone_register_to_leaudio"

.field public static final blacklist FLAG_PROFILE_USER_SUPPORT:Ljava/lang/String; = "com.android.server.telecom.flags.profile_user_support"

.field public static final blacklist FLAG_RESET_MUTE_WHEN_ENTERING_QUIESCENT_BT_ROUTE:Ljava/lang/String; = "com.android.server.telecom.flags.reset_mute_when_entering_quiescent_bt_route"

.field public static final blacklist FLAG_RESOLVE_SWITCHING_BT_DEVICES_COMPUTATION:Ljava/lang/String; = "com.android.server.telecom.flags.resolve_switching_bt_devices_computation"

.field public static final blacklist FLAG_SEPARATELY_BIND_TO_BT_INCALL_SERVICE:Ljava/lang/String; = "com.android.server.telecom.flags.separately_bind_to_bt_incall_service"

.field public static final blacklist FLAG_SET_AUDIO_MODE_BEFORE_ABANDON_FOCUS:Ljava/lang/String; = "com.android.server.telecom.flags.set_audio_mode_before_abandon_focus"

.field public static final blacklist FLAG_SET_MUTE_STATE:Ljava/lang/String; = "com.android.server.telecom.flags.set_mute_state"

.field public static final blacklist FLAG_SET_REMOTE_CONNECTION_CALL_ID:Ljava/lang/String; = "com.android.server.telecom.flags.set_remote_connection_call_id"

.field public static final blacklist FLAG_SKIP_FILTER_PHONE_ACCOUNT_PERFORM_DND_FILTER:Ljava/lang/String; = "com.android.server.telecom.flags.skip_filter_phone_account_perform_dnd_filter"

.field public static final blacklist FLAG_TELECOM_LOG_EXTERNAL_WEARABLE_CALLS:Ljava/lang/String; = "com.android.server.telecom.flags.telecom_log_external_wearable_calls"

.field public static final blacklist FLAG_TELECOM_MAINLINE_BLOCKED_NUMBERS_MANAGER:Ljava/lang/String; = "com.android.server.telecom.flags.telecom_mainline_blocked_numbers_manager"

.field public static final blacklist FLAG_TELECOM_RESOLVE_HIDDEN_DEPENDENCIES:Ljava/lang/String; = "com.android.server.telecom.flags.telecom_resolve_hidden_dependencies"

.field public static final blacklist FLAG_TELECOM_SKIP_LOG_BASED_ON_EXTRA:Ljava/lang/String; = "com.android.server.telecom.flags.telecom_skip_log_based_on_extra"

.field public static final blacklist FLAG_TELEPHONY_HAS_DEFAULT_BUT_TELECOM_DOES_NOT:Ljava/lang/String; = "com.android.server.telecom.flags.telephony_has_default_but_telecom_does_not"

.field public static final blacklist FLAG_TRANSACTIONAL_CS_VERIFIER:Ljava/lang/String; = "com.android.server.telecom.flags.transactional_cs_verifier"

.field public static final blacklist FLAG_TRANSACTIONAL_HOLD_DISCONNECTS_UNHOLDABLE:Ljava/lang/String; = "com.android.server.telecom.flags.transactional_hold_disconnects_unholdable"

.field public static final blacklist FLAG_TRANSACTIONAL_VIDEO_STATE:Ljava/lang/String; = "com.android.server.telecom.flags.transactional_video_state"

.field public static final blacklist FLAG_TRANSIT_ROUTE_BEFORE_AUDIO_DISCONNECT_BT:Ljava/lang/String; = "com.android.server.telecom.flags.transit_route_before_audio_disconnect_bt"

.field public static final blacklist FLAG_UNREGISTER_UNRESOLVABLE_ACCOUNTS:Ljava/lang/String; = "com.android.server.telecom.flags.unregister_unresolvable_accounts"

.field public static final blacklist FLAG_UPDATED_RCS_CALL_COUNT_TRACKING:Ljava/lang/String; = "com.android.server.telecom.flags.updated_rcs_call_count_tracking"

.field public static final blacklist FLAG_UPDATE_ROUTE_MASK_WHEN_BT_CONNECTED:Ljava/lang/String; = "com.android.server.telecom.flags.update_route_mask_when_bt_connected"

.field public static final blacklist FLAG_USE_ACTUAL_ADDRESS_TO_ENTER_CONNECTING_STATE:Ljava/lang/String; = "com.android.server.telecom.flags.use_actual_address_to_enter_connecting_state"

.field public static final blacklist FLAG_USE_DEVICE_PROVIDED_SERIALIZED_RINGER_VIBRATION:Ljava/lang/String; = "com.android.server.telecom.flags.use_device_provided_serialized_ringer_vibration"

.field public static final blacklist FLAG_USE_IMPROVED_LISTENER_ORDER:Ljava/lang/String; = "com.android.server.telecom.flags.use_improved_listener_order"

.field public static final blacklist FLAG_USE_REFACTORED_AUDIO_ROUTE_SWITCHING:Ljava/lang/String; = "com.android.server.telecom.flags.use_refactored_audio_route_switching"

.field public static final blacklist FLAG_VOIP_APP_ACTIONS_SUPPORT:Ljava/lang/String; = "com.android.server.telecom.flags.voip_app_actions_support"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/telecom/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addCallUriForMissedCalls()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->addCallUriForMissedCalls()Z

    move-result v0

    return v0
.end method

.method public static greylist associatedUserRefactorForWorkProfile()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->associatedUserRefactorForWorkProfile()Z

    move-result v0

    return v0
.end method

.method public static greylist availableRoutesNeverUpdatedAfterSetSystemAudioState()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->availableRoutesNeverUpdatedAfterSetSystemAudioState()Z

    move-result v0

    return v0
.end method

.method public static greylist businessCallComposer()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->businessCallComposer()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheCallAudioCallbacks()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->cacheCallAudioCallbacks()Z

    move-result v0

    return v0
.end method

.method public static greylist callAudioCommunicationDeviceRefactor()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->callAudioCommunicationDeviceRefactor()Z

    move-result v0

    return v0
.end method

.method public static greylist callDetailsIdChanges()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->callDetailsIdChanges()Z

    move-result v0

    return v0
.end method

.method public static greylist cancelRemovalOnEmergencyRedial()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->cancelRemovalOnEmergencyRedial()Z

    move-result v0

    return v0
.end method

.method public static greylist clearCommunicationDeviceAfterAudioOpsComplete()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->clearCommunicationDeviceAfterAudioOpsComplete()Z

    move-result v0

    return v0
.end method

.method public static greylist communicationDeviceProtectedByLock()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->communicationDeviceProtectedByLock()Z

    move-result v0

    return v0
.end method

.method public static greylist earlyBindingToIncallService()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->earlyBindingToIncallService()Z

    move-result v0

    return v0
.end method

.method public static greylist earlyUpdateInternalCallAudioState()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->earlyUpdateInternalCallAudioState()Z

    move-result v0

    return v0
.end method

.method public static greylist eccKeyguard()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->eccKeyguard()Z

    move-result v0

    return v0
.end method

.method public static greylist enableCallSequencing()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->enableCallSequencing()Z

    move-result v0

    return v0
.end method

.method public static greylist ensureAudioModeUpdatesOnForegroundCallChange()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->ensureAudioModeUpdatesOnForegroundCallChange()Z

    move-result v0

    return v0
.end method

.method public static greylist fixAudioFlickerForOutgoingCalls()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->fixAudioFlickerForOutgoingCalls()Z

    move-result v0

    return v0
.end method

.method public static greylist genAnomReportOnFocusTimeout()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->genAnomReportOnFocusTimeout()Z

    move-result v0

    return v0
.end method

.method public static greylist getLastKnownCellIdentity()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->getLastKnownCellIdentity()Z

    move-result v0

    return v0
.end method

.method public static greylist getRegisteredPhoneAccounts()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->getRegisteredPhoneAccounts()Z

    move-result v0

    return v0
.end method

.method public static greylist ignoreAutoRouteToWatchDevice()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->ignoreAutoRouteToWatchDevice()Z

    move-result v0

    return v0
.end method

.method public static greylist isNewOutgoingCallBroadcastUnblocking()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->isNewOutgoingCallBroadcastUnblocking()Z

    move-result v0

    return v0
.end method

.method public static greylist onlyUpdateTelephonyOnValidSubIds()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->onlyUpdateTelephonyOnValidSubIds()Z

    move-result v0

    return v0
.end method

.method public static greylist postponeRegisterToLeaudio()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->postponeRegisterToLeaudio()Z

    move-result v0

    return v0
.end method

.method public static greylist profileUserSupport()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->profileUserSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist resetMuteWhenEnteringQuiescentBtRoute()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->resetMuteWhenEnteringQuiescentBtRoute()Z

    move-result v0

    return v0
.end method

.method public static greylist resolveSwitchingBtDevicesComputation()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->resolveSwitchingBtDevicesComputation()Z

    move-result v0

    return v0
.end method

.method public static greylist separatelyBindToBtIncallService()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->separatelyBindToBtIncallService()Z

    move-result v0

    return v0
.end method

.method public static greylist setAudioModeBeforeAbandonFocus()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->setAudioModeBeforeAbandonFocus()Z

    move-result v0

    return v0
.end method

.method public static greylist setMuteState()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->setMuteState()Z

    move-result v0

    return v0
.end method

.method public static greylist setRemoteConnectionCallId()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->setRemoteConnectionCallId()Z

    move-result v0

    return v0
.end method

.method public static greylist skipFilterPhoneAccountPerformDndFilter()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->skipFilterPhoneAccountPerformDndFilter()Z

    move-result v0

    return v0
.end method

.method public static greylist telecomLogExternalWearableCalls()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telecomLogExternalWearableCalls()Z

    move-result v0

    return v0
.end method

.method public static greylist telecomMainlineBlockedNumbersManager()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telecomMainlineBlockedNumbersManager()Z

    move-result v0

    return v0
.end method

.method public static greylist telecomResolveHiddenDependencies()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telecomResolveHiddenDependencies()Z

    move-result v0

    return v0
.end method

.method public static greylist telecomSkipLogBasedOnExtra()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telecomSkipLogBasedOnExtra()Z

    move-result v0

    return v0
.end method

.method public static greylist telephonyHasDefaultButTelecomDoesNot()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->telephonyHasDefaultButTelecomDoesNot()Z

    move-result v0

    return v0
.end method

.method public static greylist transactionalCsVerifier()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->transactionalCsVerifier()Z

    move-result v0

    return v0
.end method

.method public static greylist transactionalHoldDisconnectsUnholdable()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->transactionalHoldDisconnectsUnholdable()Z

    move-result v0

    return v0
.end method

.method public static greylist transactionalVideoState()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->transactionalVideoState()Z

    move-result v0

    return v0
.end method

.method public static greylist transitRouteBeforeAudioDisconnectBt()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->transitRouteBeforeAudioDisconnectBt()Z

    move-result v0

    return v0
.end method

.method public static greylist unregisterUnresolvableAccounts()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->unregisterUnresolvableAccounts()Z

    move-result v0

    return v0
.end method

.method public static greylist updateRouteMaskWhenBtConnected()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->updateRouteMaskWhenBtConnected()Z

    move-result v0

    return v0
.end method

.method public static greylist updatedRcsCallCountTracking()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->updatedRcsCallCountTracking()Z

    move-result v0

    return v0
.end method

.method public static greylist useActualAddressToEnterConnectingState()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->useActualAddressToEnterConnectingState()Z

    move-result v0

    return v0
.end method

.method public static greylist useDeviceProvidedSerializedRingerVibration()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->useDeviceProvidedSerializedRingerVibration()Z

    move-result v0

    return v0
.end method

.method public static greylist useImprovedListenerOrder()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->useImprovedListenerOrder()Z

    move-result v0

    return v0
.end method

.method public static greylist useRefactoredAudioRouteSwitching()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->useRefactoredAudioRouteSwitching()Z

    move-result v0

    return v0
.end method

.method public static greylist voipAppActionsSupport()Z
    .locals 1

    sget-object v0, Lcom/android/server/telecom/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->voipAppActionsSupport()Z

    move-result v0

    return v0
.end method
