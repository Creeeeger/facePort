.class public Landroid/app/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/app/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/FeatureFlags;",
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
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v43, "android.app.visit_person_uri"

    const-string v44, ""

    const-string v2, "android.app.api_rich_ongoing"

    const-string v3, "android.app.api_tvextender"

    const-string v4, "android.app.app_restrictions_api"

    const-string v5, "android.app.app_start_info"

    const-string v6, "android.app.app_start_info_timestamps"

    const-string v7, "android.app.bic_client"

    const-string v8, "android.app.category_voicemail"

    const-string v9, "android.app.check_autogroup_before_post"

    const-string v10, "android.app.clean_up_spans_and_new_lines"

    const-string v11, "android.app.clear_dns_cache_on_network_rules_update"

    const-string v12, "android.app.compact_heads_up_notification"

    const-string v13, "android.app.compact_heads_up_notification_reply"

    const-string v14, "android.app.enable_fgs_timeout_crash_behavior"

    const-string v15, "android.app.enable_night_mode_binder_cache"

    const-string v16, "android.app.enable_pip_ui_state_callback_on_entering"

    const-string v17, "android.app.evenly_divided_call_style_action_layout"

    const-string v18, "android.app.gate_fgs_timeout_anr_behavior"

    const-string v19, "android.app.get_binding_uid_importance"

    const-string v20, "android.app.introduce_new_service_ontimeout_callback"

    const-string v21, "android.app.keyguard_private_notifications"

    const-string v22, "android.app.lifetime_extension_refactor"

    const-string v23, "android.app.modes_api"

    const-string v24, "android.app.modes_ui"

    const-string v25, "android.app.notification_channel_vibration_effect_api"

    const-string v26, "android.app.notification_expansion_optional"

    const-string v27, "android.app.notifications_use_app_icon"

    const-string v28, "android.app.notifications_use_app_icon_in_row"

    const-string v29, "android.app.notifications_use_monochrome_app_icon"

    const-string v30, "android.app.pinner_service_client_api"

    const-string v31, "android.app.redact_sensitive_content_notifications_on_lockscreen"

    const-string v32, "android.app.remove_remote_views"

    const-string v33, "android.app.restrict_audio_attributes_alarm"

    const-string v34, "android.app.restrict_audio_attributes_call"

    const-string v35, "android.app.restrict_audio_attributes_media"

    const-string v36, "android.app.secure_allowlist_token"

    const-string v37, "android.app.skip_bg_mem_trim_on_fg_app"

    const-string v38, "android.app.sort_section_by_time"

    const-string v39, "android.app.system_terms_of_address_enabled"

    const-string v40, "android.app.uid_importance_listener_for_uids"

    const-string v41, "android.app.update_ranking_time"

    const-string v42, "android.app.use_app_info_not_launched"

    filled-new-array/range {v2 .. v44}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/app/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/app/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist apiRichOngoing()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.app.api_rich_ongoing"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist apiTvextender()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.app.api_tvextender"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist appRestrictionsApi()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.app.app_restrictions_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist appStartInfo()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.app.app_start_info"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist appStartInfoTimestamps()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.app.app_start_info_timestamps"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bicClient()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.app.bic_client"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist categoryVoicemail()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.category_voicemail"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist checkAutogroupBeforePost()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.app.check_autogroup_before_post"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cleanUpSpansAndNewLines()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.app.clean_up_spans_and_new_lines"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist clearDnsCacheOnNetworkRulesUpdate()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.app.clear_dns_cache_on_network_rules_update"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist compactHeadsUpNotification()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.app.compact_heads_up_notification"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist compactHeadsUpNotificationReply()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.app.compact_heads_up_notification_reply"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableFgsTimeoutCrashBehavior()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.app.enable_fgs_timeout_crash_behavior"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableNightModeBinderCache()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.app.enable_night_mode_binder_cache"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePipUiStateCallbackOnEntering()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.app.enable_pip_ui_state_callback_on_entering"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist evenlyDividedCallStyleActionLayout()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.app.evenly_divided_call_style_action_layout"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist gateFgsTimeoutAnrBehavior()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.app.gate_fgs_timeout_anr_behavior"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist getBindingUidImportance()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.app.get_binding_uid_importance"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v40, "android.app.use_app_info_not_launched"

    const-string v41, "android.app.visit_person_uri"

    const-string v0, "android.app.api_rich_ongoing"

    const-string v1, "android.app.api_tvextender"

    const-string v2, "android.app.app_restrictions_api"

    const-string v3, "android.app.app_start_info"

    const-string v4, "android.app.app_start_info_timestamps"

    const-string v5, "android.app.bic_client"

    const-string v6, "android.app.category_voicemail"

    const-string v7, "android.app.check_autogroup_before_post"

    const-string v8, "android.app.clean_up_spans_and_new_lines"

    const-string v9, "android.app.clear_dns_cache_on_network_rules_update"

    const-string v10, "android.app.compact_heads_up_notification"

    const-string v11, "android.app.compact_heads_up_notification_reply"

    const-string v12, "android.app.enable_fgs_timeout_crash_behavior"

    const-string v13, "android.app.enable_night_mode_binder_cache"

    const-string v14, "android.app.enable_pip_ui_state_callback_on_entering"

    const-string v15, "android.app.evenly_divided_call_style_action_layout"

    const-string v16, "android.app.gate_fgs_timeout_anr_behavior"

    const-string v17, "android.app.get_binding_uid_importance"

    const-string v18, "android.app.introduce_new_service_ontimeout_callback"

    const-string v19, "android.app.keyguard_private_notifications"

    const-string v20, "android.app.lifetime_extension_refactor"

    const-string v21, "android.app.modes_api"

    const-string v22, "android.app.modes_ui"

    const-string v23, "android.app.notification_channel_vibration_effect_api"

    const-string v24, "android.app.notification_expansion_optional"

    const-string v25, "android.app.notifications_use_app_icon"

    const-string v26, "android.app.notifications_use_app_icon_in_row"

    const-string v27, "android.app.notifications_use_monochrome_app_icon"

    const-string v28, "android.app.pinner_service_client_api"

    const-string v29, "android.app.redact_sensitive_content_notifications_on_lockscreen"

    const-string v30, "android.app.remove_remote_views"

    const-string v31, "android.app.restrict_audio_attributes_alarm"

    const-string v32, "android.app.restrict_audio_attributes_call"

    const-string v33, "android.app.restrict_audio_attributes_media"

    const-string v34, "android.app.secure_allowlist_token"

    const-string v35, "android.app.skip_bg_mem_trim_on_fg_app"

    const-string v36, "android.app.sort_section_by_time"

    const-string v37, "android.app.system_terms_of_address_enabled"

    const-string v38, "android.app.uid_importance_listener_for_uids"

    const-string v39, "android.app.update_ranking_time"

    filled-new-array/range {v0 .. v41}, [Ljava/lang/String;

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
            "Landroid/app/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist introduceNewServiceOntimeoutCallback()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.app.introduce_new_service_ontimeout_callback"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist keyguardPrivateNotifications()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.app.keyguard_private_notifications"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist lifetimeExtensionRefactor()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.app.lifetime_extension_refactor"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist modesApi()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.app.modes_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist modesUi()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.app.modes_ui"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notificationChannelVibrationEffectApi()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.app.notification_channel_vibration_effect_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notificationExpansionOptional()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.app.notification_expansion_optional"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notificationsUseAppIcon()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.app.notifications_use_app_icon"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notificationsUseAppIconInRow()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.app.notifications_use_app_icon_in_row"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notificationsUseMonochromeAppIcon()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.app.notifications_use_monochrome_app_icon"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist pinnerServiceClientApi()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.app.pinner_service_client_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist redactSensitiveContentNotificationsOnLockscreen()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.app.redact_sensitive_content_notifications_on_lockscreen"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist removeRemoteViews()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.app.remove_remote_views"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist restrictAudioAttributesAlarm()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.app.restrict_audio_attributes_alarm"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist restrictAudioAttributesCall()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.app.restrict_audio_attributes_call"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist restrictAudioAttributesMedia()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.app.restrict_audio_attributes_media"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist secureAllowlistToken()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.secure_allowlist_token"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist skipBgMemTrimOnFgApp()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.app.skip_bg_mem_trim_on_fg_app"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sortSectionByTime()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.app.sort_section_by_time"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist systemTermsOfAddressEnabled()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.app.system_terms_of_address_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist uidImportanceListenerForUids()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.app.uid_importance_listener_for_uids"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist updateRankingTime()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.app.update_ranking_time"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useAppInfoNotLaunched()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.app.use_app_info_not_launched"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist visitPersonUri()Z
    .locals 2

    new-instance v0, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Landroid/app/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.app.visit_person_uri"

    invoke-virtual {p0, v1, v0}, Landroid/app/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
