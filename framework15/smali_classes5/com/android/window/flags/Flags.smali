.class public final Lcom/android/window/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ACTIVITY_EMBEDDING_ANIMATION_CUSTOMIZATION_FLAG:Ljava/lang/String; = "com.android.window.flags.activity_embedding_animation_customization_flag"

.field public static final blacklist FLAG_ACTIVITY_EMBEDDING_INTERACTIVE_DIVIDER_FLAG:Ljava/lang/String; = "com.android.window.flags.activity_embedding_interactive_divider_flag"

.field public static final blacklist FLAG_ACTIVITY_EMBEDDING_OVERLAY_PRESENTATION_FLAG:Ljava/lang/String; = "com.android.window.flags.activity_embedding_overlay_presentation_flag"

.field public static final blacklist FLAG_ACTIVITY_SNAPSHOT_BY_DEFAULT:Ljava/lang/String; = "com.android.window.flags.activity_snapshot_by_default"

.field public static final blacklist FLAG_ACTIVITY_WINDOW_INFO_FLAG:Ljava/lang/String; = "com.android.window.flags.activity_window_info_flag"

.field public static final blacklist FLAG_ALLOWS_SCREEN_SIZE_DECOUPLED_FROM_STATUS_BAR_AND_CUTOUT:Ljava/lang/String; = "com.android.window.flags.allows_screen_size_decoupled_from_status_bar_and_cutout"

.field public static final blacklist FLAG_ALLOW_DISABLE_ACTIVITY_RECORD_INPUT_SINK:Ljava/lang/String; = "com.android.window.flags.allow_disable_activity_record_input_sink"

.field public static final blacklist FLAG_ALLOW_HIDE_SCM_BUTTON:Ljava/lang/String; = "com.android.window.flags.allow_hide_scm_button"

.field public static final blacklist FLAG_ALWAYS_DEFER_TRANSITION_WHEN_APPLY_WCT:Ljava/lang/String; = "com.android.window.flags.always_defer_transition_when_apply_wct"

.field public static final blacklist FLAG_ALWAYS_DRAW_MAGNIFICATION_FULLSCREEN_BORDER:Ljava/lang/String; = "com.android.window.flags.always_draw_magnification_fullscreen_border"

.field public static final blacklist FLAG_ALWAYS_UPDATE_WALLPAPER_PERMISSION:Ljava/lang/String; = "com.android.window.flags.always_update_wallpaper_permission"

.field public static final blacklist FLAG_APP_COMPAT_PROPERTIES_API:Ljava/lang/String; = "com.android.window.flags.app_compat_properties_api"

.field public static final blacklist FLAG_APP_COMPAT_REFACTORING:Ljava/lang/String; = "com.android.window.flags.app_compat_refactoring"

.field public static final blacklist FLAG_APP_COMPAT_UI_FRAMEWORK:Ljava/lang/String; = "com.android.window.flags.app_compat_ui_framework"

.field public static final blacklist FLAG_BAL_DONT_BRING_EXISTING_BACKGROUND_TASK_STACK_TO_FG:Ljava/lang/String; = "com.android.window.flags.bal_dont_bring_existing_background_task_stack_to_fg"

.field public static final blacklist FLAG_BAL_IMPROVED_METRICS:Ljava/lang/String; = "com.android.window.flags.bal_improved_metrics"

.field public static final blacklist FLAG_BAL_IMPROVE_REAL_CALLER_VISIBILITY_CHECK:Ljava/lang/String; = "com.android.window.flags.bal_improve_real_caller_visibility_check"

.field public static final blacklist FLAG_BAL_REQUIRE_OPT_IN_BY_PENDING_INTENT_CREATOR:Ljava/lang/String; = "com.android.window.flags.bal_require_opt_in_by_pending_intent_creator"

.field public static final blacklist FLAG_BAL_REQUIRE_OPT_IN_SAME_UID:Ljava/lang/String; = "com.android.window.flags.bal_require_opt_in_same_uid"

.field public static final blacklist FLAG_BAL_RESPECT_APP_SWITCH_STATE_WHEN_CHECK_BOUND_BY_FOREGROUND_UID:Ljava/lang/String; = "com.android.window.flags.bal_respect_app_switch_state_when_check_bound_by_foreground_uid"

.field public static final blacklist FLAG_BAL_SHOW_TOASTS:Ljava/lang/String; = "com.android.window.flags.bal_show_toasts"

.field public static final blacklist FLAG_BAL_SHOW_TOASTS_BLOCKED:Ljava/lang/String; = "com.android.window.flags.bal_show_toasts_blocked"

.field public static final blacklist FLAG_BLAST_SYNC_NOTIFICATION_SHADE_ON_DISPLAY_SWITCH:Ljava/lang/String; = "com.android.window.flags.blast_sync_notification_shade_on_display_switch"

.field public static final blacklist FLAG_BUNDLE_CLIENT_TRANSACTION_FLAG:Ljava/lang/String; = "com.android.window.flags.bundle_client_transaction_flag"

.field public static final blacklist FLAG_CAMERA_COMPAT_FOR_FREEFORM:Ljava/lang/String; = "com.android.window.flags.camera_compat_for_freeform"

.field public static final blacklist FLAG_CAMERA_COMPAT_FULLSCREEN_PICK_SAME_TASK_ACTIVITY:Ljava/lang/String; = "com.android.window.flags.camera_compat_fullscreen_pick_same_task_activity"

.field public static final blacklist FLAG_CLOSE_TO_SQUARE_CONFIG_INCLUDES_STATUS_BAR:Ljava/lang/String; = "com.android.window.flags.close_to_square_config_includes_status_bar"

.field public static final blacklist FLAG_CONFIGURABLE_FONT_SCALE_DEFAULT:Ljava/lang/String; = "com.android.window.flags.configurable_font_scale_default"

.field public static final blacklist FLAG_COVER_DISPLAY_OPT_IN:Ljava/lang/String; = "com.android.window.flags.cover_display_opt_in"

.field public static final blacklist FLAG_DEFER_DISPLAY_UPDATES:Ljava/lang/String; = "com.android.window.flags.defer_display_updates"

.field public static final blacklist FLAG_DELAY_NOTIFICATION_TO_MAGNIFICATION_WHEN_RECENTS_WINDOW_TO_FRONT_TRANSITION:Ljava/lang/String; = "com.android.window.flags.delay_notification_to_magnification_when_recents_window_to_front_transition"

.field public static final blacklist FLAG_DELEGATE_UNHANDLED_DRAGS:Ljava/lang/String; = "com.android.window.flags.delegate_unhandled_drags"

.field public static final blacklist FLAG_DELETE_CAPTURE_DISPLAY:Ljava/lang/String; = "com.android.window.flags.delete_capture_display"

.field public static final blacklist FLAG_DENSITY_390_API:Ljava/lang/String; = "com.android.window.flags.density_390_api"

.field public static final blacklist FLAG_DISABLE_OBJECT_POOL:Ljava/lang/String; = "com.android.window.flags.disable_object_pool"

.field public static final blacklist FLAG_DISABLE_THIN_LETTERBOXING_POLICY:Ljava/lang/String; = "com.android.window.flags.disable_thin_letterboxing_policy"

.field public static final blacklist FLAG_DO_NOT_CHECK_INTERSECTION_WHEN_NON_MAGNIFIABLE_WINDOW_TRANSITIONS:Ljava/lang/String; = "com.android.window.flags.do_not_check_intersection_when_non_magnifiable_window_transitions"

.field public static final blacklist FLAG_DRAW_SNAPSHOT_ASPECT_RATIO_MATCH:Ljava/lang/String; = "com.android.window.flags.draw_snapshot_aspect_ratio_match"

.field public static final blacklist FLAG_EDGE_TO_EDGE_BY_DEFAULT:Ljava/lang/String; = "com.android.window.flags.edge_to_edge_by_default"

.field public static final blacklist FLAG_EMBEDDED_ACTIVITY_BACK_NAV_FLAG:Ljava/lang/String; = "com.android.window.flags.embedded_activity_back_nav_flag"

.field public static final blacklist FLAG_ENABLE_ADDITIONAL_WINDOWS_ABOVE_STATUS_BAR:Ljava/lang/String; = "com.android.window.flags.enable_additional_windows_above_status_bar"

.field public static final blacklist FLAG_ENABLE_APP_HEADER_WITH_TASK_DENSITY:Ljava/lang/String; = "com.android.window.flags.enable_app_header_with_task_density"

.field public static final blacklist FLAG_ENABLE_BUFFER_TRANSFORM_HINT_FROM_DISPLAY:Ljava/lang/String; = "com.android.window.flags.enable_buffer_transform_hint_from_display"

.field public static final blacklist FLAG_ENABLE_CAMERA_COMPAT_FOR_DESKTOP_WINDOWING:Ljava/lang/String; = "com.android.window.flags.enable_camera_compat_for_desktop_windowing"

.field public static final blacklist FLAG_ENABLE_COMPATUI_SYSUI_LAUNCHER:Ljava/lang/String; = "com.android.window.flags.enable_compatui_sysui_launcher"

.field public static final blacklist FLAG_ENABLE_DESKTOP_WINDOWING_IMMERSIVE_HANDLE_HIDING:Ljava/lang/String; = "com.android.window.flags.enable_desktop_windowing_immersive_handle_hiding"

.field public static final blacklist FLAG_ENABLE_DESKTOP_WINDOWING_MODALS_POLICY:Ljava/lang/String; = "com.android.window.flags.enable_desktop_windowing_modals_policy"

.field public static final blacklist FLAG_ENABLE_DESKTOP_WINDOWING_MODE:Ljava/lang/String; = "com.android.window.flags.enable_desktop_windowing_mode"

.field public static final blacklist FLAG_ENABLE_DESKTOP_WINDOWING_QUICK_SWITCH:Ljava/lang/String; = "com.android.window.flags.enable_desktop_windowing_quick_switch"

.field public static final blacklist FLAG_ENABLE_DESKTOP_WINDOWING_SCVH_CACHE:Ljava/lang/String; = "com.android.window.flags.enable_desktop_windowing_scvh_cache"

.field public static final blacklist FLAG_ENABLE_DESKTOP_WINDOWING_SIZE_CONSTRAINTS:Ljava/lang/String; = "com.android.window.flags.enable_desktop_windowing_size_constraints"

.field public static final blacklist FLAG_ENABLE_DESKTOP_WINDOWING_TASKBAR_RUNNING_APPS:Ljava/lang/String; = "com.android.window.flags.enable_desktop_windowing_taskbar_running_apps"

.field public static final blacklist FLAG_ENABLE_DESKTOP_WINDOWING_TASK_LIMIT:Ljava/lang/String; = "com.android.window.flags.enable_desktop_windowing_task_limit"

.field public static final blacklist FLAG_ENABLE_DESKTOP_WINDOWING_WALLPAPER_ACTIVITY:Ljava/lang/String; = "com.android.window.flags.enable_desktop_windowing_wallpaper_activity"

.field public static final blacklist FLAG_ENABLE_SCALED_RESIZING:Ljava/lang/String; = "com.android.window.flags.enable_scaled_resizing"

.field public static final blacklist FLAG_ENABLE_TASK_STACK_OBSERVER_IN_SHELL:Ljava/lang/String; = "com.android.window.flags.enable_task_stack_observer_in_shell"

.field public static final blacklist FLAG_ENABLE_THEMED_APP_HEADERS:Ljava/lang/String; = "com.android.window.flags.enable_themed_app_headers"

.field public static final blacklist FLAG_ENABLE_WINDOWING_DYNAMIC_INITIAL_BOUNDS:Ljava/lang/String; = "com.android.window.flags.enable_windowing_dynamic_initial_bounds"

.field public static final blacklist FLAG_ENABLE_WINDOWING_EDGE_DRAG_RESIZE:Ljava/lang/String; = "com.android.window.flags.enable_windowing_edge_drag_resize"

.field public static final blacklist FLAG_ENABLE_WM_EXTENSIONS_FOR_ALL_FLAG:Ljava/lang/String; = "com.android.window.flags.enable_wm_extensions_for_all_flag"

.field public static final blacklist FLAG_ENFORCE_EDGE_TO_EDGE:Ljava/lang/String; = "com.android.window.flags.enforce_edge_to_edge"

.field public static final blacklist FLAG_ENSURE_WALLPAPER_IN_TRANSITIONS:Ljava/lang/String; = "com.android.window.flags.ensure_wallpaper_in_transitions"

.field public static final blacklist FLAG_EXPLICIT_REFRESH_RATE_HINTS:Ljava/lang/String; = "com.android.window.flags.explicit_refresh_rate_hints"

.field public static final blacklist FLAG_FIFO_PRIORITY_FOR_MAJOR_UI_PROCESSES:Ljava/lang/String; = "com.android.window.flags.fifo_priority_for_major_ui_processes"

.field public static final blacklist FLAG_FIX_NO_CONTAINER_UPDATE_WITHOUT_RESIZE:Ljava/lang/String; = "com.android.window.flags.fix_no_container_update_without_resize"

.field public static final blacklist FLAG_FIX_PIP_RESTORE_TO_OVERLAY:Ljava/lang/String; = "com.android.window.flags.fix_pip_restore_to_overlay"

.field public static final blacklist FLAG_FULLSCREEN_DIM_FLAG:Ljava/lang/String; = "com.android.window.flags.fullscreen_dim_flag"

.field public static final blacklist FLAG_GET_DIMMER_ON_CLOSING:Ljava/lang/String; = "com.android.window.flags.get_dimmer_on_closing"

.field public static final blacklist FLAG_IMMERSIVE_APP_REPOSITIONING:Ljava/lang/String; = "com.android.window.flags.immersive_app_repositioning"

.field public static final blacklist FLAG_INSETS_CONTROL_CHANGED_ITEM:Ljava/lang/String; = "com.android.window.flags.insets_control_changed_item"

.field public static final blacklist FLAG_INSETS_CONTROL_SEQ:Ljava/lang/String; = "com.android.window.flags.insets_control_seq"

.field public static final blacklist FLAG_INSETS_DECOUPLED_CONFIGURATION:Ljava/lang/String; = "com.android.window.flags.insets_decoupled_configuration"

.field public static final blacklist FLAG_KEYGUARD_APPEAR_TRANSITION:Ljava/lang/String; = "com.android.window.flags.keyguard_appear_transition"

.field public static final blacklist FLAG_LETTERBOX_BACKGROUND_WALLPAPER:Ljava/lang/String; = "com.android.window.flags.letterbox_background_wallpaper"

.field public static final blacklist FLAG_MOVABLE_CUTOUT_CONFIGURATION:Ljava/lang/String; = "com.android.window.flags.movable_cutout_configuration"

.field public static final blacklist FLAG_MOVE_ANIMATION_OPTIONS_TO_CHANGE:Ljava/lang/String; = "com.android.window.flags.move_animation_options_to_change"

.field public static final blacklist FLAG_MULTI_CROP:Ljava/lang/String; = "com.android.window.flags.multi_crop"

.field public static final blacklist FLAG_NAV_BAR_TRANSPARENT_BY_DEFAULT:Ljava/lang/String; = "com.android.window.flags.nav_bar_transparent_by_default"

.field public static final blacklist FLAG_NO_CONSECUTIVE_VISIBILITY_EVENTS:Ljava/lang/String; = "com.android.window.flags.no_consecutive_visibility_events"

.field public static final blacklist FLAG_NO_VISIBILITY_EVENT_ON_DISPLAY_STATE_CHANGE:Ljava/lang/String; = "com.android.window.flags.no_visibility_event_on_display_state_change"

.field public static final blacklist FLAG_OFFLOAD_COLOR_EXTRACTION:Ljava/lang/String; = "com.android.window.flags.offload_color_extraction"

.field public static final blacklist FLAG_PREDICTIVE_BACK_SYSTEM_ANIMS:Ljava/lang/String; = "com.android.window.flags.predictive_back_system_anims"

.field public static final blacklist FLAG_REAR_DISPLAY_DISABLE_FORCE_DESKTOP_SYSTEM_DECORATIONS:Ljava/lang/String; = "com.android.window.flags.rear_display_disable_force_desktop_system_decorations"

.field public static final blacklist FLAG_RELEASE_SNAPSHOT_AGGRESSIVELY:Ljava/lang/String; = "com.android.window.flags.release_snapshot_aggressively"

.field public static final blacklist FLAG_REMOVE_PREPARE_SURFACE_IN_PLACEMENT:Ljava/lang/String; = "com.android.window.flags.remove_prepare_surface_in_placement"

.field public static final blacklist FLAG_RESPECT_NON_TOP_VISIBLE_FIXED_ORIENTATION:Ljava/lang/String; = "com.android.window.flags.respect_non_top_visible_fixed_orientation"

.field public static final blacklist FLAG_SCREEN_RECORDING_CALLBACKS:Ljava/lang/String; = "com.android.window.flags.screen_recording_callbacks"

.field public static final blacklist FLAG_SDK_DESIRED_PRESENT_TIME:Ljava/lang/String; = "com.android.window.flags.sdk_desired_present_time"

.field public static final blacklist FLAG_SECURE_WINDOW_STATE:Ljava/lang/String; = "com.android.window.flags.secure_window_state"

.field public static final blacklist FLAG_SET_SC_PROPERTIES_IN_CLIENT:Ljava/lang/String; = "com.android.window.flags.set_sc_properties_in_client"

.field public static final blacklist FLAG_SKIP_SLEEPING_WHEN_SWITCHING_DISPLAY:Ljava/lang/String; = "com.android.window.flags.skip_sleeping_when_switching_display"

.field public static final blacklist FLAG_SUPPORTS_MULTI_INSTANCE_SYSTEM_UI:Ljava/lang/String; = "com.android.window.flags.supports_multi_instance_system_ui"

.field public static final blacklist FLAG_SURFACE_CONTROL_INPUT_RECEIVER:Ljava/lang/String; = "com.android.window.flags.surface_control_input_receiver"

.field public static final blacklist FLAG_SURFACE_TRUSTED_OVERLAY:Ljava/lang/String; = "com.android.window.flags.surface_trusted_overlay"

.field public static final blacklist FLAG_SYNC_SCREEN_CAPTURE:Ljava/lang/String; = "com.android.window.flags.sync_screen_capture"

.field public static final blacklist FLAG_TASK_FRAGMENT_SYSTEM_ORGANIZER_FLAG:Ljava/lang/String; = "com.android.window.flags.task_fragment_system_organizer_flag"

.field public static final blacklist FLAG_TRANSIT_READY_TRACKING:Ljava/lang/String; = "com.android.window.flags.transit_ready_tracking"

.field public static final blacklist FLAG_TRUSTED_PRESENTATION_LISTENER_FOR_WINDOW:Ljava/lang/String; = "com.android.window.flags.trusted_presentation_listener_for_window"

.field public static final blacklist FLAG_UNTRUSTED_EMBEDDING_ANY_APP_PERMISSION:Ljava/lang/String; = "com.android.window.flags.untrusted_embedding_any_app_permission"

.field public static final blacklist FLAG_UNTRUSTED_EMBEDDING_STATE_SHARING:Ljava/lang/String; = "com.android.window.flags.untrusted_embedding_state_sharing"

.field public static final blacklist FLAG_USER_MIN_ASPECT_RATIO_APP_DEFAULT:Ljava/lang/String; = "com.android.window.flags.user_min_aspect_ratio_app_default"

.field public static final blacklist FLAG_USE_TASKS_DIM_ONLY:Ljava/lang/String; = "com.android.window.flags.use_tasks_dim_only"

.field public static final blacklist FLAG_USE_WINDOW_ORIGINAL_TOUCHABLE_REGION_WHEN_MAGNIFICATION_RECOMPUTE_BOUNDS:Ljava/lang/String; = "com.android.window.flags.use_window_original_touchable_region_when_magnification_recompute_bounds"

.field public static final blacklist FLAG_WAIT_FOR_TRANSITION_ON_DISPLAY_SWITCH:Ljava/lang/String; = "com.android.window.flags.wait_for_transition_on_display_switch"

.field public static final blacklist FLAG_WALLPAPER_OFFSET_ASYNC:Ljava/lang/String; = "com.android.window.flags.wallpaper_offset_async"

.field public static final blacklist FLAG_WINDOW_SESSION_RELAYOUT_INFO:Ljava/lang/String; = "com.android.window.flags.window_session_relayout_info"

.field public static final blacklist FLAG_WINDOW_TOKEN_CONFIG_THREAD_SAFE:Ljava/lang/String; = "com.android.window.flags.window_token_config_thread_safe"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/window/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist activityEmbeddingAnimationCustomizationFlag()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->activityEmbeddingAnimationCustomizationFlag()Z

    move-result v0

    return v0
.end method

.method public static greylist activityEmbeddingInteractiveDividerFlag()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->activityEmbeddingInteractiveDividerFlag()Z

    move-result v0

    return v0
.end method

.method public static greylist activityEmbeddingOverlayPresentationFlag()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->activityEmbeddingOverlayPresentationFlag()Z

    move-result v0

    return v0
.end method

.method public static greylist activitySnapshotByDefault()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->activitySnapshotByDefault()Z

    move-result v0

    return v0
.end method

.method public static greylist activityWindowInfoFlag()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->activityWindowInfoFlag()Z

    move-result v0

    return v0
.end method

.method public static greylist allowDisableActivityRecordInputSink()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->allowDisableActivityRecordInputSink()Z

    move-result v0

    return v0
.end method

.method public static greylist allowHideScmButton()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->allowHideScmButton()Z

    move-result v0

    return v0
.end method

.method public static greylist allowsScreenSizeDecoupledFromStatusBarAndCutout()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->allowsScreenSizeDecoupledFromStatusBarAndCutout()Z

    move-result v0

    return v0
.end method

.method public static greylist alwaysDeferTransitionWhenApplyWct()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->alwaysDeferTransitionWhenApplyWct()Z

    move-result v0

    return v0
.end method

.method public static greylist alwaysDrawMagnificationFullscreenBorder()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->alwaysDrawMagnificationFullscreenBorder()Z

    move-result v0

    return v0
.end method

.method public static greylist alwaysUpdateWallpaperPermission()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->alwaysUpdateWallpaperPermission()Z

    move-result v0

    return v0
.end method

.method public static greylist appCompatPropertiesApi()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->appCompatPropertiesApi()Z

    move-result v0

    return v0
.end method

.method public static greylist appCompatRefactoring()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->appCompatRefactoring()Z

    move-result v0

    return v0
.end method

.method public static greylist appCompatUiFramework()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->appCompatUiFramework()Z

    move-result v0

    return v0
.end method

.method public static greylist balDontBringExistingBackgroundTaskStackToFg()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->balDontBringExistingBackgroundTaskStackToFg()Z

    move-result v0

    return v0
.end method

.method public static greylist balImproveRealCallerVisibilityCheck()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->balImproveRealCallerVisibilityCheck()Z

    move-result v0

    return v0
.end method

.method public static greylist balImprovedMetrics()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->balImprovedMetrics()Z

    move-result v0

    return v0
.end method

.method public static greylist balRequireOptInByPendingIntentCreator()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->balRequireOptInByPendingIntentCreator()Z

    move-result v0

    return v0
.end method

.method public static greylist balRequireOptInSameUid()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->balRequireOptInSameUid()Z

    move-result v0

    return v0
.end method

.method public static greylist balRespectAppSwitchStateWhenCheckBoundByForegroundUid()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->balRespectAppSwitchStateWhenCheckBoundByForegroundUid()Z

    move-result v0

    return v0
.end method

.method public static greylist balShowToasts()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->balShowToasts()Z

    move-result v0

    return v0
.end method

.method public static greylist balShowToastsBlocked()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->balShowToastsBlocked()Z

    move-result v0

    return v0
.end method

.method public static greylist blastSyncNotificationShadeOnDisplaySwitch()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->blastSyncNotificationShadeOnDisplaySwitch()Z

    move-result v0

    return v0
.end method

.method public static greylist bundleClientTransactionFlag()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->bundleClientTransactionFlag()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraCompatForFreeform()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->cameraCompatForFreeform()Z

    move-result v0

    return v0
.end method

.method public static greylist cameraCompatFullscreenPickSameTaskActivity()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->cameraCompatFullscreenPickSameTaskActivity()Z

    move-result v0

    return v0
.end method

.method public static greylist closeToSquareConfigIncludesStatusBar()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->closeToSquareConfigIncludesStatusBar()Z

    move-result v0

    return v0
.end method

.method public static greylist configurableFontScaleDefault()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->configurableFontScaleDefault()Z

    move-result v0

    return v0
.end method

.method public static greylist coverDisplayOptIn()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->coverDisplayOptIn()Z

    move-result v0

    return v0
.end method

.method public static greylist deferDisplayUpdates()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->deferDisplayUpdates()Z

    move-result v0

    return v0
.end method

.method public static greylist delayNotificationToMagnificationWhenRecentsWindowToFrontTransition()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->delayNotificationToMagnificationWhenRecentsWindowToFrontTransition()Z

    move-result v0

    return v0
.end method

.method public static greylist delegateUnhandledDrags()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->delegateUnhandledDrags()Z

    move-result v0

    return v0
.end method

.method public static greylist deleteCaptureDisplay()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->deleteCaptureDisplay()Z

    move-result v0

    return v0
.end method

.method public static greylist density390Api()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->density390Api()Z

    move-result v0

    return v0
.end method

.method public static greylist disableObjectPool()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->disableObjectPool()Z

    move-result v0

    return v0
.end method

.method public static greylist disableThinLetterboxingPolicy()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->disableThinLetterboxingPolicy()Z

    move-result v0

    return v0
.end method

.method public static greylist doNotCheckIntersectionWhenNonMagnifiableWindowTransitions()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->doNotCheckIntersectionWhenNonMagnifiableWindowTransitions()Z

    move-result v0

    return v0
.end method

.method public static greylist drawSnapshotAspectRatioMatch()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->drawSnapshotAspectRatioMatch()Z

    move-result v0

    return v0
.end method

.method public static greylist edgeToEdgeByDefault()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->edgeToEdgeByDefault()Z

    move-result v0

    return v0
.end method

.method public static greylist embeddedActivityBackNavFlag()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->embeddedActivityBackNavFlag()Z

    move-result v0

    return v0
.end method

.method public static greylist enableAdditionalWindowsAboveStatusBar()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableAdditionalWindowsAboveStatusBar()Z

    move-result v0

    return v0
.end method

.method public static greylist enableAppHeaderWithTaskDensity()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableAppHeaderWithTaskDensity()Z

    move-result v0

    return v0
.end method

.method public static greylist enableBufferTransformHintFromDisplay()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableBufferTransformHintFromDisplay()Z

    move-result v0

    return v0
.end method

.method public static greylist enableCameraCompatForDesktopWindowing()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableCameraCompatForDesktopWindowing()Z

    move-result v0

    return v0
.end method

.method public static greylist enableCompatuiSysuiLauncher()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableCompatuiSysuiLauncher()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDesktopWindowingImmersiveHandleHiding()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableDesktopWindowingImmersiveHandleHiding()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDesktopWindowingModalsPolicy()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableDesktopWindowingModalsPolicy()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDesktopWindowingMode()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableDesktopWindowingMode()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDesktopWindowingQuickSwitch()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableDesktopWindowingQuickSwitch()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDesktopWindowingScvhCache()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableDesktopWindowingScvhCache()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDesktopWindowingSizeConstraints()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableDesktopWindowingSizeConstraints()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDesktopWindowingTaskLimit()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableDesktopWindowingTaskLimit()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDesktopWindowingTaskbarRunningApps()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableDesktopWindowingTaskbarRunningApps()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDesktopWindowingWallpaperActivity()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableDesktopWindowingWallpaperActivity()Z

    move-result v0

    return v0
.end method

.method public static greylist enableScaledResizing()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableScaledResizing()Z

    move-result v0

    return v0
.end method

.method public static greylist enableTaskStackObserverInShell()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableTaskStackObserverInShell()Z

    move-result v0

    return v0
.end method

.method public static greylist enableThemedAppHeaders()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableThemedAppHeaders()Z

    move-result v0

    return v0
.end method

.method public static greylist enableWindowingDynamicInitialBounds()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableWindowingDynamicInitialBounds()Z

    move-result v0

    return v0
.end method

.method public static greylist enableWindowingEdgeDragResize()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableWindowingEdgeDragResize()Z

    move-result v0

    return v0
.end method

.method public static greylist enableWmExtensionsForAllFlag()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enableWmExtensionsForAllFlag()Z

    move-result v0

    return v0
.end method

.method public static greylist enforceEdgeToEdge()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->enforceEdgeToEdge()Z

    move-result v0

    return v0
.end method

.method public static greylist ensureWallpaperInTransitions()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->ensureWallpaperInTransitions()Z

    move-result v0

    return v0
.end method

.method public static greylist explicitRefreshRateHints()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->explicitRefreshRateHints()Z

    move-result v0

    return v0
.end method

.method public static greylist fifoPriorityForMajorUiProcesses()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->fifoPriorityForMajorUiProcesses()Z

    move-result v0

    return v0
.end method

.method public static greylist fixNoContainerUpdateWithoutResize()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->fixNoContainerUpdateWithoutResize()Z

    move-result v0

    return v0
.end method

.method public static greylist fixPipRestoreToOverlay()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->fixPipRestoreToOverlay()Z

    move-result v0

    return v0
.end method

.method public static greylist fullscreenDimFlag()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->fullscreenDimFlag()Z

    move-result v0

    return v0
.end method

.method public static greylist getDimmerOnClosing()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->getDimmerOnClosing()Z

    move-result v0

    return v0
.end method

.method public static greylist immersiveAppRepositioning()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->immersiveAppRepositioning()Z

    move-result v0

    return v0
.end method

.method public static greylist insetsControlChangedItem()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->insetsControlChangedItem()Z

    move-result v0

    return v0
.end method

.method public static greylist insetsControlSeq()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->insetsControlSeq()Z

    move-result v0

    return v0
.end method

.method public static greylist insetsDecoupledConfiguration()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->insetsDecoupledConfiguration()Z

    move-result v0

    return v0
.end method

.method public static greylist keyguardAppearTransition()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->keyguardAppearTransition()Z

    move-result v0

    return v0
.end method

.method public static greylist letterboxBackgroundWallpaper()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->letterboxBackgroundWallpaper()Z

    move-result v0

    return v0
.end method

.method public static greylist movableCutoutConfiguration()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->movableCutoutConfiguration()Z

    move-result v0

    return v0
.end method

.method public static greylist moveAnimationOptionsToChange()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->moveAnimationOptionsToChange()Z

    move-result v0

    return v0
.end method

.method public static greylist multiCrop()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->multiCrop()Z

    move-result v0

    return v0
.end method

.method public static greylist navBarTransparentByDefault()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->navBarTransparentByDefault()Z

    move-result v0

    return v0
.end method

.method public static greylist noConsecutiveVisibilityEvents()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->noConsecutiveVisibilityEvents()Z

    move-result v0

    return v0
.end method

.method public static greylist noVisibilityEventOnDisplayStateChange()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->noVisibilityEventOnDisplayStateChange()Z

    move-result v0

    return v0
.end method

.method public static greylist offloadColorExtraction()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->offloadColorExtraction()Z

    move-result v0

    return v0
.end method

.method public static greylist predictiveBackSystemAnims()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->predictiveBackSystemAnims()Z

    move-result v0

    return v0
.end method

.method public static greylist rearDisplayDisableForceDesktopSystemDecorations()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->rearDisplayDisableForceDesktopSystemDecorations()Z

    move-result v0

    return v0
.end method

.method public static greylist releaseSnapshotAggressively()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->releaseSnapshotAggressively()Z

    move-result v0

    return v0
.end method

.method public static greylist removePrepareSurfaceInPlacement()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->removePrepareSurfaceInPlacement()Z

    move-result v0

    return v0
.end method

.method public static greylist respectNonTopVisibleFixedOrientation()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->respectNonTopVisibleFixedOrientation()Z

    move-result v0

    return v0
.end method

.method public static greylist screenRecordingCallbacks()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->screenRecordingCallbacks()Z

    move-result v0

    return v0
.end method

.method public static greylist sdkDesiredPresentTime()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->sdkDesiredPresentTime()Z

    move-result v0

    return v0
.end method

.method public static greylist secureWindowState()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->secureWindowState()Z

    move-result v0

    return v0
.end method

.method public static greylist setScPropertiesInClient()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->setScPropertiesInClient()Z

    move-result v0

    return v0
.end method

.method public static greylist skipSleepingWhenSwitchingDisplay()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->skipSleepingWhenSwitchingDisplay()Z

    move-result v0

    return v0
.end method

.method public static greylist supportsMultiInstanceSystemUi()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->supportsMultiInstanceSystemUi()Z

    move-result v0

    return v0
.end method

.method public static greylist surfaceControlInputReceiver()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->surfaceControlInputReceiver()Z

    move-result v0

    return v0
.end method

.method public static greylist surfaceTrustedOverlay()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->surfaceTrustedOverlay()Z

    move-result v0

    return v0
.end method

.method public static greylist syncScreenCapture()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->syncScreenCapture()Z

    move-result v0

    return v0
.end method

.method public static greylist taskFragmentSystemOrganizerFlag()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->taskFragmentSystemOrganizerFlag()Z

    move-result v0

    return v0
.end method

.method public static greylist transitReadyTracking()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->transitReadyTracking()Z

    move-result v0

    return v0
.end method

.method public static greylist trustedPresentationListenerForWindow()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->trustedPresentationListenerForWindow()Z

    move-result v0

    return v0
.end method

.method public static greylist untrustedEmbeddingAnyAppPermission()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->untrustedEmbeddingAnyAppPermission()Z

    move-result v0

    return v0
.end method

.method public static greylist untrustedEmbeddingStateSharing()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->untrustedEmbeddingStateSharing()Z

    move-result v0

    return v0
.end method

.method public static greylist useTasksDimOnly()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->useTasksDimOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist useWindowOriginalTouchableRegionWhenMagnificationRecomputeBounds()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->useWindowOriginalTouchableRegionWhenMagnificationRecomputeBounds()Z

    move-result v0

    return v0
.end method

.method public static greylist userMinAspectRatioAppDefault()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->userMinAspectRatioAppDefault()Z

    move-result v0

    return v0
.end method

.method public static greylist waitForTransitionOnDisplaySwitch()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->waitForTransitionOnDisplaySwitch()Z

    move-result v0

    return v0
.end method

.method public static greylist wallpaperOffsetAsync()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->wallpaperOffsetAsync()Z

    move-result v0

    return v0
.end method

.method public static greylist windowSessionRelayoutInfo()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->windowSessionRelayoutInfo()Z

    move-result v0

    return v0
.end method

.method public static greylist windowTokenConfigThreadSafe()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/window/flags/FeatureFlags;->windowTokenConfigThreadSafe()Z

    move-result v0

    return v0
.end method
