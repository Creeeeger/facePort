.class public Lcom/android/systemui/util/SettingsHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final COVER_SCREEN_TIME_OUT:Ljava/lang/String; = "cover_screen_timeout"

.field private static final DATA_TYPE_FLOAT:Ljava/lang/String; = "Float"

.field private static final DATA_TYPE_INT:Ljava/lang/String; = "Int"

.field private static final DATA_TYPE_STRING:Ljava/lang/String; = "String"

.field private static final DEBUG:Z = true

.field private static final DEBUG_DETAIL:Z = false

.field public static final EMERGENCY_MESSAGE_IN_WORKING_STATE:Ljava/lang/String; = "emergency_message_working_state"

.field public static final INDEX_ACCELEROMETER_ROTATION:Ljava/lang/String; = "accelerometer_rotation"

.field public static final INDEX_ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED:Ljava/lang/String; = "accessibility_display_daltonizer_enabled"

.field public static final INDEX_ACCESSIBILITY_DISPLAY_INVERSION_ENABLED:Ljava/lang/String; = "accessibility_display_inversion_enabled"

.field public static final INDEX_ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED:Ljava/lang/String; = "high_text_contrast_enabled"

.field public static final INDEX_ACCESSIBILITY_INTERACTIVE_UI_TIMEOUT_MS:Ljava/lang/String; = "accessibility_interactive_ui_timeout_ms"

.field public static final INDEX_ACCESSIBILITY_REDUCE_BRIGHT_COLORS_ACTIVATED:Ljava/lang/String; = "reduce_bright_colors_activated"

.field public static final INDEX_ACCESSIBILITY_REDUCE_TRANSPARENCY:Ljava/lang/String; = "accessibility_reduce_transparency"

.field public static final INDEX_ACCESS_CONTROL_ENABLED:Ljava/lang/String; = "access_control_enabled"

.field public static final INDEX_ACTION_MEMO_ON_OFF_SCREEN:Ljava/lang/String; = "action_memo_on_off_screen"

.field public static final INDEX_ADAPTIVE_COLOR_MODE:Ljava/lang/String; = "lock_adaptive_color"

.field public static final INDEX_ADAPTIVE_COLOR_MODE_SUB:Ljava/lang/String; = "lock_adaptive_color_sub"

.field public static final INDEX_AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"

.field public static final INDEX_AI_INFO_CONFIRMED:Ljava/lang/String; = "ai_info_confirmed"

.field private static final INDEX_ALL_SOUND_OFF:Ljava/lang/String; = "all_sound_off"

.field public static final INDEX_AOD_LIGHT_REVEAL_ALPHA:Ljava/lang/String; = "aod_light_reveal_alpha"

.field public static final INDEX_AOD_MODE:Ljava/lang/String; = "aod_mode"

.field public static final INDEX_AOD_MODE_END_TIME:Ljava/lang/String; = "aod_mode_end_time"

.field public static final INDEX_AOD_MODE_START_TIME:Ljava/lang/String; = "aod_mode_start_time"

.field public static final INDEX_AOD_SHOW_FOR_NEW_NOTI:Ljava/lang/String; = "aod_show_for_new_noti"

.field public static final INDEX_AOD_SHOW_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "aod_show_lockscreen_wallpaper"

.field public static final INDEX_AOD_SHOW_STATE:Ljava/lang/String; = "aod_show_state"

.field public static final INDEX_AOD_TAP_TO_SHOW_MODE:Ljava/lang/String; = "aod_tap_to_show_mode"

.field public static final INDEX_ASSISTANT:Ljava/lang/String; = "assistant"

.field public static final INDEX_ASSIST_DISCLOSURE_ENABLED:Ljava/lang/String; = "assist_disclosure_enabled"

.field public static final INDEX_AUTOMATIC_UNLOCK:Ljava/lang/String; = "automatic_unlock"

.field public static final INDEX_AUTO_BRIGHTNESS_TRANSITION_TIME:Ljava/lang/String; = "auto_brightness_transition_time"

.field public static final INDEX_AWESOME_SHORTCUT_APP_LIST:Ljava/lang/String; = "lock_application_shortcut"

.field private static final INDEX_BIOMETRIC_UNLOCK_VI_ENABLED:Ljava/lang/String; = "screen_transition_effect"

.field public static final INDEX_BLUELIGHT_FLITER_ADAPTIVE:Ljava/lang/String; = "blue_light_filter_adaptive_mode"

.field public static final INDEX_BLUELIGHT_FLITER_SCHEDULED:Ljava/lang/String; = "blue_light_filter_scheduled"

.field public static final INDEX_BLUELIGHT_FLITER_TYPE:Ljava/lang/String; = "blue_light_filter_type"

.field public static final INDEX_BLUE_LIGHT_FILTER:Ljava/lang/String; = "blue_light_filter"

.field public static final INDEX_BLUE_LIGHT_FILTER_OP:Ljava/lang/String; = "blue_light_filter_opacity"

.field public static final INDEX_BOUNCER_ONE_HAND_POSITION:Ljava/lang/String; = "bouncer_one_hand_position"

.field public static final INDEX_BUDS_ENABLE:Ljava/lang/String; = "buds_enable"

.field public static final INDEX_CAMERA_FLASH_NOTIFICATION:Ljava/lang/String; = "camera_flash_notification"

.field public static final INDEX_CN_SUPPORT_CIRCLE_TO_SEARCH:Ljava/lang/String; = "cn_support_circe_to_search"

.field public static final INDEX_COLOR_ADJUSTMENT:Ljava/lang/String; = "color_blind"

.field public static final INDEX_COLOR_LENS:Ljava/lang/String; = "color_lens_switch"

.field public static final INDEX_COLOR_THEME_APP_ICON:Ljava/lang/String; = "colortheme_app_icon"

.field public static final INDEX_COLOR_THEME_STATE:Ljava/lang/String; = "wallpapertheme_state"

.field public static final INDEX_COVER_SCREEN_NOTIFICATION_HISTORY:Ljava/lang/String; = "notification_history_enabled"

.field public static final INDEX_COVER_SCREEN_QUICK_REPLY_TEXT:Ljava/lang/String; = "cover_screen_quick_reply_text"

.field public static final INDEX_COVER_SCREEN_QUICK_REPLY_TEXT_POS_FOR_TRANSLATION:Ljava/lang/String; = "cover_screen_quick_reply_text_pos_for_translation"

.field public static final INDEX_COVER_SCREEN_SHOW_NOTIFICATION:Ljava/lang/String; = "cover_screen_show_notification"

.field public static final INDEX_COVER_SCREEN_SHOW_NOTIFICATION_TIP:Ljava/lang/String; = "cover_screen_show_notification_tip"

.field public static final INDEX_CURRENT_SEC_ACTIVE_THEMEPACKAGE:Ljava/lang/String; = "current_sec_active_themepackage"

.field public static final INDEX_CURRENT_SEC_APPICON_THEME_PACKAGE:Ljava/lang/String; = "current_sec_appicon_theme_package"

.field public static final INDEX_DARK_FILTER_WALLPAPER:Ljava/lang/String; = "display_night_theme_wallpaper"

.field public static final INDEX_DARK_THEME:Ljava/lang/String; = "display_night_theme"

.field public static final INDEX_DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final INDEX_DOUBLE_TAP_TO_SLEEP:Ljava/lang/String; = "double_tap_to_sleep"

.field public static final INDEX_EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field public static final INDEX_EDGE_LIGHTING_ON:Ljava/lang/String; = "edge_lighting"

.field public static final INDEX_EMERGENCY_MODE:Ljava/lang/String; = "emergency_mode"

.field public static final INDEX_ENABLED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "enabled_accessibility_services"

.field public static final INDEX_EXPAND_QS_AT_ONCE:Ljava/lang/String; = "swipe_directly_to_quick_setting"

.field public static final INDEX_EXPAND_QS_AT_ONCE_AREA:Ljava/lang/String; = "swipe_directly_to_quick_setting_area"

.field public static final INDEX_EXPAND_QS_AT_ONCE_POSITION:Ljava/lang/String; = "swipe_directly_to_quick_setting_position"

.field public static final INDEX_FACE_STAY_ON_LOCK:Ljava/lang/String; = "face_stay_on_lock_screen"

.field public static final INDEX_FILL_UDC_DISPLAY_CUTOUT:Ljava/lang/String; = "fill_udc_display_cutout"

.field public static final INDEX_FINGERPRINT_STAY_ON_LOCK:Ljava/lang/String; = "fingerprint_stay_on_lock_screen"

.field public static final INDEX_FINGER_SENSOR_BLOCK_POPUP_SHOW_AGAIN:Ljava/lang/String; = "fingerprint_sensor_block_popup_show_again"

.field public static final INDEX_FLASHLIGHT_SOS_ON:Ljava/lang/String; = "flashlight_sos_enabled"

.field public static final INDEX_FLASH_LIGHT_BRIGHTNESS_LEVEL:Ljava/lang/String; = "Flashlight_brightness_level"

.field public static final INDEX_GAME_DOUBLE_SWIPE_ENABLE:Ljava/lang/String; = "game_double_swipe_enable"

.field public static final INDEX_GAME_SHOW_FLOATING_ICON:Ljava/lang/String; = "game_show_floating_icon"

.field public static final INDEX_GLOBAL_ANIMATOR_DURATION_SCALE:Ljava/lang/String; = "animator_duration_scale"

.field public static final INDEX_GRAYSCALE:Ljava/lang/String; = "greyscale_mode"

.field public static final INDEX_HAPTIC_FEEDBACK_ENABLED:Ljava/lang/String; = "haptic_feedback_enabled"

.field public static final INDEX_HIJRI_CALENDAR:Ljava/lang/String; = "aodlock_support_hijri"

.field public static final INDEX_HOME_WALLPAPER_SOURCE:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field public static final INDEX_HOME_WALLPAPER_SOURCE_SUB:Ljava/lang/String; = "sub_display_system_wallpaper_transparency"

.field public static final INDEX_ICON_BLACKLIST:Ljava/lang/String; = "icon_blacklist"

.field public static final INDEX_INDICATOR_SHOW_NETWORK_INFORMATION:Ljava/lang/String; = "status_bar_show_network_information"

.field public static final INDEX_KEYBOARD_BUTTON_POSITION:Ljava/lang/String; = "show_keyboard_button_position"

.field public static final INDEX_LARGE_COVER_SCREEN_NAVIGATION:Ljava/lang/String; = "large_cover_screen_navigation"

.field public static final INDEX_LIFT_TO_WAKE:Ljava/lang/String; = "lift_to_wake"

.field public static final INDEX_LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field public static final INDEX_LOCKSCREEN_2_STEP_VERIFICATION:Ljava/lang/String; = "knox_finger_print_plus"

.field public static final INDEX_LOCKSCREEN_MINIMIZING_NOTIFICATION:Ljava/lang/String; = "lockscreen_minimizing_notification"

.field public static final INDEX_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "lockscreen_wallpaper"

.field public static final INDEX_LOCKSCREEN_WALLPAPER_SUB:Ljava/lang/String; = "lockscreen_wallpaper_sub"

.field public static final INDEX_LOCKSCREEN_WALLPAPER_TRANSPARENT:Ljava/lang/String; = "lockscreen_wallpaper_transparent"

.field public static final INDEX_LOCKSCREEN_WALLPAPER_TRANSPARENT_SUB:Ljava/lang/String; = "sub_display_lockscreen_wallpaper_transparency"

.field public static final INDEX_LOCK_FMM_MESSAGE:Ljava/lang/String; = "lock_fmm_Message"

.field public static final INDEX_LOCK_FMM_PHONE:Ljava/lang/String; = "lock_fmm_phone"

.field public static final INDEX_LOCK_FUNCTIONS:Ljava/lang/String; = "lock_function_val"

.field public static final INDEX_LOCK_SCREEN_SHOW_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_show_notifications"

.field public static final INDEX_LOCK_SHORTCUT_MASTER_ENABLED:Ljava/lang/String; = "lockscreen_show_shortcut"

.field public static final INDEX_LOCK_SHORTCUT_TYPE:Ljava/lang/String; = "lock_shortcut_type"

.field public static final INDEX_LOCK_TOUCH_AND_HOLD_TO_EDIT:Ljava/lang/String; = "lock_editor_support_touch_hold"

.field public static final INDEX_LOW_POWER_MODE:Ljava/lang/String; = "low_power"

.field public static final INDEX_LUNAR_CALENDAR:Ljava/lang/String; = "aodlock_support_lunar"

.field public static final INDEX_MAX_BRIGHTNESS_DIALOG_SHOWN:Ljava/lang/String; = "shown_max_brightness_dialog"

.field public static final INDEX_MDM_AUTO_WIPE_ENABLE:Ljava/lang/String; = "auto_swipe_main_user"

.field public static final INDEX_MEDIA_ONGOING:Ljava/lang/String; = "key_now_bar_servicebox_music"

.field public static final INDEX_MIC_MODE_EFFECT:Ljava/lang/String; = "mic_mode_effect"

.field public static final INDEX_MIC_MODE_ENABLE:Ljava/lang/String; = "mic_mode_enable"

.field public static final INDEX_MIC_MODE_WIFI_CALL:Ljava/lang/String; = "mic_mode_wificall"

.field public static final INDEX_MINIMAL_BATTERY_USE:Ljava/lang/String; = "minimal_battery_use"

.field public static final INDEX_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field public static final INDEX_MOBILE_DATA_QUESTION:Ljava/lang/String; = "mobile_data_question"

.field public static final INDEX_MULTI_SIM_DEVICE_SIM1_ON:Ljava/lang/String; = "phone1_on"

.field public static final INDEX_MULTI_SIM_DEVICE_SIM2_ON:Ljava/lang/String; = "phone2_on"

.field public static final INDEX_MW_ENTER_SPLIT_USING_GESTURE:Ljava/lang/String; = "open_in_split_screen_view"

.field public static final INDEX_NAVIGATIONBAR_BLOCK_GESTURES_WITH_SPEN:Ljava/lang/String; = "navigation_bar_block_gestures_with_spen"

.field public static final INDEX_NAVIGATIONBAR_BUTTON_TO_HIDE_KEYBOARD:Ljava/lang/String; = "navigation_bar_button_to_hide_keyboard"

.field public static final INDEX_NAVIGATIONBAR_COLOR:Ljava/lang/String; = "navigationbar_color"

.field public static final INDEX_NAVIGATIONBAR_CURRENT_COLOR:Ljava/lang/String; = "navigationbar_current_color"

.field public static final INDEX_NAVIGATIONBAR_GESTURE_HINT:Ljava/lang/String; = "navigation_bar_gesture_hint"

.field public static final INDEX_NAVIGATIONBAR_KEY_ORDER:Ljava/lang/String; = "navigationbar_key_order"

.field public static final INDEX_NAVIGATIONBAR_SPLUGIN_FLAGS:Ljava/lang/String; = "navigationbar_splugin_flags"

.field public static final INDEX_NAVIGATIONBAR_USE_THEME_DEFAULT:Ljava/lang/String; = "navigationbar_use_theme_default"

.field public static final INDEX_NAVIGATION_BAR_BACK_GESTURE_SENSITIVITY:Ljava/lang/String; = "navigation_bar_back_gesture_sensitivity"

.field public static final INDEX_NAVIGATION_BAR_BACK_GESTURE_SENSITIVITY_SUB:Ljava/lang/String; = "navigation_bar_back_gesture_sensitivity_sub"

.field public static final INDEX_NAVIGATION_BAR_BUTTON_POSITION:Ljava/lang/String; = "navigationbar_key_position"

.field public static final INDEX_NAVIGATION_BAR_GESTURE_DISABLED_BY_POLICY:Ljava/lang/String; = "navigation_bar_gesture_disabled_by_policy"

.field public static final INDEX_NAVIGATION_BAR_GESTURE_WHILE_HIDDEN:Ljava/lang/String; = "navigation_bar_gesture_while_hidden"

.field public static final INDEX_NAVIGATION_BAR_ROTATE_SUGGESTION_ENABLED:Ljava/lang/String; = "navigation_bar_rotate_suggestion_enabled"

.field public static final INDEX_NAVIGATION_GESTURES_VIBRATE:Ljava/lang/String; = "navigation_gestures_vibrate"

.field public static final INDEX_NAVIGATION_MODE:Ljava/lang/String; = "navigation_mode"

.field public static final INDEX_NDIGITS_PIN:Ljava/lang/String; = "n_digits_pin_enabled"

.field public static final INDEX_NEGATIVE_COLORS:Ljava/lang/String; = "high_contrast"

.field public static final INDEX_NEW_DEX_MODE:Ljava/lang/String; = "new_dex"

.field public static final INDEX_NIGHT_DIM:Ljava/lang/String; = "blue_light_filter_night_dim"

.field public static final INDEX_NOTI_POLICY_APPLY_WALPAPER_THEME:Ljava/lang/String; = "notification_apply_wallpaper_theme"

.field public static final INDEX_NOTI_POLICY_SORT_TIME:Ljava/lang/String; = "notification_sort_order"

.field public static final INDEX_NOTI_SETTINGS_HIGHLIGHTS:Ljava/lang/String; = "noti_intelligence_priority_conversation"

.field public static final INDEX_NOTI_SETTINGS_INSIGNIFICANT:Ljava/lang/String; = "noti_auto_more_grouping"

.field public static final INDEX_NOTI_SETTINGS_INSIGNIFICANT_BG_ACTIVITIES:Ljava/lang/String; = "noti_filter_background_notification"

.field public static final INDEX_NOTI_SETTINGS_INSIGNIFICANT_MINIMIZED_NOTIFICATIONS:Ljava/lang/String; = "noti_filter_low_importance_notification"

.field public static final INDEX_NOTI_SETTINGS_INSIGNIFICANT_OLD_NOTIFICATIONS:Ljava/lang/String; = "noti_filter_old_notification"

.field public static final INDEX_NOTI_SETTINGS_INSIGNIFICANT_PROMOTION:Ljava/lang/String; = "noti_filter_promotion_notification"

.field public static final INDEX_NOTI_SETTINGS_SUMMARIZE:Ljava/lang/String; = "noti_intelligence_summarize_content"

.field public static final INDEX_ONE_HAND_MODE_RUNNING:Ljava/lang/String; = "any_screen_running"

.field public static final INDEX_ONE_HAND_RUNNING_INFO:Ljava/lang/String; = "reduce_screen_running_info"

.field private static final INDEX_PEN_DETACHMENT_OPTION:Ljava/lang/String; = "pen_detachment_option"

.field public static final INDEX_PLUGIN_LOCK:Ljava/lang/String; = "lockstar_enabled"

.field public static final INDEX_PLUGIN_LOCK_CLOCK:Ljava/lang/String; = "plugin_lock_clock"

.field public static final INDEX_PLUGIN_LOCK_SUB:Ljava/lang/String; = "plugin_lock_sub_enabled"

.field public static final INDEX_PLUGIN_LOCK_WALLPAPER_TYPE:Ljava/lang/String; = "plugin_lock_wallpaper_type"

.field public static final INDEX_PLUGIN_LOCK_WALLPAPER_TYPE_SUB:Ljava/lang/String; = "plugin_lock_wallpaper_type_sub"

.field public static final INDEX_POWERSAVING_SWITCH:Ljava/lang/String; = "powersaving_switch"

.field public static final INDEX_PREMIUM_WATCH_SWITCH_ONOFF:Ljava/lang/String; = "premium_watch_switch_onoff"

.field public static final INDEX_PROTECT_BATTERY:Ljava/lang/String; = "protect_battery"

.field public static final INDEX_PSM_SWITCH:Ljava/lang/String; = "psm_switch"

.field public static final INDEX_QS_BUTTON_GRID_POPUP:Ljava/lang/String; = "quickstar_qs_tile_layout_custom_matrix"

.field public static final INDEX_QS_BUTTON_GRID_TILE_WIDTH:Ljava/lang/String; = "quickstar_qs_tile_layout_custom_matrix_width"

.field public static final INDEX_QUICKSTAR_DATE_FORMAT:Ljava/lang/String; = "quickstar_indicator_clock_date_format"

.field public static final INDEX_REFRESH_RATE_MODE:Ljava/lang/String; = "refresh_rate_mode"

.field public static final INDEX_REFRESH_RATE_MODE_COVER:Ljava/lang/String; = "refresh_rate_mode_cover"

.field public static final INDEX_REMOVE_ANIMATION:Ljava/lang/String; = "remove_animations"

.field public static final INDEX_RESET_CREDENTIAL:Ljava/lang/String; = "reset_credential_from_previous"

.field public static final INDEX_ROTATION_CALL_SCREEN:Ljava/lang/String; = "call_auto_rotation"

.field public static final INDEX_ROTATION_HOME_SCREEN:Ljava/lang/String; = "sehome_portrait_mode_only"

.field public static final INDEX_ROTATION_LOCK_SCREEN:Ljava/lang/String; = "lock_screen_allow_rotation"

.field public static final INDEX_SATELLITE_MODE_ENABLED:Ljava/lang/String; = "satellite_mode_enabled"

.field public static final INDEX_SCREEN_OFF_MEMO:Ljava/lang/String; = "screen_off_memo"

.field public static final INDEX_SECURE_ALLOW_PRIVATE_NOTIFICATIONS_WHEN_UNSECURE:Ljava/lang/String; = "lock_screen_allow_private_notifications_when_unsecure"

.field public static final INDEX_SECURE_NOTIFICATION_PANEL_SHOW_FAVORITE_APP_NOTIFICATIONS:Ljava/lang/String; = "notification_panel_show_favorite_app_notifications"

.field public static final INDEX_SECURE_WOF_ENABLED:Ljava/lang/String; = "fingerprint_always_on"

.field public static final INDEX_SECURE_WOF_ENABLED_TYPE:Ljava/lang/String; = "fingerprint_always_on_type"

.field public static final INDEX_SET_SHORTCUTS_MODE:Ljava/lang/String; = "set_shortcuts_mode"

.field public static final INDEX_SHOW_BUTTON_BACKGROUND:Ljava/lang/String; = "show_button_background"

.field public static final INDEX_SHOW_KEYBOARD_BUTTON:Ljava/lang/String; = "show_keyboard_button"

.field public static final INDEX_SHOW_NAVIGATION_FOR_SUBSCREEN:Ljava/lang/String; = "show_navigation_for_subscreen"

.field public static final INDEX_SHOW_SILENT_NOTIFICATION_ON_LOCKSCREEN:Ljava/lang/String; = "lock_screen_show_silent_notifications"

.field public static final INDEX_SIDESYNC_SOURCE_CONNECT:Ljava/lang/String; = "sidesync_source_connect"

.field public static final INDEX_SIM_SELECT_NAME_1:Ljava/lang/String; = "select_name_1"

.field public static final INDEX_SIM_SELECT_NAME_2:Ljava/lang/String; = "select_name_2"

.field public static final INDEX_SMART_VIEW_SHOW_NOTIFICATION_ON:Ljava/lang/String; = "smart_view_show_notification_on"

.field public static final INDEX_SNOOZE_SETTING:Ljava/lang/String; = "show_notification_snooze"

.field private static final INDEX_SOUND_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"

.field public static final INDEX_SPLIT_QUICK_PANEL:Ljava/lang/String; = "split_quick_panel"

.field public static final INDEX_SPLIT_QUICK_PANEL_RATIO:Ljava/lang/String; = "split_quick_panel_ratio"

.field public static final INDEX_SPLIT_QUICK_PANEL_REVERSED:Ljava/lang/String; = "split_quick_panel_reversed"

.field public static final INDEX_STATUSBAR_NETWORK_SPEED:Ljava/lang/String; = "network_speed"

.field public static final INDEX_STATUSBAR_NOTIFICATION_STYLE:Ljava/lang/String; = "simple_status_bar"

.field public static final INDEX_STATUSBAR_SHOW_DATE:Ljava/lang/String; = "status_bar_show_date"

.field public static final INDEX_STATUS_BAR_BATTERY_PERCENT:Ljava/lang/String; = "display_battery_percentage"

.field public static final INDEX_STATUS_SATELLITE_MODE_ENABLED:Ljava/lang/String; = "satellite_mode_enabled"

.field public static final INDEX_SUBSCREEN_BRIGHTNESS:Ljava/lang/String; = "sub_screen_brightness"

.field public static final INDEX_SUBSCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "sub_screen_brightness_mode"

.field public static final INDEX_SUGGESTION_RESPONSES:Ljava/lang/String; = "suggestion_responses"

.field public static final INDEX_SUGGESTION_RESPONSES_USED:Ljava/lang/String; = "suggestion_responses_used"

.field public static final INDEX_TASK_BAR:Ljava/lang/String; = "task_bar"

.field public static final INDEX_THEME_FONT_NUMERIC:Ljava/lang/String; = "theme_font_numeric"

.field public static final INDEX_TIME_12_24:Ljava/lang/String; = "time_12_24"

.field public static final INDEX_TOUCH_AND_HOLD_TO_SEARCH:Ljava/lang/String; = "touch_and_hold_to_search"

.field public static final INDEX_TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"

.field public static final INDEX_TURN_ON_COVER_SCREEN_FOR_NOTIFICATION:Ljava/lang/String; = "turn_on_cover_screen_for_notification"

.field public static final INDEX_TURN_ON_SCREEN_WHEN_SMART_COVER:Ljava/lang/String; = "turn_on_screen_while_unfolding_for_smart_cover"

.field public static final INDEX_TWO_PHONE_ACCOUNT:Ljava/lang/String; = "two_account"

.field public static final INDEX_TWO_PHONE_CALL_ENABLED:Ljava/lang/String; = "two_call_enabled"

.field public static final INDEX_TWO_PHONE_REGISTER:Ljava/lang/String; = "two_register"

.field public static final INDEX_TWO_PHONE_SMS_ENABLED:Ljava/lang/String; = "two_sms_enabled"

.field public static final INDEX_ULTRA_POWERSAVING_MODE:Ljava/lang/String; = "ultra_powersaving_mode"

.field public static final INDEX_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final INDEX_USER_SWITCHER_ENABLED:Ljava/lang/String; = "user_switcher_enabled"

.field public static final INDEX_VOICE_INTERACTION_SERVICE:Ljava/lang/String; = "voice_interaction_service"

.field public static final INDEX_VOICE_RECOGNITION_SERVICE:Ljava/lang/String; = "voice_recognition_service"

.field public static final INDEX_VOIP_TRANSLATOR_ENABLE:Ljava/lang/String; = "voip_translator_enable"

.field public static final INDEX_WALLPAPER_ADAPTIVE_COLORS:Ljava/lang/String; = "lock_clock_adaptive_colors"

.field public static final INDEX_WALLPAPER_HIGHLIGHT_FILTER_AMOUNT:Ljava/lang/String; = "wallpaper_highlight_filter_amount"

.field public static final INDEX_WALLPAPER_THEME_COLOR_GRAY:Ljava/lang/String; = "wallpapertheme_color_isgray"

.field public static final INDEX_WALLPAPER_THEME_STATE:Ljava/lang/String; = "wallpapertheme_state"

.field public static final INDEX_WHITE_LOCKSCREEN_NAVIGATIONBAR:Ljava/lang/String; = "white_lockscreen_navigationbar"

.field public static final INDEX_WHITE_LOCKSCREEN_STATUSBAR:Ljava/lang/String; = "white_lockscreen_statusbar"

.field public static final INDEX_WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "white_lockscreen_wallpaper"

.field public static final NOTI_SETTINGS_SHOW_NOTIFICATION_APP_ICON:Ljava/lang/String; = "show_notification_app_icon"

.field public static final NOTI_SETTINGS_SHOW_NOTIFICATION_APP_ICON_DEFAULT:I = 0x1

.field private static final SETTING_TYPE_GLOBAL:Ljava/lang/String; = "Global"

.field private static final SETTING_TYPE_SECURE:Ljava/lang/String; = "Secure"

.field private static final SETTING_TYPE_SYSTEM:Ljava/lang/String; = "System"

.field public static final SMART_COVER_ACCESSORY_COVER_URI:Ljava/lang/String; = "accessory_cover_uri"

.field public static final SMART_COVER_ENABLED:Ljava/lang/String; = "smart_cover_enabled"

.field private static final TAG:Ljava/lang/String; = "SettingsHelper"


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$HGj36fZMjn2fhBrTeEUShnysQ0s(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$oxIOuAqg6_whVb_fOChBGjF_knA(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->lambda$onUserSwitched$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmItemLists(Lcom/android/systemui/util/SettingsHelper;)Lcom/android/systemui/util/SettingsHelper$ItemMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/android/systemui/util/SettingsHelper;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbroadcastChange(Lcom/android/systemui/util/SettingsHelper;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;-><init>(Lcom/android/systemui/util/SettingsHelper;I)V

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper$1;-><init>(Lcom/android/systemui/util/SettingsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->setUpSettingsItem()V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/SettingsHelper;I)V

    const-string v1, "SettingsHelper"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p2, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method private broadcastChange(Landroid/net/Uri;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getDefaultScreenTransitionEffect()I
    .locals 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetTransitionEffectValue()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private getDefaultShortcut()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isSupportPenDetachmentOption(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.notes"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "com.samsung.android.app.notes/com.samsung.android.app.notes.memolist.MemoListActivity"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.sec.android.app.sbrowser/com.sec.android.app.sbrowser.SBrowserMainActivity"

    goto :goto_0

    :cond_1
    const-string p0, "com.android.chrome/com.google.android.apps.chrome.Main"

    goto :goto_0

    :cond_2
    const-string p0, "com.samsung.android.dialer/com.samsung.android.dialer.DialtactsActivity"

    :goto_0
    const-string v0, "1;"

    const-string v1, ";1;com.sec.android.app.camera/com.sec.android.app.camera.Camera;"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x80

    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "Package not found : "

    const-string p1, "SettingsHelper"

    invoke-static {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method private synthetic lambda$onUserSwitched$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method private registerSettingsObserver()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->registerAllObserver()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerSettingsObserver() COMPLETED elapsed= "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUpSettingsItem()V
    .locals 17

    move-object/from16 v8, p0

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v6, 0x1

    const-string v2, "System"

    const-string/jumbo v3, "white_lockscreen_navigationbar"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "white_lockscreen_statusbar"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "lock_function_val"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v2, "System"

    const-string v3, "lockscreen_wallpaper_transparent"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "sub_display_lockscreen_wallpaper_transparency"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "android.wallpaper.settings_systemui_transparency"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "sub_display_system_wallpaper_transparency"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "any_screen_running"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "show_keyboard_button"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "haptic_feedback_enabled"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_adaptive_color"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_adaptive_color_sub"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "sidesync_source_connect"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "automatic_unlock"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "animator_duration_scale"

    const-string v4, "Float"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "System"

    const-string v3, "current_sec_active_themepackage"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v0, :cond_0

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string/jumbo v3, "sub_screen_brightness_mode"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "shown_max_brightness_dialog"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "auto_brightness_transition_time"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_0
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string v3, "mic_mode_enable"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "mic_mode_effect"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "mic_mode_wificall"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "voip_translator_enable"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "buds_enable"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR:Z

    if-eqz v0, :cond_1

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string v3, "aodlock_support_lunar"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aodlock_support_hijri"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_1
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "smart_view_show_notification_on"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    if-eqz v0, :cond_2

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    iget-object v0, v8, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "user_switcher_enabled"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MUM_TWO_PHONE:Z

    if-eqz v0, :cond_3

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "two_register"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "two_account"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "two_call_enabled"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "two_sms_enabled"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_3
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string/jumbo v3, "split_quick_panel"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "split_quick_panel_ratio"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "split_quick_panel_reversed"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "emergency_message_working_state"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "blue_light_filter"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "System"

    const-string v3, "blue_light_filter_opacity"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "blue_light_filter_adaptive_mode"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "blue_light_filter_scheduled"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "blue_light_filter_type"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "greyscale_mode"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "high_contrast"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "color_blind"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "color_lens_switch"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "blue_light_filter_night_dim"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "accessibility_display_daltonizer_enabled"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "accessibility_display_inversion_enabled"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "reduce_bright_colors_activated"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/16 v0, 0x3ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "System"

    const-string v3, "Flashlight_brightness_level"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "flashlight_sos_enabled"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "camera_flash_notification"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "high_text_contrast_enabled"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "mobile_data_question"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "sehome_portrait_mode_only"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "call_auto_rotation"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "accelerometer_rotation"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "location_mode"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "protect_battery"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string/jumbo v3, "powersaving_switch"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "psm_switch"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "low_power"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_4

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "network_speed"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_4
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string/jumbo v3, "status_bar_show_network_information"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "accessibility_reduce_transparency"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "emergency_mode"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "minimal_battery_use"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "ultra_powersaving_mode"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "display_battery_percentage"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "show_notification_app_icon"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "wallpapertheme_color_isgray"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "show_notification_snooze"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "key_now_bar_servicebox_music"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "noti_intelligence_priority_conversation"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "noti_intelligence_summarize_content"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "noti_auto_more_grouping"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "noti_filter_promotion_notification"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "noti_filter_background_notification"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "noti_filter_low_importance_notification"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "noti_filter_old_notification"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "Secure"

    const-string v3, "enabled_accessibility_services"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "fingerprint_always_on"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    sget-boolean v15, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    const/16 v16, 0x2

    if-eqz v15, :cond_5

    move/from16 v0, v16

    goto :goto_0

    :cond_5
    move v0, v10

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "fingerprint_always_on_type"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "fingerprint_sensor_block_popup_show_again"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "face_stay_on_lock_screen"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "airplane_mode_on"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "bouncer_one_hand_position"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "knox_finger_print_plus"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "auto_swipe_main_user"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "select_name_1"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "select_name_2"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "reset_credential_from_previous"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "System"

    const-string v3, "lock_fmm_Message"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_fmm_phone"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "fingerprint_stay_on_lock_screen"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "System"

    const-string/jumbo v3, "theme_font_numeric"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "n_digits_pin_enabled"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v0, :cond_6

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "satellite_mode_enabled"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_6
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "aod_mode"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_tap_to_show_mode"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_mode_start_time"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_mode_end_time"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_show_state"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_show_for_new_noti"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_7

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Secure"

    const-string/jumbo v3, "show_navigation_for_subscreen"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_7
    if-eqz v15, :cond_8

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string/jumbo v3, "turn_on_screen_while_unfolding_for_smart_cover"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "System"

    const-string v3, "accessory_cover_uri"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string/jumbo v3, "smart_cover_enabled"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "System"

    const-string v3, "cover_screen_timeout"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_8
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v0, :cond_9

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "aod_show_lockscreen_wallpaper"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "System"

    const-string v3, "aod_light_reveal_alpha"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_9
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string/jumbo v3, "simple_status_bar"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "colortheme_app_icon"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "wallpapertheme_state"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "show_button_background"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v14, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v15, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v7, 0x1

    const-string v2, "System"

    const-string v3, "display_night_theme_wallpaper"

    const-string v4, "Int"

    move-object v0, v15

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZ)V

    invoke-virtual {v14, v15}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "wallpapertheme_state"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "wallpaper_highlight_filter_amount"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string v3, "lockstar_enabled"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "plugin_lock_sub_enabled"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string/jumbo v3, "plugin_lock_wallpaper_type"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "plugin_lock_wallpaper_type_sub"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Secure"

    const-string/jumbo v3, "plugin_lock_clock"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "easy_mode_switch"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "System"

    const-string v3, "lock_shortcut_type"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_show_shortcut"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string/jumbo v3, "set_shortcuts_mode"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "display_night_theme"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_application_shortcut"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_a

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "navigationbar_key_order"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_rotate_suggestion_enabled"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigationbar_use_theme_default"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const v0, -0xd0d0e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "Global"

    const-string v3, "navigationbar_current_color"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigationbar_color"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigationbar_splugin_flags"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v14, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v15, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v2, "Secure"

    const-string/jumbo v3, "user_setup_complete"

    const-string v4, "Int"

    move-object v0, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZ)V

    invoke-virtual {v14, v15}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_a
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_b

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Secure"

    const-string v3, "game_double_swipe_enable"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "game_show_floating_icon"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_b
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MOVABLE_POSITION:Z

    if-eqz v0, :cond_c

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "navigationbar_key_position"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_c
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_d

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "navigation_bar_gesture_while_hidden"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_gesture_hint"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_button_to_hide_keyboard"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_block_gestures_with_spen"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_gesture_disabled_by_policy"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_back_gesture_sensitivity"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_back_gesture_sensitivity_sub"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "navigation_gestures_vibrate"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "System"

    const-string/jumbo v3, "reduce_screen_running_info"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "open_in_split_screen_view"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_d
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v0, :cond_e

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "task_bar"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_e
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v0, :cond_f

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string v3, "large_cover_screen_navigation"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_f
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_NEW_DEX:Z

    if-eqz v0, :cond_10

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "new_dex"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_10
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    if-eqz v0, :cond_11

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string/jumbo v3, "show_keyboard_button_position"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_11
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "mobile_data"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "data_roaming"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "phone1_on"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "phone2_on"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "fill_udc_display_cutout"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "satellite_mode_enabled"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    if-eqz v0, :cond_12

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string/jumbo v3, "status_bar_show_date"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_12
    sget-boolean v0, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz v0, :cond_13

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    iget-object v0, v8, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "touch_and_hold_to_search"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string/jumbo v3, "touch_and_hold_to_search"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "Secure"

    const-string v3, "assistant"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "voice_interaction_service"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "navigation_mode"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->SUPPORT_BIXBY_TOUCH:Z

    if-eqz v0, :cond_13

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    iget-object v0, v8, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cn_support_circe_to_search"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "cn_support_circe_to_search"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_13
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "assist_disclosure_enabled"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "Secure"

    const-string v3, "icon_blacklist"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "quickstar_indicator_clock_date_format"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "quickstar_qs_tile_layout_custom_matrix"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "quickstar_qs_tile_layout_custom_matrix_width"

    const-string v4, "Int"

    move-object v0, v14

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "swipe_directly_to_quick_setting_area"

    const-string v4, "Int"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "swipe_directly_to_quick_setting_position"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "current_sec_appicon_theme_package"

    const-string v4, "String"

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/systemui/edgelighting/Feature;->isEdgeLightingDefaultOff()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1

    :cond_14
    move v10, v12

    :cond_15
    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "edge_lighting"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "lock_screen_show_silent_notifications"

    const-string v4, "Int"

    move-object v0, v10

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "access_control_enabled"

    const-string v4, "Int"

    move-object v0, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_sounds_enabled"

    const-string v4, "Int"

    move-object v0, v10

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_ENABLE_DEFAULT_ROTATION:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "lock_screen_allow_rotation"

    const-string v4, "Int"

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/util/SettingsHelper;->getDefaultScreenTransitionEffect()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "System"

    const-string/jumbo v3, "screen_transition_effect"

    const-string v4, "Int"

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lift_to_wake"

    const-string v4, "Int"

    move-object v0, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "action_memo_on_off_screen"

    const-string v4, "Int"

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "screen_off_memo"

    const-string v4, "Int"

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "refresh_rate_mode"

    const-string v4, "Int"

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string/jumbo v3, "refresh_rate_mode_cover"

    const-string v4, "Int"

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "double_tap_to_sleep"

    const-string v4, "Int"

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "display_night_theme"

    const-string v4, "Int"

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "premium_watch_switch_onoff"

    const-string v4, "Int"

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, v8, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isSupportPenDetachmentOption(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "pen_detachment_option"

    const-string v4, "Int"

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_16
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "System"

    const-string/jumbo v3, "transition_animation_scale"

    const-string v4, "String"

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "accessibility_interactive_ui_timeout_ms"

    const-string v4, "Int"

    move-object v0, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_minimizing_notification"

    const-string v4, "Int"

    move-object v0, v10

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "Secure"

    const-string v3, "lock_screen_show_notifications"

    const-string v4, "Int"

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "notification_sort_order"

    const-string v4, "Int"

    move-object v0, v10

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "notification_apply_wallpaper_theme"

    const-string v4, "Int"

    move-object v0, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "lock_editor_support_touch_hold"

    const-string v4, "Int"

    move-object v0, v10

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string/jumbo v3, "remove_animations"

    const-string v4, "Int"

    move-object v0, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "all_sound_off"

    const-string v4, "Int"

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    if-eqz v0, :cond_17

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_SHOW_CONTENT_WHEN_UNLOCKED"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "defaulton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "lock_screen_allow_private_notifications_when_unsecure"

    const-string v4, "Int"

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_17
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v10, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v5, ""

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "notification_panel_show_favorite_app_notifications"

    const-string v4, "String"

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v10, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    if-nez v10, :cond_18

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    if-eqz v0, :cond_19

    :cond_18
    iget-object v12, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v14, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v2, "Secure"

    const-string/jumbo v3, "turn_on_cover_screen_for_notification"

    const-string v4, "Int"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZ)V

    invoke-virtual {v12, v14}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "cover_screen_show_notification"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    if-eqz v10, :cond_19

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "cover_screen_show_notification_tip"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "System"

    const-string v3, "cover_screen_quick_reply_text"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "cover_screen_quick_reply_text_pos_for_translation"

    const-string v4, "String"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_19
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    if-eqz v0, :cond_1b

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "notification_history_enabled"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "ai_info_confirmed"

    const-string v4, "Int"

    move-object v0, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz v0, :cond_1a

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "suggestion_responses"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string/jumbo v3, "suggestion_responses_used"

    const-string v4, "Int"

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    goto :goto_2

    :cond_1a
    iget-object v7, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v9, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string/jumbo v3, "suggestion_responses"

    const-string v4, "Int"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_1b
    :goto_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "SettingsHelper state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->dumpAll(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public forceBroadcastWhiteKeyguardWallpaper()V
    .locals 1

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method public getAODEndTime()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_mode_end_time"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getAODLightRevealAlpha()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_light_reveal_alpha"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAODStartTime()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_mode_start_time"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getAccessibilityInteractiveUiTimeout()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "accessibility_interactive_ui_timeout_ms"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getActiveIconPackage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "current_sec_appicon_theme_package"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActiveThemePackage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "current_sec_active_themepackage"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAdaptiveColorMode()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_adaptive_color"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getAdaptiveColorMode(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lock_adaptive_color_sub"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lock_adaptive_color"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getAssistant()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "assistant"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAutoBrightnessTransitionTime()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "auto_brightness_transition_time"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getBlueLightFilterMode(Ljava/lang/String;)I
    .locals 3

    const-string v0, "blue_light_filter_opacity"

    const-string v1, "blue_light_filter"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getBouncerOneHandPosition()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "bouncer_one_hand_position"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getBudsEnable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "buds_enable"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCoverScreenQuickReplyText()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "cover_screen_quick_reply_text"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCoverScreenQuickReplyTextTranslatePos()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "cover_screen_quick_reply_text_pos_for_translation"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCoverScreenTimeout()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "cover_screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getDirectQuickSettingArea()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "swipe_directly_to_quick_setting_area"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getDirectQuickSettingPosition()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "swipe_directly_to_quick_setting_position"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEmergencyState()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "emergency_message_working_state"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getFMMMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_fmm_Message"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFMMPhone()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_fmm_phone"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFlashLightLevel()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "Flashlight_brightness_level"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getHighlightFilterAmount()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "wallpaper_highlight_filter_amount"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getHomescreenWallpaperSource(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "sub_display_system_wallpaper_transparency"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "android.wallpaper.settings_systemui_transparency"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getIconBlacklist()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "icon_blacklist"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public getLocationMode()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "location_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getLockNoticardOpacity()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/16 p0, 0x50

    return p0

    :cond_0
    const/16 p0, 0x5c

    return p0
.end method

.method public getLockscreenWallpaperTransparent()I
    .locals 1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent(Z)I

    move-result p0

    return p0
.end method

.method public getLockscreenWallpaperTransparent(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "sub_display_lockscreen_wallpaper_transparency"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lockscreen_wallpaper_transparent"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getMicModeEffect()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "mic_mode_effect"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getMicModeEnable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "mic_mode_enable"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNDigitsPIN()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "n_digits_pin_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getNavigationBarAlignPosition()I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MOVABLE_POSITION:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigationbar_key_position"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getNavigationBarBackGestureSentivity()I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_back_gesture_sensitivity"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getNavigationBarBackGestureSentivitySub()I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_back_gesture_sensitivity_sub"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getNavigationBarSPluginFlags()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigationbar_splugin_flags"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getNotificationSortOrderValue()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "notification_sort_order"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getOneHandModeRunningInfo()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "reduce_screen_running_info"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOpenThemeNumericFont()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "theme_font_numeric"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPanelSplitRatio()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "split_quick_panel_ratio"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getPluginLockValue(I)I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "plugin_lock_sub_enabled"

    goto :goto_0

    :cond_0
    const-string p1, "lockstar_enabled"

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getPluginLockWallpaperType(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x3c

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "plugin_lock_wallpaper_type_sub"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "plugin_lock_wallpaper_type"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getProtectBatterySetValue()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "protect_battery"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getQSButtonGridWidth()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "quickstar_qs_tile_layout_custom_matrix_width"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getQuickStarDateFormat()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "quickstar_indicator_clock_date_format"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getRefreshRateMode(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "refresh_rate_mode_cover"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo p1, "refresh_rate_mode"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getScheduledBluelightType()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "blue_light_filter_type"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getShortcutAppList()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_application_shortcut"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShownMaxBrightnessDialog()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "shown_max_brightness_dialog"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getSmartCoverAccessoryCoverUri()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "accessory_cover_uri"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getStatusBarNotificationStyle()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "simple_status_bar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getSubscreenBrightness()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "sub_screen_brightness"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getSubscreenBrightnessMode()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "sub_screen_brightness_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getTransitionAnimationScale()F
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "transition_animation_scale"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 v0, 0x0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getVoIPTranslatorEnable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "voip_translator_enable"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVoiceInteractionService()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "voice_interaction_service"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWofType()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "fingerprint_always_on_type"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public hasPenDetachmentOption()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isSupportPenDetachmentOption(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "pen_detachment_option"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTwoPhoneAccount()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MUM_TWO_PHONE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "two_account"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isAODEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAODShowForNewNotiModeEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_show_for_new_noti"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAODShowLockWallpaper()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_show_lockscreen_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isAODShown()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_show_state"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAODTapToShowModeEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_tap_to_show_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAccessControlEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "access_control_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAdaptiveBluelight()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "blue_light_filter_adaptive_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAdaptiveColorMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_adaptive_color"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAdaptiveColorMode(Z)Z
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lock_adaptive_color_sub"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result p0

    return p0
.end method

.method public isAiInfoConfirmed()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "ai_info_confirmed"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isAirplaneModeOn()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "airplane_mode_on"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAllSoundOff()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "all_sound_off"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllowPrivateNotificationsWhenUnsecure(I)Z
    .locals 5

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v2, "lock_screen_allow_private_notifications_when_unsecure"

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v2

    const-class v3, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFaceEnrolledAndEnabled:Z

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFingerprintStayOnLock()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFingerprintEnabled:Z

    if-eqz p0, :cond_2

    move p0, v4

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    if-nez v2, :cond_3

    if-nez p0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-ne v0, v4, :cond_4

    move v1, v4

    :cond_4
    return v1
.end method

.method public isAnimationDisabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAnimationRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getTransitionAnimationScale()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isAnimationRemoved()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "animator_duration_scale"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getFloatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isApplyDarkFilterToWallpaper()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "display_night_theme_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isApplyWallpaperThemeToNotif()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "notification_apply_wallpaper_theme"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssistDisclosureEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "assist_disclosure_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAutoWipeEnable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "auto_swipe_main_user"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutomaticUnlockEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "automatic_unlock"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBlockGesturesWithSpenEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_block_gestures_with_spen"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isCNSupportCTS()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->SUPPORT_BIXBY_TOUCH:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "cn_support_circe_to_search"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCallScreenRotationAllowed()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "call_auto_rotation"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCameraFlashNotificationOn()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "camera_flash_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCarrierLogoEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "status_bar_show_network_information"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColorAdjustment()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "color_blind"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColorAdjustmentEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "color_blind"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColorCorrectionEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "accessibility_display_daltonizer_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColorInversionEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "accessibility_display_inversion_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColorLens()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "color_lens_switch"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColorLensEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "color_lens_switch"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColorPaletteGrayEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "wallpapertheme_color_isgray"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColorThemeAppIconSettingsOn()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "colortheme_app_icon"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColorThemeEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "wallpapertheme_state"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCoverscreenShowNotification()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "cover_screen_show_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isCoverscreenShowNotificationTip()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "cover_screen_show_notification_tip"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isDarkTheme()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "display_night_theme"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDataRoamingEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "data_roaming"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDoubleTapToSleepAllowed()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "double_tap_to_sleep"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEasyModeOn()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "easy_mode_switch"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEdgeBackDisabledByPolicy()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_gesture_disabled_by_policy"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isEmergencyMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "emergency_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableHighlights()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnableInsignificant()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "noti_auto_more_grouping"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableInsignificantBgActivities()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "noti_filter_background_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableInsignificantMinimized()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "noti_filter_low_importance_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableInsignificantOld()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "noti_filter_old_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableInsignificantPromotion()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "noti_filter_promotion_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableSnooze()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "show_notification_snooze"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableSummarize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnabledBiometricUnlockVI()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "screen_transition_effect"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabledFaceStayOnLock()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "face_stay_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledFingerprintStayOnLock()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "fingerprint_stay_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledWof()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "fingerprint_always_on"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExtraDimEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "reduce_bright_colors_activated"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFillUDCDisplayCutoutEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "fill_udc_display_cutout"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFingerprintSensorPopupShowAgain()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "fingerprint_sensor_block_popup_show_again"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFlashLightSOSEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "flashlight_sos_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGameToolsEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "game_show_floating_icon"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGestureVibrationEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_gestures_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isGrayScale()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "greyscale_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "haptic_feedback_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighTextContrastEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "high_text_contrast_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHijriCalendarEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR_HIJRI:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aodlock_support_hijri"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isHomeScreenRotationAllowed()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "sehome_portrait_mode_only"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKeyboardButtonOnLeft()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "show_keyboard_button_position"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLargeCoverScreenNavigation()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "large_cover_screen_navigation"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isLiftToWakeEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lift_to_wake"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLiveWallpaperEnabled()Z
    .locals 4

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    and-int/lit8 v0, v0, 0x3c

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_wallpaper_sub"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public isLiveWallpaperEnabled(Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lockscreen_wallpaper_sub"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lockscreen_wallpaper"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public isLock2StepVerificationEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "knox_finger_print_plus"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockFunctionsEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_function_val"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockScreenRotationAllowed()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_ALLOW_ROTATION:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_screen_allow_rotation"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isLockSoundEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_sounds_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLunarCalendarEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR_LUNAR_IN_VIETNAM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aodlock_support_lunar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isMediaOngoingAllowed()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "key_now_bar_servicebox_music"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMicModeWifiCalling()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "mic_mode_wificall"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMobileDataConnectionPopupShowing()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "mobile_data_question"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMobileDataEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "mobile_data"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNavBarButtonOrderDefault()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigationbar_key_order"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationBarGestureHintEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_gesture_hint"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationBarGestureProtectionEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "game_double_swipe_enable"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNavigationBarGestureWhileHidden()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_gesture_while_hidden"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isNavigationBarHideKeyboardButtonEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_button_to_hide_keyboard"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationBarRotateSuggestionEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_rotate_suggestion_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationBarUseThemeDefault()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigationbar_use_theme_default"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationMode()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isNegativeColor()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "high_contrast"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewDexModeEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_NEW_DEX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "new_dex"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isNightDim()I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_NIGHT_DIM:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "blue_light_filter_night_dim"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNotificationAsCard()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_minimizing_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNotificationAsDot()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_minimizing_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNotificationHistoryEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "notification_history_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public isNotificationIconsOnlyOn()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_minimizing_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOneHandModeRunning()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "any_screen_running"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpenThemeLockWallpaper()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpenThemeLook()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isPanelSplit()Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "split_quick_panel"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isPanelSplitReversed()Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "split_quick_panel_reversed"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isPopStyleBrief()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "edge_lighting"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPopStyleDetail()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "edge_lighting"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPowerSavingMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v1, "powersaving_switch"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v2, "psm_switch"

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "low_power"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isPremiumWatchEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "premium_watch_switch_onoff"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQSButtonGridPopupEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "quickstar_qs_tile_layout_custom_matrix"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReduceTransparencyEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "accessibility_reduce_transparency"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRemoveAnimation()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "remove_animations"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResetCredential()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "reset_credential_from_previous"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRotationLocked()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "accelerometer_rotation"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSatelliteEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "satellite_mode_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSatelliteModeEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "satellite_mode_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScheduledBluelight()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "blue_light_filter_scheduled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenOffMemoEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "action_memo_on_off_screen"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "screen_off_memo"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSearcleEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "touch_and_hold_to_search"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isShortcutMasterEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_show_shortcut"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShortcutsVisibleForMDM()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v1, "set_shortcuts_mode"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isShowBatteryPercentInStatusBar()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "display_battery_percentage"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowButtonBackground()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "show_button_background"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowDate()Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "status_bar_show_date"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    return v2

    :cond_0
    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isShowKeyboardButton()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "show_keyboard_button"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowMultiModalButton()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "show_keyboard_button"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowNavigationForSubscreen()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "show_navigation_for_subscreen"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isShowNetworkSpeedInStatusBar()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "network_speed"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowNotificationAppIconEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "show_notification_app_icon"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowNotificationOnKeyguard()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_screen_show_notifications"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowSilentNotificationOnLockscreen()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_screen_show_silent_notifications"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSideSyncEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "sidesync_source_connect"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimSettingOn(I)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "phone1_on"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "phone2_on"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    :goto_0
    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isSmartCoverEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "smart_cover_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSplitGestureEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MW_ENTER_SPLIT_USING_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "open_in_split_screen_view"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSuggestResponsesEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "suggestion_responses"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSuggestResponsesUsed()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "suggestion_responses_used"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isSupportTouchAndHoldToEdit()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_editor_support_touch_hold"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTaskBarEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "task_bar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isTurnOnCoverscreenForNotification()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "turn_on_cover_screen_for_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isTurnOnScreenWhenSmartCover()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "turn_on_screen_while_unfolding_for_smart_cover"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isTwoPhoneCallEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MUM_TWO_PHONE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "two_call_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isTwoPhoneRegistered()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MUM_TWO_PHONE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "two_register"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isTwoPhoneSMSEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MUM_TWO_PHONE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "two_sms_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isUltraPowerSavingMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingModeLegacy()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "minimal_battery_use"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isUltraPowerSavingModeLegacy()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "ultra_powersaving_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserSetupComplete()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "user_setup_complete"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserSwitcherSettingOn()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "user_switcher_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isVoiceAssistantEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "enabled_accessibility_services"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.samsung.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isWallpaperThemeSettingsOn()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "wallpapertheme_state"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhiteKeyguardNavigationBar()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "white_lockscreen_navigationbar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhiteKeyguardStatusBar()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "white_lockscreen_statusbar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhiteKeyguardWallpaper()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onUserSwitched()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/util/SettingsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/SettingsHelper;I)V

    const-string p0, "onUserSwitched"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public readSettingsDB()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->updateMapAll(Landroid/content/ContentResolver;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readSettingsDB() COMPLETED elapsed= "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    array-length v0, p2

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v3, p2, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "SettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object tried to add another listener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v3, p2, p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v3, p2, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetShortcutValue()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->getDefaultShortcut()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x2

    const-string v2, "lock_application_shortcut"

    invoke-static {v0, v2, p0, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public setAdaptiveBluelight(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "blue_light_filter_adaptive_mode"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setAdaptiveColorMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "lock_adaptive_color"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setAdaptiveColorMode(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "lock_adaptive_color_sub"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveColorMode(I)V

    :goto_0
    return-void
.end method

.method public varargs setAdaptiveColors([I)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, "SettingsHelper"

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const-string/jumbo p0, "setAdaptiveColors: Failed. must contain 4 colors"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v1, v3, :cond_2

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAdaptiveColors: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "lock_clock_adaptive_colors"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setAiInfoConfirmed(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "ai_info_confirmed"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setApplyWallpaperThemeToNotif(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "notification_apply_wallpaper_theme"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setAssistant(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "assistant"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setAutoBrightnessTransitionTime(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_brightness_transition_time"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setBlueLightFilterMode(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "blue_light_filter_opacity"

    const-string v1, "blue_light_filter"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    :goto_0
    return-void
.end method

.method public setBouncerOneHandPosition(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bouncer_one_hand_position"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setCallScreenRotationAllowed(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "call_auto_rotation"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setCoverscreenShowNotificationTip(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "cover_screen_show_notification_tip"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setDirectQuickSettingArea(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "swipe_directly_to_quick_setting_area"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setDirectQuickSettingPosition(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "swipe_directly_to_quick_setting_position"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setEdgeBackDisableByPolicy(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "navigation_bar_gesture_disabled_by_policy"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setFingerprintSensorPopupDoNotShowAgain(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "fingerprint_sensor_block_popup_show_again"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setFlashLightLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "Flashlight_brightness_level"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setGameToolsEnabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "game_show_floating_icon"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setHomeScreenRotationAllowed(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    const-string/jumbo v0, "sehome_portrait_mode_only"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setIconBlacklist(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "icon_blacklist"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    :cond_0
    return-void
.end method

.method public setLocationMode(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setLockScreenRotationAllowed(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "lock_screen_allow_rotation"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    :cond_0
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "navigationbar_color"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNavigationBarCurrentColor(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "navigationbar_current_color"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNavigationBarRotateSuggestion(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_bar_rotate_suggestion_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNavigationBarUseThemeDefault(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "navigationbar_use_theme_default"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNightDim(I)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_NIGHT_DIM:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_light_filter_night_dim"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setNotificationSortOrderValue(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "notification_sort_order"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setPanelSplit(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "split_quick_panel"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setPanelSplitRatio(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "split_quick_panel_ratio"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setPanelSplitReversed(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "split_quick_panel_reversed"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setPluginLockValue(II)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "plugin_lock_sub_enabled"

    goto :goto_0

    :cond_0
    const-string p1, "lockstar_enabled"

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setQSButtonGridPopupEnabled(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "quickstar_qs_tile_layout_custom_matrix"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setQSButtonGridWidth(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "quickstar_qs_tile_layout_custom_matrix_width"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setQuickStarDateFormat(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "quickstar_indicator_clock_date_format"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setScheduledBluelight(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "blue_light_filter_scheduled"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setSecureInt(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setShortcutAppList(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "shortcutAppList: "

    const-string v1, "SettingsHelper"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_application_shortcut"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setStringValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public setShowNavigationForSubscreen(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "show_navigation_for_subscreen"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public setShownMaxBrightnessDialog(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "shown_max_brightness_dialog"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setSubscreenBrightness(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sub_screen_brightness"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setSubscreenBrightnessMode(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sub_screen_brightness_mode"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setSuggestResponsesEnabled(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "suggestion_responses"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setSuggestResponsesUsed(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "suggestion_responses_used"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSystemInt(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setVoiceInteractionServiceAssistant(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "voice_interaction_service"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setVoiceRecognitionService(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "voice_recognition_service"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setWhiteKeyguardNavigationBar(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "white_lockscreen_navigationbar"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setWhiteKeyguardStatusBar(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "white_lockscreen_statusbar"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setWhiteKeyguardWallpaper(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "white_lockscreen_wallpaper"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public shouldHideNotificationShadeInMirror()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string/jumbo v0, "smart_view_show_notification_on"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
