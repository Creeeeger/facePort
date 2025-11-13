.class public final Landroid/app/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/app/FeatureFlags; = null

.field public static final blacklist FLAG_API_RICH_ONGOING:Ljava/lang/String; = "android.app.api_rich_ongoing"

.field public static final blacklist FLAG_API_TVEXTENDER:Ljava/lang/String; = "android.app.api_tvextender"

.field public static final blacklist FLAG_APP_RESTRICTIONS_API:Ljava/lang/String; = "android.app.app_restrictions_api"

.field public static final blacklist FLAG_APP_START_INFO:Ljava/lang/String; = "android.app.app_start_info"

.field public static final blacklist FLAG_APP_START_INFO_TIMESTAMPS:Ljava/lang/String; = "android.app.app_start_info_timestamps"

.field public static final blacklist FLAG_BIC_CLIENT:Ljava/lang/String; = "android.app.bic_client"

.field public static final blacklist FLAG_CATEGORY_VOICEMAIL:Ljava/lang/String; = "android.app.category_voicemail"

.field public static final blacklist FLAG_CHECK_AUTOGROUP_BEFORE_POST:Ljava/lang/String; = "android.app.check_autogroup_before_post"

.field public static final blacklist FLAG_CLEAN_UP_SPANS_AND_NEW_LINES:Ljava/lang/String; = "android.app.clean_up_spans_and_new_lines"

.field public static final blacklist FLAG_CLEAR_DNS_CACHE_ON_NETWORK_RULES_UPDATE:Ljava/lang/String; = "android.app.clear_dns_cache_on_network_rules_update"

.field public static final blacklist FLAG_COMPACT_HEADS_UP_NOTIFICATION:Ljava/lang/String; = "android.app.compact_heads_up_notification"

.field public static final blacklist FLAG_COMPACT_HEADS_UP_NOTIFICATION_REPLY:Ljava/lang/String; = "android.app.compact_heads_up_notification_reply"

.field public static final blacklist FLAG_ENABLE_FGS_TIMEOUT_CRASH_BEHAVIOR:Ljava/lang/String; = "android.app.enable_fgs_timeout_crash_behavior"

.field public static final blacklist FLAG_ENABLE_NIGHT_MODE_BINDER_CACHE:Ljava/lang/String; = "android.app.enable_night_mode_binder_cache"

.field public static final blacklist FLAG_ENABLE_PIP_UI_STATE_CALLBACK_ON_ENTERING:Ljava/lang/String; = "android.app.enable_pip_ui_state_callback_on_entering"

.field public static final blacklist FLAG_EVENLY_DIVIDED_CALL_STYLE_ACTION_LAYOUT:Ljava/lang/String; = "android.app.evenly_divided_call_style_action_layout"

.field public static final blacklist FLAG_GATE_FGS_TIMEOUT_ANR_BEHAVIOR:Ljava/lang/String; = "android.app.gate_fgs_timeout_anr_behavior"

.field public static final blacklist FLAG_GET_BINDING_UID_IMPORTANCE:Ljava/lang/String; = "android.app.get_binding_uid_importance"

.field public static final blacklist FLAG_INTRODUCE_NEW_SERVICE_ONTIMEOUT_CALLBACK:Ljava/lang/String; = "android.app.introduce_new_service_ontimeout_callback"

.field public static final blacklist FLAG_KEYGUARD_PRIVATE_NOTIFICATIONS:Ljava/lang/String; = "android.app.keyguard_private_notifications"

.field public static final blacklist FLAG_LIFETIME_EXTENSION_REFACTOR:Ljava/lang/String; = "android.app.lifetime_extension_refactor"

.field public static final blacklist FLAG_MODES_API:Ljava/lang/String; = "android.app.modes_api"

.field public static final blacklist FLAG_MODES_UI:Ljava/lang/String; = "android.app.modes_ui"

.field public static final blacklist FLAG_NOTIFICATIONS_USE_APP_ICON:Ljava/lang/String; = "android.app.notifications_use_app_icon"

.field public static final blacklist FLAG_NOTIFICATIONS_USE_APP_ICON_IN_ROW:Ljava/lang/String; = "android.app.notifications_use_app_icon_in_row"

.field public static final blacklist FLAG_NOTIFICATIONS_USE_MONOCHROME_APP_ICON:Ljava/lang/String; = "android.app.notifications_use_monochrome_app_icon"

.field public static final blacklist FLAG_NOTIFICATION_CHANNEL_VIBRATION_EFFECT_API:Ljava/lang/String; = "android.app.notification_channel_vibration_effect_api"

.field public static final blacklist FLAG_NOTIFICATION_EXPANSION_OPTIONAL:Ljava/lang/String; = "android.app.notification_expansion_optional"

.field public static final blacklist FLAG_PINNER_SERVICE_CLIENT_API:Ljava/lang/String; = "android.app.pinner_service_client_api"

.field public static final blacklist FLAG_REDACT_SENSITIVE_CONTENT_NOTIFICATIONS_ON_LOCKSCREEN:Ljava/lang/String; = "android.app.redact_sensitive_content_notifications_on_lockscreen"

.field public static final blacklist FLAG_REMOVE_REMOTE_VIEWS:Ljava/lang/String; = "android.app.remove_remote_views"

.field public static final blacklist FLAG_RESTRICT_AUDIO_ATTRIBUTES_ALARM:Ljava/lang/String; = "android.app.restrict_audio_attributes_alarm"

.field public static final blacklist FLAG_RESTRICT_AUDIO_ATTRIBUTES_CALL:Ljava/lang/String; = "android.app.restrict_audio_attributes_call"

.field public static final blacklist FLAG_RESTRICT_AUDIO_ATTRIBUTES_MEDIA:Ljava/lang/String; = "android.app.restrict_audio_attributes_media"

.field public static final blacklist FLAG_SECURE_ALLOWLIST_TOKEN:Ljava/lang/String; = "android.app.secure_allowlist_token"

.field public static final blacklist FLAG_SKIP_BG_MEM_TRIM_ON_FG_APP:Ljava/lang/String; = "android.app.skip_bg_mem_trim_on_fg_app"

.field public static final blacklist FLAG_SORT_SECTION_BY_TIME:Ljava/lang/String; = "android.app.sort_section_by_time"

.field public static final blacklist FLAG_SYSTEM_TERMS_OF_ADDRESS_ENABLED:Ljava/lang/String; = "android.app.system_terms_of_address_enabled"

.field public static final blacklist FLAG_UID_IMPORTANCE_LISTENER_FOR_UIDS:Ljava/lang/String; = "android.app.uid_importance_listener_for_uids"

.field public static final blacklist FLAG_UPDATE_RANKING_TIME:Ljava/lang/String; = "android.app.update_ranking_time"

.field public static final blacklist FLAG_USE_APP_INFO_NOT_LAUNCHED:Ljava/lang/String; = "android.app.use_app_info_not_launched"

.field public static final blacklist FLAG_VISIT_PERSON_URI:Ljava/lang/String; = "android.app.visit_person_uri"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/app/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist apiRichOngoing()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->apiRichOngoing()Z

    move-result v0

    return v0
.end method

.method public static greylist apiTvextender()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->apiTvextender()Z

    move-result v0

    return v0
.end method

.method public static greylist appRestrictionsApi()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->appRestrictionsApi()Z

    move-result v0

    return v0
.end method

.method public static greylist appStartInfo()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->appStartInfo()Z

    move-result v0

    return v0
.end method

.method public static greylist appStartInfoTimestamps()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->appStartInfoTimestamps()Z

    move-result v0

    return v0
.end method

.method public static greylist bicClient()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->bicClient()Z

    move-result v0

    return v0
.end method

.method public static greylist categoryVoicemail()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->categoryVoicemail()Z

    move-result v0

    return v0
.end method

.method public static greylist checkAutogroupBeforePost()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->checkAutogroupBeforePost()Z

    move-result v0

    return v0
.end method

.method public static greylist cleanUpSpansAndNewLines()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->cleanUpSpansAndNewLines()Z

    move-result v0

    return v0
.end method

.method public static greylist clearDnsCacheOnNetworkRulesUpdate()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->clearDnsCacheOnNetworkRulesUpdate()Z

    move-result v0

    return v0
.end method

.method public static greylist compactHeadsUpNotification()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->compactHeadsUpNotification()Z

    move-result v0

    return v0
.end method

.method public static greylist compactHeadsUpNotificationReply()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->compactHeadsUpNotificationReply()Z

    move-result v0

    return v0
.end method

.method public static greylist enableFgsTimeoutCrashBehavior()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->enableFgsTimeoutCrashBehavior()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNightModeBinderCache()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->enableNightModeBinderCache()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePipUiStateCallbackOnEntering()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->enablePipUiStateCallbackOnEntering()Z

    move-result v0

    return v0
.end method

.method public static greylist evenlyDividedCallStyleActionLayout()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->evenlyDividedCallStyleActionLayout()Z

    move-result v0

    return v0
.end method

.method public static greylist gateFgsTimeoutAnrBehavior()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->gateFgsTimeoutAnrBehavior()Z

    move-result v0

    return v0
.end method

.method public static greylist getBindingUidImportance()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->getBindingUidImportance()Z

    move-result v0

    return v0
.end method

.method public static greylist introduceNewServiceOntimeoutCallback()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->introduceNewServiceOntimeoutCallback()Z

    move-result v0

    return v0
.end method

.method public static greylist keyguardPrivateNotifications()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->keyguardPrivateNotifications()Z

    move-result v0

    return v0
.end method

.method public static greylist lifetimeExtensionRefactor()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->lifetimeExtensionRefactor()Z

    move-result v0

    return v0
.end method

.method public static greylist modesApi()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->modesApi()Z

    move-result v0

    return v0
.end method

.method public static greylist modesUi()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->modesUi()Z

    move-result v0

    return v0
.end method

.method public static greylist notificationChannelVibrationEffectApi()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->notificationChannelVibrationEffectApi()Z

    move-result v0

    return v0
.end method

.method public static greylist notificationExpansionOptional()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->notificationExpansionOptional()Z

    move-result v0

    return v0
.end method

.method public static greylist notificationsUseAppIcon()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->notificationsUseAppIcon()Z

    move-result v0

    return v0
.end method

.method public static greylist notificationsUseAppIconInRow()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->notificationsUseAppIconInRow()Z

    move-result v0

    return v0
.end method

.method public static greylist notificationsUseMonochromeAppIcon()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->notificationsUseMonochromeAppIcon()Z

    move-result v0

    return v0
.end method

.method public static greylist pinnerServiceClientApi()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->pinnerServiceClientApi()Z

    move-result v0

    return v0
.end method

.method public static greylist redactSensitiveContentNotificationsOnLockscreen()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->redactSensitiveContentNotificationsOnLockscreen()Z

    move-result v0

    return v0
.end method

.method public static greylist removeRemoteViews()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->removeRemoteViews()Z

    move-result v0

    return v0
.end method

.method public static greylist restrictAudioAttributesAlarm()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->restrictAudioAttributesAlarm()Z

    move-result v0

    return v0
.end method

.method public static greylist restrictAudioAttributesCall()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->restrictAudioAttributesCall()Z

    move-result v0

    return v0
.end method

.method public static greylist restrictAudioAttributesMedia()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->restrictAudioAttributesMedia()Z

    move-result v0

    return v0
.end method

.method public static greylist secureAllowlistToken()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->secureAllowlistToken()Z

    move-result v0

    return v0
.end method

.method public static greylist skipBgMemTrimOnFgApp()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->skipBgMemTrimOnFgApp()Z

    move-result v0

    return v0
.end method

.method public static greylist sortSectionByTime()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->sortSectionByTime()Z

    move-result v0

    return v0
.end method

.method public static greylist systemTermsOfAddressEnabled()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->systemTermsOfAddressEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist uidImportanceListenerForUids()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->uidImportanceListenerForUids()Z

    move-result v0

    return v0
.end method

.method public static greylist updateRankingTime()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->updateRankingTime()Z

    move-result v0

    return v0
.end method

.method public static greylist useAppInfoNotLaunched()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->useAppInfoNotLaunched()Z

    move-result v0

    return v0
.end method

.method public static greylist visitPersonUri()Z
    .locals 1

    sget-object v0, Landroid/app/Flags;->FEATURE_FLAGS:Landroid/app/FeatureFlags;

    invoke-interface {v0}, Landroid/app/FeatureFlags;->visitPersonUri()Z

    move-result v0

    return v0
.end method
