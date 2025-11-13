.class public Lcom/android/window/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/window/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/window/flags/FeatureFlags;",
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
    .locals 110
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/window/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v108, "com.android.window.flags.window_token_config_thread_safe"

    const-string v109, ""

    const-string v2, "com.android.window.flags.activity_embedding_animation_customization_flag"

    const-string v3, "com.android.window.flags.activity_embedding_interactive_divider_flag"

    const-string v4, "com.android.window.flags.activity_embedding_overlay_presentation_flag"

    const-string v5, "com.android.window.flags.activity_snapshot_by_default"

    const-string v6, "com.android.window.flags.activity_window_info_flag"

    const-string v7, "com.android.window.flags.allow_disable_activity_record_input_sink"

    const-string v8, "com.android.window.flags.allow_hide_scm_button"

    const-string v9, "com.android.window.flags.allows_screen_size_decoupled_from_status_bar_and_cutout"

    const-string v10, "com.android.window.flags.always_defer_transition_when_apply_wct"

    const-string v11, "com.android.window.flags.always_draw_magnification_fullscreen_border"

    const-string v12, "com.android.window.flags.always_update_wallpaper_permission"

    const-string v13, "com.android.window.flags.app_compat_properties_api"

    const-string v14, "com.android.window.flags.app_compat_refactoring"

    const-string v15, "com.android.window.flags.app_compat_ui_framework"

    const-string v16, "com.android.window.flags.bal_dont_bring_existing_background_task_stack_to_fg"

    const-string v17, "com.android.window.flags.bal_improve_real_caller_visibility_check"

    const-string v18, "com.android.window.flags.bal_improved_metrics"

    const-string v19, "com.android.window.flags.bal_require_opt_in_by_pending_intent_creator"

    const-string v20, "com.android.window.flags.bal_require_opt_in_same_uid"

    const-string v21, "com.android.window.flags.bal_respect_app_switch_state_when_check_bound_by_foreground_uid"

    const-string v22, "com.android.window.flags.bal_show_toasts"

    const-string v23, "com.android.window.flags.bal_show_toasts_blocked"

    const-string v24, "com.android.window.flags.blast_sync_notification_shade_on_display_switch"

    const-string v25, "com.android.window.flags.bundle_client_transaction_flag"

    const-string v26, "com.android.window.flags.camera_compat_for_freeform"

    const-string v27, "com.android.window.flags.camera_compat_fullscreen_pick_same_task_activity"

    const-string v28, "com.android.window.flags.close_to_square_config_includes_status_bar"

    const-string v29, "com.android.window.flags.configurable_font_scale_default"

    const-string v30, "com.android.window.flags.cover_display_opt_in"

    const-string v31, "com.android.window.flags.defer_display_updates"

    const-string v32, "com.android.window.flags.delay_notification_to_magnification_when_recents_window_to_front_transition"

    const-string v33, "com.android.window.flags.delegate_unhandled_drags"

    const-string v34, "com.android.window.flags.delete_capture_display"

    const-string v35, "com.android.window.flags.density_390_api"

    const-string v36, "com.android.window.flags.disable_object_pool"

    const-string v37, "com.android.window.flags.disable_thin_letterboxing_policy"

    const-string v38, "com.android.window.flags.do_not_check_intersection_when_non_magnifiable_window_transitions"

    const-string v39, "com.android.window.flags.draw_snapshot_aspect_ratio_match"

    const-string v40, "com.android.window.flags.edge_to_edge_by_default"

    const-string v41, "com.android.window.flags.embedded_activity_back_nav_flag"

    const-string v42, "com.android.window.flags.enable_additional_windows_above_status_bar"

    const-string v43, "com.android.window.flags.enable_app_header_with_task_density"

    const-string v44, "com.android.window.flags.enable_buffer_transform_hint_from_display"

    const-string v45, "com.android.window.flags.enable_camera_compat_for_desktop_windowing"

    const-string v46, "com.android.window.flags.enable_compatui_sysui_launcher"

    const-string v47, "com.android.window.flags.enable_desktop_windowing_immersive_handle_hiding"

    const-string v48, "com.android.window.flags.enable_desktop_windowing_modals_policy"

    const-string v49, "com.android.window.flags.enable_desktop_windowing_mode"

    const-string v50, "com.android.window.flags.enable_desktop_windowing_quick_switch"

    const-string v51, "com.android.window.flags.enable_desktop_windowing_scvh_cache"

    const-string v52, "com.android.window.flags.enable_desktop_windowing_size_constraints"

    const-string v53, "com.android.window.flags.enable_desktop_windowing_task_limit"

    const-string v54, "com.android.window.flags.enable_desktop_windowing_taskbar_running_apps"

    const-string v55, "com.android.window.flags.enable_desktop_windowing_wallpaper_activity"

    const-string v56, "com.android.window.flags.enable_scaled_resizing"

    const-string v57, "com.android.window.flags.enable_task_stack_observer_in_shell"

    const-string v58, "com.android.window.flags.enable_themed_app_headers"

    const-string v59, "com.android.window.flags.enable_windowing_dynamic_initial_bounds"

    const-string v60, "com.android.window.flags.enable_windowing_edge_drag_resize"

    const-string v61, "com.android.window.flags.enable_wm_extensions_for_all_flag"

    const-string v62, "com.android.window.flags.enforce_edge_to_edge"

    const-string v63, "com.android.window.flags.ensure_wallpaper_in_transitions"

    const-string v64, "com.android.window.flags.explicit_refresh_rate_hints"

    const-string v65, "com.android.window.flags.fifo_priority_for_major_ui_processes"

    const-string v66, "com.android.window.flags.fix_no_container_update_without_resize"

    const-string v67, "com.android.window.flags.fix_pip_restore_to_overlay"

    const-string v68, "com.android.window.flags.fullscreen_dim_flag"

    const-string v69, "com.android.window.flags.get_dimmer_on_closing"

    const-string v70, "com.android.window.flags.immersive_app_repositioning"

    const-string v71, "com.android.window.flags.insets_control_changed_item"

    const-string v72, "com.android.window.flags.insets_control_seq"

    const-string v73, "com.android.window.flags.insets_decoupled_configuration"

    const-string v74, "com.android.window.flags.keyguard_appear_transition"

    const-string v75, "com.android.window.flags.letterbox_background_wallpaper"

    const-string v76, "com.android.window.flags.movable_cutout_configuration"

    const-string v77, "com.android.window.flags.move_animation_options_to_change"

    const-string v78, "com.android.window.flags.multi_crop"

    const-string v79, "com.android.window.flags.nav_bar_transparent_by_default"

    const-string v80, "com.android.window.flags.no_consecutive_visibility_events"

    const-string v81, "com.android.window.flags.no_visibility_event_on_display_state_change"

    const-string v82, "com.android.window.flags.offload_color_extraction"

    const-string v83, "com.android.window.flags.predictive_back_system_anims"

    const-string v84, "com.android.window.flags.rear_display_disable_force_desktop_system_decorations"

    const-string v85, "com.android.window.flags.release_snapshot_aggressively"

    const-string v86, "com.android.window.flags.remove_prepare_surface_in_placement"

    const-string v87, "com.android.window.flags.respect_non_top_visible_fixed_orientation"

    const-string v88, "com.android.window.flags.screen_recording_callbacks"

    const-string v89, "com.android.window.flags.sdk_desired_present_time"

    const-string v90, "com.android.window.flags.secure_window_state"

    const-string v91, "com.android.window.flags.set_sc_properties_in_client"

    const-string v92, "com.android.window.flags.skip_sleeping_when_switching_display"

    const-string v93, "com.android.window.flags.supports_multi_instance_system_ui"

    const-string v94, "com.android.window.flags.surface_control_input_receiver"

    const-string v95, "com.android.window.flags.surface_trusted_overlay"

    const-string v96, "com.android.window.flags.sync_screen_capture"

    const-string v97, "com.android.window.flags.task_fragment_system_organizer_flag"

    const-string v98, "com.android.window.flags.transit_ready_tracking"

    const-string v99, "com.android.window.flags.trusted_presentation_listener_for_window"

    const-string v100, "com.android.window.flags.untrusted_embedding_any_app_permission"

    const-string v101, "com.android.window.flags.untrusted_embedding_state_sharing"

    const-string v102, "com.android.window.flags.use_tasks_dim_only"

    const-string v103, "com.android.window.flags.use_window_original_touchable_region_when_magnification_recompute_bounds"

    const-string v104, "com.android.window.flags.user_min_aspect_ratio_app_default"

    const-string v105, "com.android.window.flags.wait_for_transition_on_display_switch"

    const-string v106, "com.android.window.flags.wallpaper_offset_async"

    const-string v107, "com.android.window.flags.window_session_relayout_info"

    filled-new-array/range {v2 .. v109}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/window/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/window/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist activityEmbeddingAnimationCustomizationFlag()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "com.android.window.flags.activity_embedding_animation_customization_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist activityEmbeddingInteractiveDividerFlag()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.window.flags.activity_embedding_interactive_divider_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist activityEmbeddingOverlayPresentationFlag()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;-><init>()V

    const-string v1, "com.android.window.flags.activity_embedding_overlay_presentation_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist activitySnapshotByDefault()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.window.flags.activity_snapshot_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist activityWindowInfoFlag()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;-><init>()V

    const-string v1, "com.android.window.flags.activity_window_info_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist allowDisableActivityRecordInputSink()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.window.flags.allow_disable_activity_record_input_sink"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist allowHideScmButton()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.window.flags.allow_hide_scm_button"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist allowsScreenSizeDecoupledFromStatusBarAndCutout()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.window.flags.allows_screen_size_decoupled_from_status_bar_and_cutout"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist alwaysDeferTransitionWhenApplyWct()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;-><init>()V

    const-string v1, "com.android.window.flags.always_defer_transition_when_apply_wct"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist alwaysDrawMagnificationFullscreenBorder()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.window.flags.always_draw_magnification_fullscreen_border"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist alwaysUpdateWallpaperPermission()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "com.android.window.flags.always_update_wallpaper_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist appCompatPropertiesApi()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_properties_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist appCompatRefactoring()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_refactoring"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist appCompatUiFramework()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_ui_framework"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist balDontBringExistingBackgroundTaskStackToFg()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.window.flags.bal_dont_bring_existing_background_task_stack_to_fg"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist balImproveRealCallerVisibilityCheck()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;-><init>()V

    const-string v1, "com.android.window.flags.bal_improve_real_caller_visibility_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist balImprovedMetrics()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "com.android.window.flags.bal_improved_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist balRequireOptInByPendingIntentCreator()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.window.flags.bal_require_opt_in_by_pending_intent_creator"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist balRequireOptInSameUid()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "com.android.window.flags.bal_require_opt_in_same_uid"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist balRespectAppSwitchStateWhenCheckBoundByForegroundUid()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.window.flags.bal_respect_app_switch_state_when_check_bound_by_foreground_uid"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist balShowToasts()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.window.flags.bal_show_toasts"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist balShowToastsBlocked()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.window.flags.bal_show_toasts_blocked"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist blastSyncNotificationShadeOnDisplaySwitch()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.window.flags.blast_sync_notification_shade_on_display_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bundleClientTransactionFlag()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "com.android.window.flags.bundle_client_transaction_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraCompatForFreeform()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.window.flags.camera_compat_for_freeform"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cameraCompatFullscreenPickSameTaskActivity()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.window.flags.camera_compat_fullscreen_pick_same_task_activity"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist closeToSquareConfigIncludesStatusBar()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.window.flags.close_to_square_config_includes_status_bar"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist configurableFontScaleDefault()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;-><init>()V

    const-string v1, "com.android.window.flags.configurable_font_scale_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist coverDisplayOptIn()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.window.flags.cover_display_opt_in"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deferDisplayUpdates()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;-><init>()V

    const-string v1, "com.android.window.flags.defer_display_updates"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist delayNotificationToMagnificationWhenRecentsWindowToFrontTransition()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.window.flags.delay_notification_to_magnification_when_recents_window_to_front_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist delegateUnhandledDrags()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda103;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda103;-><init>()V

    const-string v1, "com.android.window.flags.delegate_unhandled_drags"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deleteCaptureDisplay()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;-><init>()V

    const-string v1, "com.android.window.flags.delete_capture_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist density390Api()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.window.flags.density_390_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableObjectPool()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "com.android.window.flags.disable_object_pool"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableThinLetterboxingPolicy()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.window.flags.disable_thin_letterboxing_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist doNotCheckIntersectionWhenNonMagnifiableWindowTransitions()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.window.flags.do_not_check_intersection_when_non_magnifiable_window_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist drawSnapshotAspectRatioMatch()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.window.flags.draw_snapshot_aspect_ratio_match"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist edgeToEdgeByDefault()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;-><init>()V

    const-string v1, "com.android.window.flags.edge_to_edge_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist embeddedActivityBackNavFlag()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.window.flags.embedded_activity_back_nav_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableAdditionalWindowsAboveStatusBar()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.window.flags.enable_additional_windows_above_status_bar"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableAppHeaderWithTaskDensity()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.window.flags.enable_app_header_with_task_density"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableBufferTransformHintFromDisplay()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.window.flags.enable_buffer_transform_hint_from_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableCameraCompatForDesktopWindowing()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.window.flags.enable_camera_compat_for_desktop_windowing"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableCompatuiSysuiLauncher()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda102;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda102;-><init>()V

    const-string v1, "com.android.window.flags.enable_compatui_sysui_launcher"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDesktopWindowingImmersiveHandleHiding()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_immersive_handle_hiding"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDesktopWindowingModalsPolicy()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_modals_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDesktopWindowingMode()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDesktopWindowingQuickSwitch()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_quick_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDesktopWindowingScvhCache()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_scvh_cache"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDesktopWindowingSizeConstraints()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_size_constraints"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDesktopWindowingTaskLimit()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_task_limit"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDesktopWindowingTaskbarRunningApps()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_taskbar_running_apps"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDesktopWindowingWallpaperActivity()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_wallpaper_activity"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableScaledResizing()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.window.flags.enable_scaled_resizing"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableTaskStackObserverInShell()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.window.flags.enable_task_stack_observer_in_shell"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableThemedAppHeaders()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "com.android.window.flags.enable_themed_app_headers"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableWindowingDynamicInitialBounds()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;-><init>()V

    const-string v1, "com.android.window.flags.enable_windowing_dynamic_initial_bounds"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableWindowingEdgeDragResize()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.window.flags.enable_windowing_edge_drag_resize"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableWmExtensionsForAllFlag()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;-><init>()V

    const-string v1, "com.android.window.flags.enable_wm_extensions_for_all_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enforceEdgeToEdge()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.window.flags.enforce_edge_to_edge"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ensureWallpaperInTransitions()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.window.flags.ensure_wallpaper_in_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist explicitRefreshRateHints()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.window.flags.explicit_refresh_rate_hints"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fifoPriorityForMajorUiProcesses()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.window.flags.fifo_priority_for_major_ui_processes"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixNoContainerUpdateWithoutResize()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.window.flags.fix_no_container_update_without_resize"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixPipRestoreToOverlay()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;-><init>()V

    const-string v1, "com.android.window.flags.fix_pip_restore_to_overlay"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fullscreenDimFlag()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.window.flags.fullscreen_dim_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist getDimmerOnClosing()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;-><init>()V

    const-string v1, "com.android.window.flags.get_dimmer_on_closing"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 107
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v105, "com.android.window.flags.window_session_relayout_info"

    const-string v106, "com.android.window.flags.window_token_config_thread_safe"

    const-string v0, "com.android.window.flags.activity_embedding_animation_customization_flag"

    const-string v1, "com.android.window.flags.activity_embedding_interactive_divider_flag"

    const-string v2, "com.android.window.flags.activity_embedding_overlay_presentation_flag"

    const-string v3, "com.android.window.flags.activity_snapshot_by_default"

    const-string v4, "com.android.window.flags.activity_window_info_flag"

    const-string v5, "com.android.window.flags.allow_disable_activity_record_input_sink"

    const-string v6, "com.android.window.flags.allow_hide_scm_button"

    const-string v7, "com.android.window.flags.allows_screen_size_decoupled_from_status_bar_and_cutout"

    const-string v8, "com.android.window.flags.always_defer_transition_when_apply_wct"

    const-string v9, "com.android.window.flags.always_draw_magnification_fullscreen_border"

    const-string v10, "com.android.window.flags.always_update_wallpaper_permission"

    const-string v11, "com.android.window.flags.app_compat_properties_api"

    const-string v12, "com.android.window.flags.app_compat_refactoring"

    const-string v13, "com.android.window.flags.app_compat_ui_framework"

    const-string v14, "com.android.window.flags.bal_dont_bring_existing_background_task_stack_to_fg"

    const-string v15, "com.android.window.flags.bal_improve_real_caller_visibility_check"

    const-string v16, "com.android.window.flags.bal_improved_metrics"

    const-string v17, "com.android.window.flags.bal_require_opt_in_by_pending_intent_creator"

    const-string v18, "com.android.window.flags.bal_require_opt_in_same_uid"

    const-string v19, "com.android.window.flags.bal_respect_app_switch_state_when_check_bound_by_foreground_uid"

    const-string v20, "com.android.window.flags.bal_show_toasts"

    const-string v21, "com.android.window.flags.bal_show_toasts_blocked"

    const-string v22, "com.android.window.flags.blast_sync_notification_shade_on_display_switch"

    const-string v23, "com.android.window.flags.bundle_client_transaction_flag"

    const-string v24, "com.android.window.flags.camera_compat_for_freeform"

    const-string v25, "com.android.window.flags.camera_compat_fullscreen_pick_same_task_activity"

    const-string v26, "com.android.window.flags.close_to_square_config_includes_status_bar"

    const-string v27, "com.android.window.flags.configurable_font_scale_default"

    const-string v28, "com.android.window.flags.cover_display_opt_in"

    const-string v29, "com.android.window.flags.defer_display_updates"

    const-string v30, "com.android.window.flags.delay_notification_to_magnification_when_recents_window_to_front_transition"

    const-string v31, "com.android.window.flags.delegate_unhandled_drags"

    const-string v32, "com.android.window.flags.delete_capture_display"

    const-string v33, "com.android.window.flags.density_390_api"

    const-string v34, "com.android.window.flags.disable_object_pool"

    const-string v35, "com.android.window.flags.disable_thin_letterboxing_policy"

    const-string v36, "com.android.window.flags.do_not_check_intersection_when_non_magnifiable_window_transitions"

    const-string v37, "com.android.window.flags.draw_snapshot_aspect_ratio_match"

    const-string v38, "com.android.window.flags.edge_to_edge_by_default"

    const-string v39, "com.android.window.flags.embedded_activity_back_nav_flag"

    const-string v40, "com.android.window.flags.enable_additional_windows_above_status_bar"

    const-string v41, "com.android.window.flags.enable_app_header_with_task_density"

    const-string v42, "com.android.window.flags.enable_buffer_transform_hint_from_display"

    const-string v43, "com.android.window.flags.enable_camera_compat_for_desktop_windowing"

    const-string v44, "com.android.window.flags.enable_compatui_sysui_launcher"

    const-string v45, "com.android.window.flags.enable_desktop_windowing_immersive_handle_hiding"

    const-string v46, "com.android.window.flags.enable_desktop_windowing_modals_policy"

    const-string v47, "com.android.window.flags.enable_desktop_windowing_mode"

    const-string v48, "com.android.window.flags.enable_desktop_windowing_quick_switch"

    const-string v49, "com.android.window.flags.enable_desktop_windowing_scvh_cache"

    const-string v50, "com.android.window.flags.enable_desktop_windowing_size_constraints"

    const-string v51, "com.android.window.flags.enable_desktop_windowing_task_limit"

    const-string v52, "com.android.window.flags.enable_desktop_windowing_taskbar_running_apps"

    const-string v53, "com.android.window.flags.enable_desktop_windowing_wallpaper_activity"

    const-string v54, "com.android.window.flags.enable_scaled_resizing"

    const-string v55, "com.android.window.flags.enable_task_stack_observer_in_shell"

    const-string v56, "com.android.window.flags.enable_themed_app_headers"

    const-string v57, "com.android.window.flags.enable_windowing_dynamic_initial_bounds"

    const-string v58, "com.android.window.flags.enable_windowing_edge_drag_resize"

    const-string v59, "com.android.window.flags.enable_wm_extensions_for_all_flag"

    const-string v60, "com.android.window.flags.enforce_edge_to_edge"

    const-string v61, "com.android.window.flags.ensure_wallpaper_in_transitions"

    const-string v62, "com.android.window.flags.explicit_refresh_rate_hints"

    const-string v63, "com.android.window.flags.fifo_priority_for_major_ui_processes"

    const-string v64, "com.android.window.flags.fix_no_container_update_without_resize"

    const-string v65, "com.android.window.flags.fix_pip_restore_to_overlay"

    const-string v66, "com.android.window.flags.fullscreen_dim_flag"

    const-string v67, "com.android.window.flags.get_dimmer_on_closing"

    const-string v68, "com.android.window.flags.immersive_app_repositioning"

    const-string v69, "com.android.window.flags.insets_control_changed_item"

    const-string v70, "com.android.window.flags.insets_control_seq"

    const-string v71, "com.android.window.flags.insets_decoupled_configuration"

    const-string v72, "com.android.window.flags.keyguard_appear_transition"

    const-string v73, "com.android.window.flags.letterbox_background_wallpaper"

    const-string v74, "com.android.window.flags.movable_cutout_configuration"

    const-string v75, "com.android.window.flags.move_animation_options_to_change"

    const-string v76, "com.android.window.flags.multi_crop"

    const-string v77, "com.android.window.flags.nav_bar_transparent_by_default"

    const-string v78, "com.android.window.flags.no_consecutive_visibility_events"

    const-string v79, "com.android.window.flags.no_visibility_event_on_display_state_change"

    const-string v80, "com.android.window.flags.offload_color_extraction"

    const-string v81, "com.android.window.flags.predictive_back_system_anims"

    const-string v82, "com.android.window.flags.rear_display_disable_force_desktop_system_decorations"

    const-string v83, "com.android.window.flags.release_snapshot_aggressively"

    const-string v84, "com.android.window.flags.remove_prepare_surface_in_placement"

    const-string v85, "com.android.window.flags.respect_non_top_visible_fixed_orientation"

    const-string v86, "com.android.window.flags.screen_recording_callbacks"

    const-string v87, "com.android.window.flags.sdk_desired_present_time"

    const-string v88, "com.android.window.flags.secure_window_state"

    const-string v89, "com.android.window.flags.set_sc_properties_in_client"

    const-string v90, "com.android.window.flags.skip_sleeping_when_switching_display"

    const-string v91, "com.android.window.flags.supports_multi_instance_system_ui"

    const-string v92, "com.android.window.flags.surface_control_input_receiver"

    const-string v93, "com.android.window.flags.surface_trusted_overlay"

    const-string v94, "com.android.window.flags.sync_screen_capture"

    const-string v95, "com.android.window.flags.task_fragment_system_organizer_flag"

    const-string v96, "com.android.window.flags.transit_ready_tracking"

    const-string v97, "com.android.window.flags.trusted_presentation_listener_for_window"

    const-string v98, "com.android.window.flags.untrusted_embedding_any_app_permission"

    const-string v99, "com.android.window.flags.untrusted_embedding_state_sharing"

    const-string v100, "com.android.window.flags.use_tasks_dim_only"

    const-string v101, "com.android.window.flags.use_window_original_touchable_region_when_magnification_recompute_bounds"

    const-string v102, "com.android.window.flags.user_min_aspect_ratio_app_default"

    const-string v103, "com.android.window.flags.wait_for_transition_on_display_switch"

    const-string v104, "com.android.window.flags.wallpaper_offset_async"

    filled-new-array/range {v0 .. v106}, [Ljava/lang/String;

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
            "Lcom/android/window/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/window/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist immersiveAppRepositioning()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.window.flags.immersive_app_repositioning"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist insetsControlChangedItem()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;-><init>()V

    const-string v1, "com.android.window.flags.insets_control_changed_item"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist insetsControlSeq()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.window.flags.insets_control_seq"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist insetsDecoupledConfiguration()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.window.flags.insets_decoupled_configuration"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/window/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/window/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist keyguardAppearTransition()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "com.android.window.flags.keyguard_appear_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist letterboxBackgroundWallpaper()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda106;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda106;-><init>()V

    const-string v1, "com.android.window.flags.letterbox_background_wallpaper"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist movableCutoutConfiguration()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;-><init>()V

    const-string v1, "com.android.window.flags.movable_cutout_configuration"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist moveAnimationOptionsToChange()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;-><init>()V

    const-string v1, "com.android.window.flags.move_animation_options_to_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist multiCrop()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda104;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda104;-><init>()V

    const-string v1, "com.android.window.flags.multi_crop"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist navBarTransparentByDefault()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "com.android.window.flags.nav_bar_transparent_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist noConsecutiveVisibilityEvents()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "com.android.window.flags.no_consecutive_visibility_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist noVisibilityEventOnDisplayStateChange()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.window.flags.no_visibility_event_on_display_state_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist offloadColorExtraction()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "com.android.window.flags.offload_color_extraction"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist predictiveBackSystemAnims()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_system_anims"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rearDisplayDisableForceDesktopSystemDecorations()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.window.flags.rear_display_disable_force_desktop_system_decorations"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist releaseSnapshotAggressively()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.window.flags.release_snapshot_aggressively"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist removePrepareSurfaceInPlacement()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "com.android.window.flags.remove_prepare_surface_in_placement"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist respectNonTopVisibleFixedOrientation()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.window.flags.respect_non_top_visible_fixed_orientation"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist screenRecordingCallbacks()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.window.flags.screen_recording_callbacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sdkDesiredPresentTime()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.window.flags.sdk_desired_present_time"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist secureWindowState()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;-><init>()V

    const-string v1, "com.android.window.flags.secure_window_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setScPropertiesInClient()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.window.flags.set_sc_properties_in_client"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist skipSleepingWhenSwitchingDisplay()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.window.flags.skip_sleeping_when_switching_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist supportsMultiInstanceSystemUi()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;-><init>()V

    const-string v1, "com.android.window.flags.supports_multi_instance_system_ui"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist surfaceControlInputReceiver()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.window.flags.surface_control_input_receiver"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist surfaceTrustedOverlay()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda101;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda101;-><init>()V

    const-string v1, "com.android.window.flags.surface_trusted_overlay"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist syncScreenCapture()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "com.android.window.flags.sync_screen_capture"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist taskFragmentSystemOrganizerFlag()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;-><init>()V

    const-string v1, "com.android.window.flags.task_fragment_system_organizer_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist transitReadyTracking()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;-><init>()V

    const-string v1, "com.android.window.flags.transit_ready_tracking"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist trustedPresentationListenerForWindow()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "com.android.window.flags.trusted_presentation_listener_for_window"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist untrustedEmbeddingAnyAppPermission()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;-><init>()V

    const-string v1, "com.android.window.flags.untrusted_embedding_any_app_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist untrustedEmbeddingStateSharing()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.window.flags.untrusted_embedding_state_sharing"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useTasksDimOnly()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda105;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda105;-><init>()V

    const-string v1, "com.android.window.flags.use_tasks_dim_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useWindowOriginalTouchableRegionWhenMagnificationRecomputeBounds()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;-><init>()V

    const-string v1, "com.android.window.flags.use_window_original_touchable_region_when_magnification_recompute_bounds"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist userMinAspectRatioAppDefault()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.window.flags.user_min_aspect_ratio_app_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist waitForTransitionOnDisplaySwitch()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;-><init>()V

    const-string v1, "com.android.window.flags.wait_for_transition_on_display_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist wallpaperOffsetAsync()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.window.flags.wallpaper_offset_async"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist windowSessionRelayoutInfo()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.window.flags.window_session_relayout_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist windowTokenConfigThreadSafe()Z
    .locals 2

    new-instance v0, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.window.flags.window_token_config_thread_safe"

    invoke-virtual {p0, v1, v0}, Lcom/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
