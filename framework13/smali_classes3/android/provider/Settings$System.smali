.class public final Landroid/provider/Settings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final whitelist ACCELEROMETER_ROTATION:Ljava/lang/String; = "accelerometer_rotation"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESS_CONTROL_KEYBOARD_BLOCK:Ljava/lang/String; = "access_control_keyboard_block"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESS_CONTROL_POWER_BUTTON:Ljava/lang/String; = "access_control_power_button"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESS_CONTROL_TIME_SET_HOUR:Ljava/lang/String; = "access_control_time_set_hour"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESS_CONTROL_TIME_SET_MIN:Ljava/lang/String; = "access_control_time_set_min"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESS_CONTROL_VOLUME_BUTTON:Ljava/lang/String; = "access_control_volume_button"

.field public static final blacklist ACTION_MEMO_ON_OFF_SCREEN:Ljava/lang/String; = "action_memo_on_off_screen"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ADAPTIVE_BRIGHTNESS:Ljava/lang/String; = "adaptive_brightness"

.field public static final blacklist ADAPTIVE_FAST_CHARGING:Ljava/lang/String; = "adaptive_fast_charging"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ADAPTIVE_SLEEP:Ljava/lang/String; = "adaptive_sleep"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ADVANCED_SETTINGS:Ljava/lang/String; = "advanced_settings"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ADVANCED_SETTINGS_DEFAULT:I = 0x0

.field public static final whitelist AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist AIRPLANE_MODE_RADIOS:Ljava/lang/String; = "airplane_mode_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist AIRPLANE_MODE_TOGGLEABLE_RADIOS:Ljava/lang/String; = "airplane_mode_toggleable_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist AIR_CMD_DETACHMENT_OPTION:Ljava/lang/String; = "air_cmd_detachment_option"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AIR_VIEW_MASTER_ONOFF:Ljava/lang/String; = "air_view_master_onoff"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist ALARM_ALERT:Ljava/lang/String; = "alarm_alert"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ALARM_ALERT_CACHE:Ljava/lang/String; = "alarm_alert_cache"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

.field public static final blacklist ALARM_VIBRATION_INTENSITY:Ljava/lang/String; = "alarm_vibration_intensity"

.field public static final blacklist ALLOW_DEVICE_ID:Ljava/lang/String; = "allow_device_id"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist ALWAYS_FINISH_ACTIVITIES:Ljava/lang/String; = "always_finish_activities"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ANDROID_ID:Ljava/lang/String; = "android_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ANIMATOR_DURATION_SCALE:Ljava/lang/String; = "animator_duration_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist APPEND_FOR_LAST_AUDIBLE:Ljava/lang/String; = "_last_audible"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist APPLY_RAMPING_RINGER:Ljava/lang/String; = "apply_ramping_ringer"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist APP_VOLUME_ENABLED:Ljava/lang/String; = "app_volume_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ATC_MODE_ENABLED:Ljava/lang/String; = "atc_mode_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AUTO_ADJUST_TOUCH:Ljava/lang/String; = "auto_adjust_touch"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist AUTO_TIME:Ljava/lang/String; = "auto_time"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist AUTO_TIME_ZONE:Ljava/lang/String; = "auto_time_zone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist BIOMETRICS_SCREEN_TRANSITION_EFFECT:Ljava/lang/String; = "screen_transition_effect"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist BLUETOOTH_DISCOVERABILITY:Ljava/lang/String; = "bluetooth_discoverability"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist BLUETOOTH_DISCOVERABILITY_TIMEOUT:Ljava/lang/String; = "bluetooth_discoverability_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist BLUETOOTH_SECURITY_ON_CHECK:Ljava/lang/String; = "bluetooth_security_on_check"

.field public static final blacklist BLUE_LIGHT_FILTER:Ljava/lang/String; = "blue_light_filter"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BLUE_LIGHT_FILTER_ADAPTIVE_MODE:Ljava/lang/String; = "blue_light_filter_adaptive_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BLUE_LIGHT_FILTER_NIGHT_DIM:Ljava/lang/String; = "blue_light_filter_night_dim"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BLUE_LIGHT_FILTER_OFF_TIME:Ljava/lang/String; = "blue_light_filter_off_time"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BLUE_LIGHT_FILTER_ON_TIME:Ljava/lang/String; = "blue_light_filter_on_time"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BLUE_LIGHT_FILTER_OPACITY:Ljava/lang/String; = "blue_light_filter_opacity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BLUE_LIGHT_FILTER_SCHEDULED:Ljava/lang/String; = "blue_light_filter_scheduled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BLUE_LIGHT_FILTER_TYPE:Ljava/lang/String; = "blue_light_filter_type"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_ANSWERRING_MESSAGE_AUTO_ANSWER_WITH_MEMO:Ljava/lang/String; = "callsettings_answer_memo"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_ANSWERRING_MESSAGE_LANGUAGE:Ljava/lang/String; = "callsettings_sound_language"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_AUTOMATIC_ANSWERING:Ljava/lang/String; = "automatic_answering_enable_sharedpref"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_AUTOMATIC_ANSWERING_SEC:Ljava/lang/String; = "answeringmode_auto_time"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_AUTO_RECORD_CALLS:Ljava/lang/String; = "record_calls_automatically_on_off"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_DISPLAY_CALLER_INFO_CARD:Ljava/lang/String; = "display_caller_info_card"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_INTERNATIONAL_CALL_NOTIFICATIONS:Ljava/lang/String; = "intcall_voice_noti"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_RAKUTEN_DENWA:Ljava/lang/String; = "rakuten_denwa"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_RECORDING_NOTIFICATION:Ljava/lang/String; = "record_calls_notification_on_off"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_VIDEO_CALL_QUALITY_INFO:Ljava/lang/String; = "videocallmessage_settings"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_VIDEO_SPEAKER:Ljava/lang/String; = "videocall_speaker"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_VOICE_CALL_PROTECTION:Ljava/lang/String; = "enable_call_protect_when_calling"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CAMERA_FEEDBACK_VIBRATE:Ljava/lang/String; = "camera_feedback_vibrate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r CAR_DOCK_SOUND:Ljava/lang/String; = "car_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r CAR_UNDOCK_SOUND:Ljava/lang/String; = "car_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CHAMELEON_DOMROAMMAXUSER:Ljava/lang/String; = "chameleon_domroammaxuser"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CHAMELEON_GSMMAXUSER:Ljava/lang/String; = "chameleon_gsmmaxuser"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CHAMELEON_INTROAMMAXUSER:Ljava/lang/String; = "chameleon_introammaxuser"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CHAMELEON_MAXUSER:Ljava/lang/String; = "chameleon_maxuser"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CHAMELEON_SSID:Ljava/lang/String; = "chameleon_ssid"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-r CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist COCKTAIL_BAR_ENABLED_COCKTAILS:Ljava/lang/String; = "cocktail_bar_enabled_cocktails"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DATE_FORMAT:Ljava/lang/String; = "date_format"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEBUG_APP:Ljava/lang/String; = "debug_app"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DEBUG_ENABLE_ENHANCED_CALL_BLOCKING:Ljava/lang/String; = "debug.enable_enhanced_calling"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

.field public static final blacklist DEFAULT_ASSIST_VIBRATION_FEEDBACK:Ljava/lang/String; = "default_assist_vibration_feedback"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_FONT_SCALE:F = 1.0f

.field private static final blacklist DEFAULT_FONT_WEIGHT:I = 0x0

.field public static final whitelist DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final blacklist DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

.field public static final whitelist DEFAULT_RINGTONE_URI:Landroid/net/Uri;

.field public static final blacklist DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

.field public static final blacklist DEFAULT_RINGTONE_URI_3:Landroid/net/Uri;

.field public static final greylist-max-r DESK_DOCK_SOUND:Ljava/lang/String; = "desk_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r DESK_UNDOCK_SOUND:Ljava/lang/String; = "desk_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DIALING_KEYPAD_VIBRATE:Ljava/lang/String; = "dialing_keypad_vibrate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist DIM_SCREEN:Ljava/lang/String; = "dim_screen"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DIRECT_SHARE:Ljava/lang/String; = "direct_share"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DISPLAY_CHOOSER_DO_NOT_SHOW_AGAIN:Ljava/lang/String; = "display_chooser_do_not_show_again"

.field public static final greylist-max-o DISPLAY_COLOR_MODE:Ljava/lang/String; = "display_color_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DISPLAY_COLOR_MODE_VENDOR_HINT:Ljava/lang/String; = "display_color_mode_vendor_hint"

.field public static final blacklist DISPLAY_NIGHT_THEME:Ljava/lang/String; = "display_night_theme"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DISPLAY_NIGHT_THEME_OFF_TIME:Ljava/lang/String; = "display_night_theme_off_time"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DISPLAY_NIGHT_THEME_ON_TIME:Ljava/lang/String; = "display_night_theme_on_time"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DISPLAY_NIGHT_THEME_SCHEDULED:Ljava/lang/String; = "display_night_theme_scheduled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DISPLAY_NIGHT_THEME_SCHEDULED_TYPE:Ljava/lang/String; = "display_night_theme_scheduled_type"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DISPLAY_NIGHT_THEME_WALLPAPER:Ljava/lang/String; = "display_night_theme_wallpaper"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DOCK_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "dock_screen_off_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DOCK_SCREEN_OFF_TIMEOUT_ENABLED:Ljava/lang/String; = "dock_screen_off_timeout_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r DOCK_SOUNDS_ENABLED:Ljava/lang/String; = "dock_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DOUBLE_TAB_TO_WAKE_UP:Ljava/lang/String; = "double_tab_to_wake_up"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DOUBLE_TAP_TO_SLEEP:Ljava/lang/String; = "double_tap_to_sleep"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DQE_TUNE_ENABLED:Ljava/lang/String; = "dqe_tune_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist DTMF_TONE_TYPE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone_type"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist DTMF_TONE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DUALCLOCK_MENU_SETTINGS:Ljava/lang/String; = "dualclock_menu_settings"

.field public static final blacklist EDGE_INFORMATION_STREAM:Ljava/lang/String; = "edge_information_stream"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o EGG_MODE:Ljava/lang/String; = "egg_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist END_BUTTON_BEHAVIOR:Ljava/lang/String; = "end_button_behavior"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o END_BUTTON_BEHAVIOR_DEFAULT:I = 0x2

.field public static final greylist-max-o END_BUTTON_BEHAVIOR_HOME:I = 0x1

.field public static final greylist-max-o END_BUTTON_BEHAVIOR_SLEEP:I = 0x2

.field public static final blacklist ENHANCE_POINTER_PRECISION:Ljava/lang/String; = "enhance_pointer_precision"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ETH_CONF:Ljava/lang/String; = "eth_conf"

.field public static final blacklist ETH_DEVICE_CONNECTED:Ljava/lang/String; = "eth_device_conn"

.field public static final blacklist ETH_DISABLED:Ljava/lang/String; = "eth_disabled"

.field public static final blacklist ETH_DNS:Ljava/lang/String; = "eth_dns"

.field public static final blacklist ETH_IFNAME:Ljava/lang/String; = "eth_ifname"

.field public static final blacklist ETH_IP:Ljava/lang/String; = "eth_ip"

.field public static final blacklist ETH_MASK:Ljava/lang/String; = "eth_mask"

.field public static final blacklist ETH_MODE:Ljava/lang/String; = "eth_mode"

.field public static final blacklist ETH_ON:Ljava/lang/String; = "eth_on"

.field public static final blacklist ETH_ROUTE:Ljava/lang/String; = "eth_route"

.field public static final blacklist EXCLUSIVE_MATTER_NFC_INTENT_ENABLED:Ljava/lang/String; = "exclusive_matter_nfc_intent_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FINGER_AIR_VIEW:Ljava/lang/String; = "finger_air_view"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FINGER_AIR_VIEW_HIGHLIGHT:Ljava/lang/String; = "finger_air_view_highlight"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FINGER_AIR_VIEW_INFORMATION_PREVIEW:Ljava/lang/String; = "finger_air_view_information_preview"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FLASH_NOTIFICATION_PREVIEW_COLOR:Ljava/lang/String; = "flash_notification_preview_color"

.field public static final blacklist FLASH_NOTIFICATION_PREVIEW_MODE:Ljava/lang/String; = "flash_notification_preview_mode"

.field public static final blacklist FLEX_MODE_PANEL_SHOW_SETTINGS_ICON:Ljava/lang/String; = "show_setting_icon"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FLIPFONT:Ljava/lang/String; = "flipfont"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FOLDABLE_RESTART_DIALOG_DO_NOT_SHOW_AGAIN:Ljava/lang/String; = "foldable_restart_dialog_do_not_show_again"

.field public static final blacklist FOLDER_SOUNDS_ENABLED:Ljava/lang/String; = "folder_sounds_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist FONT_SCALE:Ljava/lang/String; = "font_scale"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist HAPTIC_FEEDBACK_ENABLED:Ljava/lang/String; = "haptic_feedback_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o HAPTIC_FEEDBACK_INTENSITY:Ljava/lang/String; = "haptic_feedback_intensity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist HARDWARE_HAPTIC_FEEDBACK_INTENSITY:Ljava/lang/String; = "hardware_haptic_feedback_intensity"

.field public static final blacklist HDR_EFFECT:Ljava/lang/String; = "hdr_effect"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist HEARING_AID:Ljava/lang/String; = "hearing_aid"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY:Ljava/lang/String; = "hide_rotation_lock_toggle_for_accessibility"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist HOVER_MAGNIFIER_SCALE:Ljava/lang/String; = "hover_zoom_value"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist HOVER_ZOOM_MAGNIFIER_SIZE:Ljava/lang/String; = "hover_zoom_magnifier_size"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o INSTANT_APP_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INTELLIGENT_SLEEP_MODE:Ljava/lang/String; = "intelligent_sleep_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist KEY_BACKLIGHT_TIMEOUT:Ljava/lang/String; = "key_backlight_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist KEY_NIGHT_MODE:Ljava/lang/String; = "key_night_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist KG_MULTIPLE_LOCKSCREEN:Ljava/lang/String; = "kg_multiple_lockscreen"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist KNOX_FINGER_PRINT_PLUS:Ljava/lang/String; = "knox_finger_print_plus"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist KNOX_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "knox_screen_off_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

.field public static final blacklist LIFT_TO_WAKE:Ljava/lang/String; = "lift_to_wake"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o LOCKSCREEN_DISABLED:Ljava/lang/String; = "lockscreen.disabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist LOCK_APPLICATION_SHORTCUT:Ljava/lang/String; = "lock_application_shortcut"

.field public static final blacklist LOCK_NOTICARD_OPACITY:Ljava/lang/String; = "lock_noticard_opacity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist LOCK_SCREEN_SHORTCUT:Ljava/lang/String; = "lock_screen_shortcut"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r LOCK_SOUND:Ljava/lang/String; = "lock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o LOCK_TO_APP_ENABLED:Ljava/lang/String; = "lock_to_app_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MASTER_BALANCE:Ljava/lang/String; = "master_balance"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist MASTER_MONO:Ljava/lang/String; = "master_mono"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MASTER_MOTION:Ljava/lang/String; = "master_motion"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MCF_CONTINUITY_PERMISSION_DENIED:Ljava/lang/String; = "mcf_continuity_permission_denied"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MCF_PERMISSION_DENIED:Ljava/lang/String; = "mcf_permission_denied"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o MEDIA_BUTTON_RECEIVER:Ljava/lang/String; = "media_button_receiver"
    .annotation runtime Landroid/provider/Settings$Readable;
        maxTargetSdk = 0x1e
    .end annotation
.end field

.field public static final blacklist MEDIA_VIBRATION_INTENSITY:Ljava/lang/String; = "media_vibration_intensity"

.field public static final blacklist MIN_REFRESH_RATE:Ljava/lang/String; = "min_refresh_rate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MMS_USER_AGENT:Ljava/lang/String; = "mms_user_agent"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MMS_X_WAP_PROFILE_URL:Ljava/lang/String; = "mms_x_wap_profile_url"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist MODE_RINGER:Ljava/lang/String; = "mode_ringer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_RINGER_STREAMS_AFFECTED:Ljava/lang/String; = "mode_ringer_streams_affected"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MONO_AUDIO_TYPE:Ljava/lang/String; = "mono_audio_type"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MOTION_ENGINE:Ljava/lang/String; = "motion_engine"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MOUSE_ADDITIONAL_1_OPTION:Ljava/lang/String; = "mouse_additional_1_option"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MOUSE_ADDITIONAL_2_OPTION:Ljava/lang/String; = "mouse_additional_2_option"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MOUSE_MIDDLE_OPTION:Ljava/lang/String; = "mouse_middle_button_option"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MOUSE_POINTER_COLOR:Ljava/lang/String; = "mouse_pointer_color"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MOUSE_POINTER_SIZE:Ljava/lang/String; = "mouse_pointer_size_step"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MOUSE_SCROLLING_SPEED:Ljava/lang/String; = "mouse_scrolling_speed"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MOUSE_SECONDARY_OPTION:Ljava/lang/String; = "mouse_secondary_button_option"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field private static final greylist-max-r MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-r MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MPTCP_PROXY_DEMO:Ljava/lang/String; = "mptcp_proxy_demo"

.field public static final blacklist MPTCP_VALUE:Ljava/lang/String; = "mptcp_value"

.field public static final blacklist MPTCP_VALUE_INTERNAL:Ljava/lang/String; = "mptcp_value_internal"

.field public static final blacklist MULTICORE_PACKET_SCHEDULER:Ljava/lang/String; = "multicore_packet_scheduler"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MULTISOUND_APP:Ljava/lang/String; = "multisound_app"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MULTISOUND_DEVICE_TYPE:Ljava/lang/String; = "multisound_devicetype"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MULTISOUND_STATE:Ljava/lang/String; = "multisound_state"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MULTI_AUDIO_FOCUS_ENABLED:Ljava/lang/String; = "multi_audio_focus_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist MUTE_STREAMS_AFFECTED:Ljava/lang/String; = "mute_streams_affected"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NAVIGATION_GESTURES_VIBRATE:Ljava/lang/String; = "navigation_gestures_vibrate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NEARBY_SCANNING_ENABLED:Ljava/lang/String; = "nearby_scanning_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NEARBY_SCANNING_PERMISSION_ALLOWED:Ljava/lang/String; = "nearby_scanning_permission_allowed"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_SPEED:Ljava/lang/String; = "network_speed"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist NEXT_ALARM_FORMATTED:Ljava/lang/String; = "next_alarm_formatted"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NIGHT_MODE_ON:Ljava/lang/String; = "night_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o NOTIFICATIONS_USE_RING_VOLUME:Ljava/lang/String; = "notifications_use_ring_volume"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NOTIFICATION_SOUND2_CACHE:Ljava/lang/String; = "notification_sound2_cache"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NOTIFICATION_SOUND2_CACHE_URI:Landroid/net/Uri;

.field public static final blacklist NOTIFICATION_SOUND_2:Ljava/lang/String; = "notification_sound_2"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o NOTIFICATION_SOUND_CACHE:Ljava/lang/String; = "notification_sound_cache"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

.field public static final greylist-max-o NOTIFICATION_VIBRATION_INTENSITY:Ljava/lang/String; = "notification_vibration_intensity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NOTIFICATION_VIBRATION_SEP_INDEX:Ljava/lang/String; = "notification_vibration_sep_index"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ONEHAND_ANY_SCREEN:Ljava/lang/String; = "any_screen_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PALM_TOUCH_TO_SLEEP:Ljava/lang/String; = "palm_touch_to_sleep"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist PEAK_REFRESH_RATE:Ljava/lang/String; = "peak_refresh_rate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PEN_DETACHMENT_NOTIFICATION:Ljava/lang/String; = "pen_detachment_notification"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PEN_DETECT_MODE_DISABLED:Ljava/lang/String; = "pen_detect_mode_disabled"

.field public static final blacklist PEN_HOVERING_AIR_MENU:Ljava/lang/String; = "pen_hovering_air_menu"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PEN_HOVERING_LINK_PREVIEW:Ljava/lang/String; = "pen_hovering_link_preview"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PEN_WRITING_SOUND:Ljava/lang/String; = "pen_writing_sound"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PEOPLE_STRIPE:Ljava/lang/String; = "people_stripe"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r POINTER_LOCATION:Ljava/lang/String; = "pointer_location"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r POINTER_SPEED:Ljava/lang/String; = "pointer_speed"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist POWERSAVING_SWITCH:Ljava/lang/String; = "powersaving_switch"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o POWER_SOUNDS_ENABLED:Ljava/lang/String; = "power_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist PREMIUM_TAP_FOR_WATCH_FACE_SWITCH_ON_OFF:Ljava/lang/String; = "premium_tap_for_watch_face_switch_on_off"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PREMIUM_WATCH_SOUND:Ljava/lang/String; = "premium_watch_sound"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PREMIUM_WATCH_STYLE_OPTION:Ljava/lang/String; = "premium_watch_style_option"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PREMIUM_WATCH_SWITCH_ONOFF:Ljava/lang/String; = "premium_watch_switch_onoff"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PRIMARY_MOUSE_BUTTON_OPTION:Ljava/lang/String; = "primary_mouse_button_option"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r PRIVATE_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PSM_SWITCH:Ljava/lang/String; = "psm_switch"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r PUBLIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RADIO_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RADIO_CELL:Ljava/lang/String; = "cell"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RADIO_NFC:Ljava/lang/String; = "nfc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RADIO_WIFI:Ljava/lang/String; = "wifi"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o RADIO_WIMAX:Ljava/lang/String; = "wimax"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist REMOVE_ANIMATIONS:Ljava/lang/String; = "remove_animations"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist RINGTONE:Ljava/lang/String; = "ringtone"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist RINGTONE2_CACHE:Ljava/lang/String; = "ringtone2_cache"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist RINGTONE2_CACHE_URI:Landroid/net/Uri;

.field public static final blacklist RINGTONE_2:Ljava/lang/String; = "ringtone_2"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist RINGTONE_3:Ljava/lang/String; = "ringtone_3"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o RINGTONE_CACHE:Ljava/lang/String; = "ringtone_cache"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o RINGTONE_CACHE_URI:Landroid/net/Uri;

.field public static final blacklist RINGTONE_VIBRATION_SEP_INDEX:Ljava/lang/String; = "ringtone_vibration_sep_index"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist RINGTONE_VIBRATION_SEP_INDEX_2:Ljava/lang/String; = "ringtone_vibration_sep_index_2"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist RING_VIBRATION_INTENSITY:Ljava/lang/String; = "ring_vibration_intensity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ROAMING_CLOCK_OPTION:Ljava/lang/String; = "roaming_clock_option"

.field public static final blacklist SAMSUNG_PUBLIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SCREEN_BRIGHTNESS_FLOAT:Ljava/lang/String; = "screen_brightness_float"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SCREEN_BRIGHTNESS_FOR_VR:Ljava/lang/String; = "screen_brightness_for_vr"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SCREEN_BRIGHTNESS_FOR_VR_FLOAT:Ljava/lang/String; = "screen_brightness_for_vr_float"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SCREEN_BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final whitelist SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field public static final blacklist SCREEN_FLASH_NOTIFICATION_COLOR_GLOBAL:Ljava/lang/String; = "screen_flash_notification_color_global"

.field public static final blacklist SCREEN_FLASH_NOTIFICATION_COLOR_MODE:Ljava/lang/String; = "screen_flash_notification_color_mode"

.field public static final blacklist SCREEN_OFF_MEMO:Ljava/lang/String; = "screen_off_memo"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SCREEN_OFF_POCKET:Ljava/lang/String; = "screen_off_pocket"

.field public static final whitelist SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "screen_off_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_ACCELEROMETER_ROTATION_SECOND:Ljava/lang/String; = "accelerometer_rotation_second"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_ACCESSIBILITY_AM_MAGNIFICATION_MODE:Ljava/lang/String; = "accessibility_am_magnification_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_ACCESSIBILITY_EDIT_MAGNIFICATION_SIZE:Ljava/lang/String; = "accessibility_edit_magnification_size"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_ACCESSIBILITY_LOCK_MAGNIFICATION_HORIZONTAL_FOCUS:Ljava/lang/String; = "accessibility_lock_magnification_horizontal_focus"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_ACCESSIBILITY_MAGNIFIER:Ljava/lang/String; = "accessibility_magnifier"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_ACCESSIBILITY_REDUCE_TRANSPARENCY:Ljava/lang/String; = "accessibility_reduce_transparency"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_ACCESS_CONTROL_ENABLED:Ljava/lang/String; = "access_control_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_ACCESS_CONTROL_USE:Ljava/lang/String; = "access_control_use"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_AIR_BUTTON_ONOFF:Ljava/lang/String; = "air_button_onoff"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_AIR_COMMAND_ENABLE_FLOATING_ICON:Ljava/lang/String; = "air_cmd_use_minimized"

.field public static final whitelist SEM_AMBIENT_SOUND_AMPLIFICATION:Ljava/lang/String; = "amplify_ambient_sound"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_AMBIENT_SOUND_AMPLIFICATION_RUNNING:Ljava/lang/String; = "run_amplify_ambient_sound"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_AMBIENT_SOUND_AMPLIFICATION_WITH_MEDIA:Ljava/lang/String; = "mix_amplify_ambient_sound"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_ASSISTANT_MENU:Ljava/lang/String; = "assistant_menu"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_ASSISTANT_PLUS:Ljava/lang/String; = "assistant_menu_eam_enable"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_COLOR_BLIND_SWITCH:Ljava/lang/String; = "color_blind"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_COLOR_BLIND_TEST_CHECK:Ljava/lang/String; = "color_blind_test"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_CURRENT_APP_ICON_PACKAGE:Ljava/lang/String; = "current_sec_appicon_theme_package"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_CURRENT_THEME_PACKAGE:Ljava/lang/String; = "current_sec_active_themepackage"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_CURRENT_THEME_SUPPORT_FLIPCOVER:Ljava/lang/String; = "current_theme_support_flipcover"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_CURRENT_THEME_SUPPORT_NIGHT_MODE:Ljava/lang/String; = "current_theme_support_night_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_DB_MULTI_WINDOW_MODE:Ljava/lang/String; = "multi_window_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_DEFAULT_NOTIFICATION_VIBRATION_PATTERN:Ljava/lang/String; = "default_notification_vibration_pattern"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_DEFAULT_VIBRATION_PATTERN:Ljava/lang/String; = "default_vibration_pattern"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_DIRECT_WRITING:Ljava/lang/String; = "direct_writing"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_DIRECT_WRITING_TOOLBAR:Ljava/lang/String; = "direct_writing_toolbar"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_DISPLAY_BATTERY_PERCENTAGE:Ljava/lang/String; = "display_battery_percentage"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_DOORBELL_DETECTOR_SETTING_FLASH_NOTI:Ljava/lang/String; = "doorbell_detector_setting_flash_noti"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_DOORBELL_DETECTOR_SETTING_VIBRATION_PATTERN:Ljava/lang/String; = "doorbell_detector_vibration_pattern"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_DOORBELL_DETECTOR_SWITCH:Ljava/lang/String; = "doorbell_detector"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_DOORBELL_RECORDING_STATUS:Ljava/lang/String; = "doorbell_recording_status"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_DOORBELL_VERIFYING_STATUS:Ljava/lang/String; = "doorbell_verifying_status"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_EASY_INTERACTION:Ljava/lang/String; = "easy_interaction"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_EASY_MODE_CAMERA:Ljava/lang/String; = "easy_mode_camera"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_EASY_MODE_CONTACTS:Ljava/lang/String; = "easy_mode_contacts"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_EASY_MODE_EMAIL:Ljava/lang/String; = "easy_mode_email"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_EASY_MODE_GALLERY:Ljava/lang/String; = "easy_mode_gallery"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_EASY_MODE_INTERNET:Ljava/lang/String; = "easy_mode_internet"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_EASY_MODE_MESSAGES:Ljava/lang/String; = "easy_mode_messages"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_EASY_MODE_MUSIC:Ljava/lang/String; = "easy_mode_music"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_EASY_MODE_SPLANNER:Ljava/lang/String; = "easy_mode_splanner"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_EASY_MODE_VIDEO:Ljava/lang/String; = "easy_mode_video"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_EMERGENCY_MODE:Ljava/lang/String; = "emergency_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_EMERGENCY_MODE_USER_AGREEMENT:Ljava/lang/String; = "safety_care_user_agree"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_FINGERPRINT_GESTURE:Ljava/lang/String; = "fingerprint_gesture_quick"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_FINGERPRINT_GESTURE_SAMSUNG_PAY:Ljava/lang/String; = "fingerprint_gesture_spay"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_FINGER_MAGNIFIER:Ljava/lang/String; = "finger_magnifier"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_FLASH_NOTIFICATION:Ljava/lang/String; = "flash_notification"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_FONT_SIZE:Ljava/lang/String; = "font_size"

.field public static final whitelist SEM_GREYSCALE_MODE:Ljava/lang/String; = "greyscale_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_HEARING_AID:Ljava/lang/String; = "hearing_aid"

.field public static final whitelist SEM_HIGH_CONTRAST:Ljava/lang/String; = "high_contrast"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_MASTER_BALANCE:Ljava/lang/String; = "master_balance"

.field public static final whitelist SEM_MASTER_MONO:Ljava/lang/String; = "master_mono"

.field public static final whitelist SEM_MINIMAL_BATTERY_USE:Ljava/lang/String; = "minimal_battery_use"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_MOTION_MUTE:Ljava/lang/String; = "motion_merged_mute_pause"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_MOTION_OVERTURN:Ljava/lang/String; = "motion_overturn"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_MOTION_PICK_UP:Ljava/lang/String; = "motion_pick_up"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_MOTION_PICK_UP_TO_CALL_OUT:Ljava/lang/String; = "motion_pick_up_to_call_out"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_NOTIFICATION_REMINDER:Ljava/lang/String; = "notification_reminder"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_NOTIFICATION_REMINDER_APP_LIST:Ljava/lang/String; = "notification_reminder_app_list"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_NOTIFICATION_REMINDER_LED_INDICATOR:Ljava/lang/String; = "notification_reminder_led_indicator"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_NOTIFICATION_REMINDER_SELECTABLE:Ljava/lang/String; = "notification_reminder_selectable"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_NOTIFICATION_REMINDER_VIBRATE:Ljava/lang/String; = "notification_reminder_vibrate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_ONE_HANDED_OP_WAKEUP_TYPE:Ljava/lang/String; = "one_handed_op_wakeup_type"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_ONE_HAND_ANY_SCREEN:Ljava/lang/String; = "any_screen_enabled"

.field public static final whitelist SEM_ONE_HAND_ANY_SCREEN_RUNNING:Ljava/lang/String; = "any_screen_running"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_OPEN_AIR_CMD_USING_SPEN_BTN:Ljava/lang/String; = "open_air_cmd_using_spen_btn"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_PALM_SWIPE:Ljava/lang/String; = "surface_palm_swipe"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_PALM_TOUCH:Ljava/lang/String; = "surface_palm_touch"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_PEN_DETACHMENT_ALERT:Ljava/lang/String; = "pen_detachment_alert"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_PEN_DETACHMENT_OPTION:Ljava/lang/String; = "pen_detachment_option"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_PEN_HOVERING:Ljava/lang/String; = "pen_hovering"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_PEN_HOVERING_ICON_LABEL:Ljava/lang/String; = "pen_hovering_icon_label"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_PEN_HOVERING_INFORMATION_PREVIEW:Ljava/lang/String; = "pen_hovering_information_preview"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_PEN_HOVERING_LIST_SCROLL:Ljava/lang/String; = "pen_hovering_list_scroll"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_PEN_HOVERING_POINTER:Ljava/lang/String; = "pen_hovering_pointer"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_PEN_WRITING_BUDDY:Ljava/lang/String; = "pen_writing_buddy"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_PHONE1_ON:Ljava/lang/String; = "phone1_on"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_PHONE2_ON:Ljava/lang/String; = "phone2_on"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_PREFERED_VOICE_CALL:Ljava/lang/String; = "prefered_voice_call"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_PREV_SYSTEM_SOUND:Ljava/lang/String; = "prev_system_sound"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_RAPID_KEY_INPUT:Ljava/lang/String; = "rapid_key_input"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_RAPID_KEY_INPUT_MENU_CHECKED:Ljava/lang/String; = "rapid_key_input_menu_checked"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_SCREEN_CURTAIN:Ljava/lang/String; = "lcd_curtain"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_SCREEN_NOTIFICATION:Ljava/lang/String; = "screen_notification"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_SCREEN_OFF_MEMO:Ljava/lang/String; = "screen_off_memo"

.field public static final whitelist SEM_SELECT_ICON_1:Ljava/lang/String; = "select_icon_1"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_SELECT_ICON_2:Ljava/lang/String; = "select_icon_2"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_SELECT_NAME_1:Ljava/lang/String; = "select_name_1"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_SELECT_NAME_2:Ljava/lang/String; = "select_name_2"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_SIP_KEY_FEEDBACK_SOUND:Ljava/lang/String; = "sip_key_feedback_sound"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_SIP_KEY_FEEDBACK_VIBRATION:Ljava/lang/String; = "sip_key_feedback_vibration"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_SOUND_BALANCE:Ljava/lang/String; = "sound_balance"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_SOUND_DETECTOR_SETTING_FLASH_NOTI:Ljava/lang/String; = "sound_detector_flash_noti"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_SOUND_DETECTOR_SETTING_VIBRATION_PATTERN:Ljava/lang/String; = "sound_detector_vibration_pattern"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_SOUND_DETECTOR_SWITCH:Ljava/lang/String; = "sound_detector"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_SPEN_AIR_ACTION:Ljava/lang/String; = "spen_air_action"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_SPEN_FEEDBACK_HAPTIC:Ljava/lang/String; = "spen_feedback_haptic"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_SPEN_UNLOCK:Ljava/lang/String; = "spen_unlock"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_SPEN_WRITING_COLOR:Ljava/lang/String; = "spen_writing_color"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_SPEN_WRITING_COLOR_SWITCH:Ljava/lang/String; = "spen_writing_color_switch"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_STATUS_BAR_SHOW_DATE:Ljava/lang/String; = "status_bar_show_date"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_STATUS_BAR_SHOW_NETWORK_INFORMATION:Ljava/lang/String; = "status_bar_show_network_information"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_SUB_SCREEN_AUTO_LOCK:Ljava/lang/String; = "sub_lcd_auto_lock"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_SYSTEM_SOUND:Ljava/lang/String; = "system_sound"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_TASKBAR_RECENT_APPS_ENABLED:Ljava/lang/String; = "taskbar_recent_apps_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_TASK_BAR:Ljava/lang/String; = "task_bar"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_TIME_KEY:Ljava/lang/String; = "time_key"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_TIME_KEY_SELECTABLE:Ljava/lang/String; = "time_key_selectable"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_TORCH_LIGHT:Ljava/lang/String; = "torch_light"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SEM_ULTRA_POWERSAVING_MODE:Ljava/lang/String; = "ultra_powersaving_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_VIBRATION_FORCE_TOUCH_INTENSITY:Ljava/lang/String; = "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

.field public static final whitelist SEM_VIBRATION_NOTIFICATION_INTENSITY:Ljava/lang/String; = "SEM_VIBRATION_NOTIFICATION_INTENSITY"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEM_WALLPAPERTHEME_STATE:Ljava/lang/String; = "wallpapertheme_state"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SETUP_WIZARD_HAS_RUN:Ljava/lang/String; = "setup_wizard_has_run"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SET_SHORTCUTS_MODE:Ljava/lang/String; = "set_shortcuts_mode"

.field public static final greylist-max-o SHOW_BATTERY_PERCENT:Ljava/lang/String; = "status_bar_show_battery_percent"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SHOW_BUTTON_BACKGROUND:Ljava/lang/String; = "show_button_background"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SHOW_GTALK_SERVICE_STATUS:Ljava/lang/String; = "SHOW_GTALK_SERVICE_STATUS"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SHOW_PROCESSES:Ljava/lang/String; = "show_processes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r SHOW_TOUCHES:Ljava/lang/String; = "show_touches"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SHOW_WEB_SUGGESTIONS:Ljava/lang/String; = "show_web_suggestions"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SIMPLE_STATUS_BAR:Ljava/lang/String; = "simple_status_bar"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SIP_ADDRESS_ONLY:Ljava/lang/String; = "SIP_ADDRESS_ONLY"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SIP_ALWAYS:Ljava/lang/String; = "SIP_ALWAYS"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SIP_ASK_ME_EACH_TIME:Ljava/lang/String; = "SIP_ASK_ME_EACH_TIME"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SMS_PREFMODE:Ljava/lang/String; = "sms_prefmode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SMS_PREFMODE_DOMESTIC:Ljava/lang/String; = "sms_prefmode_domestic"

.field public static final blacklist SMS_PREFMODE_FOREIGN:Ljava/lang/String; = "sms_prefmode_foreign"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOUND_EFFECTS_ENABLED:Ljava/lang/String; = "sound_effects_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SPEAKER_BALANCE:Ljava/lang/String; = "speaker_balance"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SPEN_FEEDBACK_HAPTIC_AIR_COMMAND:Ljava/lang/String; = "spen_feedback_haptic_air_command"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SPEN_FEEDBACK_HAPTIC_AIR_VIEW:Ljava/lang/String; = "spen_feedback_haptic_air_view"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SPEN_FEEDBACK_HAPTIC_PEN_GESTURE:Ljava/lang/String; = "spen_feedback_haptic_pen_gesture"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SPEN_FEEDBACK_SOUND:Ljava/lang/String; = "spen_feedback_sound"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SPEN_FEEDBACK_SOUND_AIR_COMMAND:Ljava/lang/String; = "spen_feedback_sound_air_command"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SPEN_FEEDBACK_SOUND_AIR_VIEW:Ljava/lang/String; = "spen_feedback_sound_air_view"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SPEN_SCREEN_ON:Ljava/lang/String; = "spen_screen_on"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SUB_SCREEN_BRIGHTNESS:Ljava/lang/String; = "sub_screen_brightness"

.field public static final blacklist SUB_SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "sub_screen_brightness_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SUPER_FAST_CHARGING:Ljava/lang/String; = "super_fast_charging"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SURFACE_MOTION_ENGINE:Ljava/lang/String; = "surface_motion_engine"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SYNC_VIBRATION_WITH_NOTIFICATION:Ljava/lang/String; = "sync_vibration_with_notification"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SYNC_VIBRATION_WITH_RINGTONE:Ljava/lang/String; = "sync_vibration_with_ringtone"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SYNC_VIBRATION_WITH_RINGTONE_2:Ljava/lang/String; = "sync_vibration_with_ringtone_2"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SYSTEM_LOCALES:Ljava/lang/String; = "system_locales"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist TASK_EDGE:Ljava/lang/String; = "task_edge"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TEXT_AUTO_CAPS:Ljava/lang/String; = "auto_caps"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TEXT_AUTO_PUNCTUATE:Ljava/lang/String; = "auto_punctuate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TEXT_AUTO_REPLACE:Ljava/lang/String; = "auto_replace"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist TEXT_SECURITY_POLICY_UPDATE:Ljava/lang/String; = "security_policy_update"

.field public static final whitelist TEXT_SHOW_PASSWORD:Ljava/lang/String; = "show_password"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TIME_12_24:Ljava/lang/String; = "time_12_24"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist TOOLBOX_ONOFF:Ljava/lang/String; = "toolbox_onoff"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r TTY_MODE:Ljava/lang/String; = "tty_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist TURN_OVER_LIGHTING:Ljava/lang/String; = "turn_over_lighting"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist USER_ACTIVITY_TIMEOUT:Ljava/lang/String; = "user_activity_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist USER_ROTATION:Ljava/lang/String; = "user_rotation"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o VIBRATE_INPUT_DEVICES:Ljava/lang/String; = "vibrate_input_devices"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist VIBRATE_ON:Ljava/lang/String; = "vibrate_on"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist VIBRATION_SOUND_ENABLED:Ljava/lang/String; = "vibration_sound_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist VIB_FEEDBACK_MAGNITUDE:Ljava/lang/String; = "VIB_FEEDBACK_MAGNITUDE"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist VIB_RECVCALL_MAGNITUDE:Ljava/lang/String; = "VIB_RECVCALL_MAGNITUDE"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist VOIP_EXTRA_VOLUME:Ljava/lang/String; = "voip_extra_volume"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o VOLUME_ACCESSIBILITY:Ljava/lang/String; = "volume_a11y"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_ALARM:Ljava/lang/String; = "volume_alarm"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist VOLUME_ASSISTANT:Ljava/lang/String; = "volume_assistant"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_BLUETOOTH_SCO:Ljava/lang/String; = "volume_bluetooth_sco"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist VOLUME_LIMITER_ON:Ljava/lang/String; = "volumelimit_on"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist VOLUME_LIMITER_PASSWORD:Ljava/lang/String; = "volumelimit_set_password"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist VOLUME_LIMITER_VALUE:Ljava/lang/String; = "volume_limiter_value"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o VOLUME_MASTER:Ljava/lang/String; = "volume_master"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_MUSIC:Ljava/lang/String; = "volume_music"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_NOTIFICATION:Ljava/lang/String; = "volume_notification"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_RING:Ljava/lang/String; = "volume_ring"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_SETTINGS:[Ljava/lang/String;

.field public static final greylist-max-o VOLUME_SETTINGS_INT:[Ljava/lang/String;

.field public static final greylist VOLUME_SYSTEM:Ljava/lang/String; = "volume_system"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_VOICE:Ljava/lang/String; = "volume_voice"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist VOLUME_WAITING_TONE:Ljava/lang/String; = "volume_waiting_tone"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist WAIT_FOR_DEBUGGER:Ljava/lang/String; = "wait_for_debugger"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WALLPAPER_ACTIVITY:Ljava/lang/String; = "wallpaper_activity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist WEAR_ACCESSIBILITY_GESTURE_ENABLED:Ljava/lang/String; = "wear_accessibility_gesture_enabled"

.field public static final greylist-max-o WHEN_TO_MAKE_WIFI_CALLS:Ljava/lang/String; = "when_to_make_wifi_calls"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist WIFI_OFFLOAD_NETWORK_NOTIFY:Ljava/lang/String; = "wifi_offload_network_notify"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_SLEEP_POLICY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_SLEEP_POLICY_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_STATIC_DNS1:Ljava/lang/String; = "wifi_static_dns1"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_STATIC_DNS2:Ljava/lang/String; = "wifi_static_dns2"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_STATIC_GATEWAY:Ljava/lang/String; = "wifi_static_gateway"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_STATIC_IP:Ljava/lang/String; = "wifi_static_ip"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_STATIC_NETMASK:Ljava/lang/String; = "wifi_static_netmask"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_USE_STATIC_IP:Ljava/lang/String; = "wifi_use_static_ip"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "window_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o WINDOW_ORIENTATION_LISTENER_LOG:Ljava/lang/String; = "window_orientation_listener_log"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field private static final greylist sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final greylist-max-r sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetCLONE_TO_MANAGED_PROFILE()Ljava/util/Set;
    .locals 1

    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smputStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 22

    .line 3996
    nop

    .line 3997
    const-string v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 4000
    new-instance v6, Landroid/provider/Settings$ContentProviderHolder;

    invoke-direct {v6, v2}, Landroid/provider/Settings$ContentProviderHolder;-><init>(Landroid/net/Uri;)V

    sput-object v6, Landroid/provider/Settings$System;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 4004
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    const-class v7, Landroid/provider/Settings$System;

    const-string v3, "GET_system"

    const-string v4, "PUT_system"

    const-string v5, "DELETE_system"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    sput-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 4015
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 4016
    const-string v1, "adaptive_sleep"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4017
    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4018
    const-string/jumbo v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4019
    const-string/jumbo v2, "location_providers_allowed"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4020
    const-string/jumbo v2, "lock_biometric_weak_flags"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4021
    const-string/jumbo v2, "lock_pattern_autolock"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4022
    const-string/jumbo v2, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4023
    const-string/jumbo v2, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4024
    const-string/jumbo v2, "logging_id"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4025
    const-string/jumbo v2, "parental_control_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4026
    const-string/jumbo v2, "parental_control_last_update"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4027
    const-string/jumbo v2, "parental_control_redirect_url"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4028
    const-string/jumbo v2, "settings_classname"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4029
    const-string/jumbo v2, "use_google_mail"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4030
    const-string/jumbo v2, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4031
    const-string/jumbo v2, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4032
    const-string/jumbo v2, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4033
    const-string/jumbo v2, "wifi_on"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4034
    const-string/jumbo v2, "wifi_watchdog_acceptable_packet_loss_percentage"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4035
    const-string/jumbo v2, "wifi_watchdog_ap_count"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4036
    const-string/jumbo v2, "wifi_watchdog_background_check_delay_ms"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4037
    const-string/jumbo v2, "wifi_watchdog_background_check_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4038
    const-string/jumbo v2, "wifi_watchdog_background_check_timeout_ms"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4039
    const-string/jumbo v2, "wifi_watchdog_initial_ignored_ping_count"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4040
    const-string/jumbo v2, "wifi_watchdog_max_ap_checks"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4041
    const-string/jumbo v2, "wifi_watchdog_on"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4042
    const-string/jumbo v2, "wifi_watchdog_ping_count"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4043
    const-string/jumbo v2, "wifi_watchdog_ping_delay_ms"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4044
    const-string/jumbo v2, "wifi_watchdog_ping_timeout_ms"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4047
    const-string/jumbo v2, "install_non_market_apps"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4055
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 4056
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    .line 4060
    const-string v3, "adb_enabled"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4061
    const-string v3, "bluetooth_on"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4062
    const-string v3, "data_roaming"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4063
    const-string v3, "device_provisioned"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4064
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4065
    const-string/jumbo v1, "network_preference"

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4066
    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4067
    const-string/jumbo v1, "wifi_mobile_data_transition_wakelock_timeout_ms"

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4068
    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4071
    const-string v1, "airplane_mode_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4072
    const-string v1, "airplane_mode_radios"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4073
    const-string v1, "airplane_mode_toggleable_radios"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4074
    const-string v1, "auto_time"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4075
    const-string v1, "auto_time_zone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4076
    const-string v1, "car_dock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4077
    const-string v2, "car_undock_sound"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4078
    const-string v3, "desk_dock_sound"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4079
    const-string v4, "desk_undock_sound"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4080
    const-string v5, "dock_sounds_enabled"

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4081
    const-string/jumbo v6, "lock_sound"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4082
    const-string/jumbo v7, "unlock_sound"

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4083
    const-string/jumbo v8, "low_battery_sound"

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4084
    const-string/jumbo v9, "power_sounds_enabled"

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4085
    const-string/jumbo v10, "stay_on_while_plugged_in"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4086
    const-string/jumbo v10, "wifi_sleep_policy"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4087
    const-string/jumbo v10, "mode_ringer"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4088
    const-string/jumbo v10, "window_animation_scale"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4089
    const-string/jumbo v10, "transition_animation_scale"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4090
    const-string v10, "animator_duration_scale"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4091
    const-string v10, "fancy_ime_animations"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4092
    const-string v10, "compatibility_mode"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4093
    const-string v10, "emergency_tone"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4094
    const-string v10, "call_auto_retry"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4095
    const-string v10, "debug_app"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4096
    const-string/jumbo v10, "wait_for_debugger"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4097
    const-string v10, "always_finish_activities"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4098
    const-string/jumbo v10, "tzinfo_content_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4099
    const-string/jumbo v10, "tzinfo_metadata_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4100
    const-string/jumbo v10, "selinux_content_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4101
    const-string/jumbo v10, "selinux_metadata_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4102
    const-string/jumbo v10, "sms_short_codes_content_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4103
    const-string/jumbo v10, "sms_short_codes_metadata_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4104
    const-string v10, "cert_pin_content_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4105
    const-string v10, "cert_pin_metadata_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4106
    const-string/jumbo v10, "nfc"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4107
    const-string v10, "cell"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4108
    const-string/jumbo v10, "wifi"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4109
    const-string v10, "bluetooth"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4110
    const-string/jumbo v10, "wimax"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4111
    const-string/jumbo v10, "show_processes"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4112
    const-string/jumbo v10, "task_bar"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4113
    const-string/jumbo v10, "taskbar_recent_apps_enabled"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4116
    const-string/jumbo v10, "remove_animations"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4117
    const-string v10, "all_sound_off"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4118
    const-string/jumbo v10, "show_button_background"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4119
    const-string v10, "accessibility_reduce_transparency"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4123
    const-string/jumbo v10, "wifi_num_of_switch_to_mobile_data_toggle"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4124
    const-string/jumbo v10, "wifi_switch_for_individual_apps_enabled"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4125
    const-string/jumbo v10, "wifi_switch_for_individual_apps_ever_detected"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4126
    const-string/jumbo v10, "wifi_switch_for_individual_apps_detection_mode"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5511
    const-string/jumbo v11, "volume_voice"

    const-string/jumbo v12, "volume_system"

    const-string/jumbo v13, "volume_ring"

    const-string/jumbo v14, "volume_music"

    const-string/jumbo v15, "volume_alarm"

    const-string/jumbo v16, "volume_notification"

    const-string/jumbo v17, "volume_bluetooth_sco"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    .line 5523
    const-string/jumbo v10, "volume_voice"

    const-string/jumbo v11, "volume_system"

    const-string/jumbo v12, "volume_ring"

    const-string/jumbo v13, "volume_music"

    const-string/jumbo v14, "volume_alarm"

    const-string/jumbo v15, "volume_notification"

    const-string/jumbo v16, "volume_bluetooth_sco"

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    const-string/jumbo v20, "volume_a11y"

    const-string/jumbo v21, "volume_assistant"

    filled-new-array/range {v10 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    .line 5562
    const-string/jumbo v0, "ringtone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    sput-object v10, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 5568
    const-string/jumbo v10, "ringtone_cache"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    sput-object v10, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    .line 5585
    const-string/jumbo v10, "notification_sound"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    sput-object v11, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 5591
    const-string/jumbo v11, "notification_sound_cache"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    sput-object v11, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    .line 5608
    const-string v11, "alarm_alert"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sput-object v12, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 5614
    const-string v12, "alarm_alert_cache"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sput-object v12, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    .line 7454
    const-string/jumbo v12, "ringtone2_cache"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sput-object v12, Landroid/provider/Settings$System;->RINGTONE2_CACHE_URI:Landroid/net/Uri;

    .line 7463
    const-string/jumbo v12, "notification_sound2_cache"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sput-object v12, Landroid/provider/Settings$System;->NOTIFICATION_SOUND2_CACHE_URI:Landroid/net/Uri;

    .line 7586
    const-string/jumbo v12, "ringtone_2"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    sput-object v13, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    .line 7596
    const-string/jumbo v13, "ringtone_3"

    invoke-static {v13}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    sput-object v13, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_3:Landroid/net/Uri;

    .line 7611
    const-string/jumbo v13, "notification_sound_2"

    invoke-static {v13}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    sput-object v14, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    .line 8493
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    sput-object v14, Landroid/provider/Settings$System;->LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

    .line 8502
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    sput-object v14, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    .line 8504
    const-string v15, "end_button_behavior"

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8505
    move-object/from16 v16, v13

    const-string/jumbo v13, "wifi_use_static_ip"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8506
    const-string/jumbo v13, "wifi_static_ip"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8507
    const-string/jumbo v13, "wifi_static_gateway"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8508
    const-string/jumbo v13, "wifi_static_netmask"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8509
    const-string/jumbo v13, "wifi_static_dns1"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8510
    const-string/jumbo v13, "wifi_static_dns2"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8511
    const-string v13, "bluetooth_discoverability"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8512
    const-string v13, "bluetooth_discoverability_timeout"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8513
    const-string/jumbo v13, "next_alarm_formatted"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8514
    const-string v13, "font_scale"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8515
    const-string/jumbo v13, "system_locales"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8516
    const-string v13, "dim_screen"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8517
    const-string/jumbo v13, "screen_off_timeout"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8518
    const-string/jumbo v13, "screen_brightness"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8519
    const-string/jumbo v13, "screen_brightness_float"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8520
    const-string/jumbo v13, "screen_brightness_for_vr"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8521
    const-string/jumbo v13, "screen_brightness_for_vr_float"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8522
    const-string/jumbo v13, "screen_brightness_mode"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8523
    const-string/jumbo v13, "mode_ringer_streams_affected"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8524
    const-string/jumbo v13, "mute_streams_affected"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8525
    const-string/jumbo v13, "vibrate_on"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8526
    const-string/jumbo v13, "volume_ring"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8527
    const-string/jumbo v13, "volume_system"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8528
    const-string/jumbo v13, "volume_voice"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8529
    const-string/jumbo v13, "volume_music"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8530
    const-string/jumbo v13, "volume_alarm"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8531
    const-string/jumbo v13, "volume_notification"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8532
    const-string/jumbo v13, "volume_bluetooth_sco"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8533
    const-string/jumbo v13, "volume_assistant"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8534
    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8535
    invoke-interface {v14, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8536
    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8537
    const-string v13, "auto_replace"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8538
    const-string v13, "auto_caps"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8539
    const-string v13, "auto_punctuate"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8540
    const-string/jumbo v13, "show_password"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8541
    move-object/from16 v17, v11

    const-string v11, "SHOW_GTALK_SERVICE_STATUS"

    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8542
    const-string/jumbo v11, "wallpaper_activity"

    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8543
    const-string/jumbo v11, "time_12_24"

    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8544
    move-object/from16 v18, v10

    const-string v10, "date_format"

    invoke-interface {v14, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8545
    move-object/from16 v19, v0

    const-string/jumbo v0, "setup_wizard_has_run"

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8546
    const-string v0, "accelerometer_rotation"

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8547
    const-string/jumbo v0, "user_rotation"

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8548
    const-string v0, "dtmf_tone"

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8549
    const-string/jumbo v0, "sound_effects_enabled"

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8550
    move-object/from16 v20, v11

    const-string/jumbo v11, "haptic_feedback_enabled"

    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8551
    move-object/from16 v21, v13

    const-string/jumbo v13, "show_web_suggestions"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8552
    const-string/jumbo v13, "vibrate_when_ringing"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8553
    const-string v13, "apply_ramping_ringer"

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8569
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    sput-object v13, Landroid/provider/Settings$System;->SAMSUNG_PUBLIC_SETTINGS:Ljava/util/Set;

    .line 8574
    const-string/jumbo v14, "ringtone_CONSTANT_PATH"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8575
    const-string/jumbo v14, "ringtone_2_CONSTANT_PATH"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8576
    const-string/jumbo v14, "notification_sound_CONSTANT_PATH"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8577
    const-string/jumbo v14, "notification_sound_2_CONSTANT_PATH"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8578
    const-string v14, "alarm_alert_CONSTANT_PATH"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8579
    invoke-interface {v13, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8580
    const-string/jumbo v14, "system_sound"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8581
    const-string/jumbo v14, "prev_system_sound"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8582
    const-string v14, "dialing_keypad_vibrate"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8583
    const-string v14, "camera_feedback_vibrate"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8584
    const-string/jumbo v14, "multisound_app"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8585
    const-string/jumbo v14, "multisound_devicetype"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8586
    const-string/jumbo v14, "multi_audio_focus_enabled"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8587
    const-string v14, "app_volume_enabled"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8588
    const-string/jumbo v14, "ringtone_vibration_sep_index"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8589
    const-string/jumbo v14, "notification_vibration_sep_index"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8590
    const-string/jumbo v14, "sync_vibration_with_ringtone"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8591
    const-string/jumbo v14, "sync_vibration_with_notification"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8592
    const-string/jumbo v14, "mono_audio_type"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8593
    const-string/jumbo v14, "speaker_balance"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8594
    const-string/jumbo v14, "vibration_sound_enabled"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8595
    const-string/jumbo v14, "voip_extra_volume"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8599
    const-string/jumbo v14, "onehand_direction"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8600
    const-string v14, "any_screen_enabled"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8601
    const-string v14, "any_screen_running"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8602
    const-string/jumbo v14, "reduce_screen_running_info"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8606
    const-string/jumbo v14, "lockstar_enabled"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8607
    const-string/jumbo v14, "plugin_lock_sub_enabled"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8610
    const-string/jumbo v14, "home_mode_master"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8613
    const-string v14, "add_info_music_control"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8615
    const-string v14, "aod_mode"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8617
    const-string/jumbo v14, "lock_adaptive_color"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8620
    const-string v14, "direct_writing"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8621
    const-string v14, "direct_writing_toolbar"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8624
    const-string/jumbo v14, "sip_key_feedback_sound"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8626
    const-string/jumbo v14, "sip_key_feedback_vibration"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8628
    const-string/jumbo v14, "sip_speak_keyboard_input_aloud"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8631
    const-string/jumbo v14, "pen_digitizer_enabled"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8632
    const-string/jumbo v14, "pen_usage_detected"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8633
    const-string/jumbo v14, "pen_detect_mode_disabled"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8634
    const-string v14, "air_cmd_mode"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8636
    const-string v14, "enable_smart_capture"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8637
    const-string v14, "exclude_systemui_screenshots"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8638
    const-string v14, "delete_shared_screenshots"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8639
    const-string/jumbo v14, "smart_capture_screenshot_format"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8640
    const-string/jumbo v14, "save_original_screenshots"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8641
    const-string/jumbo v14, "screenshot_current_save_dir"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8645
    const-string/jumbo v14, "short_press_app"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8646
    const-string/jumbo v14, "long_press_app"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8647
    const-string v14, "active_key_on_lockscreen"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8648
    const-string/jumbo v14, "xcover_top_short_press_app"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8649
    const-string/jumbo v14, "xcover_top_long_press_app"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8650
    const-string/jumbo v14, "xcover_top_key_on_lockscreen"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8651
    const-string v14, "dedicated_app_xcover_switch"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8652
    const-string v14, "dedicated_app_xcover"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8653
    const-string v14, "dedicated_app_label_xcover"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8654
    const-string v14, "dedicated_app_top_switch"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8655
    const-string v14, "dedicated_app_top"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8656
    const-string v14, "dedicated_app_label_top"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8658
    const-string v14, "bixby_touch_enable"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8661
    const-string/jumbo v14, "smartview_dnd_enabled"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8663
    const-string/jumbo v14, "smartview_dnd_played"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8665
    const-string/jumbo v14, "ltw_connected"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8667
    const-string/jumbo v14, "ltw_smartview_connected"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8669
    const-string/jumbo v14, "input_sharing_started"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8671
    const-string/jumbo v14, "multi_control_enabled"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8673
    const-string/jumbo v14, "multi_control_out_of_focus"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8677
    const-string/jumbo v14, "recommendation_time"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8678
    const-string/jumbo v14, "recommendation_time_2"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8682
    const-string/jumbo v14, "lock_application_shortcut"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8684
    const-string/jumbo v14, "super_fast_charging"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8685
    const-string v14, "adaptive_fast_charging"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8686
    const-string/jumbo v14, "wireless_fast_charging"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8687
    const-string v14, "display_battery_percentage"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8689
    const-string v14, "charging_info_always"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8699
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    sput-object v13, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    .line 8701
    const-string/jumbo v14, "wifi_use_static_ip"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8702
    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8703
    const-string v14, "advanced_settings"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8704
    const-string/jumbo v14, "wear_accessibility_gesture_enabled"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8705
    const-string/jumbo v14, "screen_auto_brightness_adj"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8706
    const-string/jumbo v14, "vibrate_input_devices"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8707
    const-string/jumbo v14, "volume_master"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8708
    const-string/jumbo v14, "master_mono"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8709
    const-string/jumbo v14, "master_balance"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8710
    const-string/jumbo v14, "notifications_use_ring_volume"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8711
    const-string/jumbo v14, "vibrate_in_silent"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8712
    const-string/jumbo v14, "media_button_receiver"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8713
    const-string/jumbo v14, "hide_rotation_lock_toggle_for_accessibility"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8714
    const-string v14, "dtmf_tone_type"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8715
    const-string/jumbo v14, "hearing_aid"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8716
    const-string/jumbo v14, "tty_mode"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8717
    const-string/jumbo v14, "notification_light_pulse"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8718
    const-string/jumbo v14, "pointer_location"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8719
    const-string/jumbo v14, "show_touches"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8720
    const-string/jumbo v14, "window_orientation_listener_log"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8721
    invoke-interface {v13, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8722
    invoke-interface {v13, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8723
    const-string/jumbo v5, "lockscreen_sounds_enabled"

    invoke-interface {v13, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8724
    const-string/jumbo v5, "lockscreen.disabled"

    invoke-interface {v13, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8725
    invoke-interface {v13, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8726
    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8727
    invoke-interface {v13, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8728
    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8729
    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8730
    invoke-interface {v13, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8731
    invoke-interface {v13, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8732
    const-string/jumbo v1, "sip_receive_calls"

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8733
    const-string/jumbo v1, "sip_call_options"

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8734
    const-string v1, "SIP_ALWAYS"

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8735
    const-string v1, "SIP_ADDRESS_ONLY"

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8736
    const-string v1, "SIP_ASK_ME_EACH_TIME"

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8737
    const-string/jumbo v1, "pointer_speed"

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8738
    const-string/jumbo v1, "lock_to_app_enabled"

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8739
    const-string v1, "egg_mode"

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8740
    const-string/jumbo v1, "status_bar_show_battery_percent"

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8741
    const-string v1, "display_color_mode"

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8742
    const-string v1, "display_color_mode_vendor_hint"

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8750
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    .line 8752
    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8753
    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8754
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8755
    move-object/from16 v2, v21

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8756
    move-object/from16 v3, v20

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8757
    const-string v4, "current_sec_appicon_theme_package"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8758
    const-string v4, "current_sec_active_themepackage"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8774
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/provider/Settings$System;->CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;

    .line 8776
    const-string/jumbo v4, "sync_parent_sounds"

    move-object/from16 v5, v19

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8777
    move-object/from16 v5, v18

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8778
    move-object/from16 v5, v17

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8780
    invoke-interface {v1, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8781
    move-object/from16 v5, v16

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8785
    const-string/jumbo v5, "ringtone_CONSTANT_PATH"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8786
    const-string/jumbo v5, "notification_sound_CONSTANT_PATH"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8787
    const-string/jumbo v5, "ringtone_2_CONSTANT_PATH"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8788
    const-string/jumbo v5, "notification_sound_2_CONSTANT_PATH"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8789
    const-string v5, "alarm_alert_CONSTANT_PATH"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8795
    const-string/jumbo v5, "ringtone_set"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8796
    const-string/jumbo v5, "notification_sound_set"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8797
    const-string v5, "alarm_alert_set"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8798
    const-string/jumbo v5, "ringtone_2_set"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8799
    const-string/jumbo v5, "notification_sound_2_set"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8812
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 8814
    const-string v4, "auto_replace"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8815
    const-string v4, "auto_caps"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8816
    const-string v4, "auto_punctuate"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8817
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8818
    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8819
    const-string v2, "font_scale"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8820
    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8821
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8822
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8823
    const-string v0, "accelerometer_rotation"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8825
    const-string v0, "emergency_mode"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8826
    const-string/jumbo v0, "ultra_powersaving_mode"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8827
    const-string/jumbo v0, "minimal_battery_use"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8829
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 3851
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static greylist-max-o adjustConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;IZ)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I
    .param p3, "updateSettingsIfEmpty"    # Z

    .line 4605
    const-string v0, "font_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 4607
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 4608
    iput v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 4610
    :cond_0
    const-string v0, "font_weight_adjustment"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 4613
    nop

    .line 4614
    const-string/jumbo v0, "system_locales"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 4615
    .local v2, "localeValue":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 4616
    invoke-static {v2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    goto :goto_0

    .line 4622
    :cond_1
    if-eqz p3, :cond_2

    .line 4626
    nop

    .line 4627
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v3

    .line 4626
    invoke-static {p0, v0, v3, p2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 4631
    :cond_2
    :goto_0
    return-void
.end method

.method public static whitelist canWrite(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 9098
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 9099
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 9098
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->isCallingPackageAllowedToWriteSettings(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o clearConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 4638
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 4639
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/res/Configuration;->rilSetLocale:Z

    if-nez v0, :cond_0

    .line 4643
    invoke-virtual {p0}, Landroid/content/res/Configuration;->clearLocales()V

    .line 4645
    :cond_0
    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 4646
    return-void
.end method

.method public static greylist-max-o clearProviderForTest()V
    .locals 1

    .line 4148
    sget-object v0, Landroid/provider/Settings$System;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0}, Landroid/provider/Settings$ContentProviderHolder;->clearProviderForTest()V

    .line 4149
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->clearGenerationTrackerForTest()V

    .line 4150
    return-void
.end method

.method public static greylist-max-o getCloneFromParentOnValueSettings(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8805
    .local p0, "outMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8806
    return-void
.end method

.method public static greylist-max-o getCloneToManagedProfileSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8763
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8764
    return-void
.end method

.method public static whitelist getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;

    .line 4598
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->adjustConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;IZ)V

    .line 4600
    return-void
.end method

.method public static whitelist getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 4535
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static whitelist getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .line 4483
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    .line 4489
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4490
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/provider/Settings;->-$$Nest$smparseFloatSettingWithDefault(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static greylist-max-o getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 4541
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4542
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/provider/Settings;->-$$Nest$smparseFloatSetting(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public static whitelist getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 4335
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 4283
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static greylist getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 4342
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4343
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/provider/Settings;->-$$Nest$smparseIntSetting(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static greylist getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .line 4289
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4290
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/provider/Settings;->-$$Nest$smparseIntSettingWithDefault(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static whitelist getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 4435
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 4406
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 4441
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4442
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/provider/Settings;->-$$Nest$smparseLongSetting(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static greylist-max-o getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userHandle"    # I

    .line 4412
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4413
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p2, p3}, Landroid/provider/Settings;->-$$Nest$smparseLongSettingWithDefault(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static greylist-max-o getMovedToGlobalSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4132
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4133
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4134
    return-void
.end method

.method public static greylist-max-o getMovedToSecureSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4138
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4139
    return-void
.end method

.method public static greylist-max-o getNonLegacyMovedKeys(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4143
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4144
    return-void
.end method

.method public static blacklist getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4155
    .local p0, "allKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "readableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "readableKeysWithMaxTargetSdk":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-class v0, Landroid/provider/Settings$System;

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings;->-$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 4157
    return-void
.end method

.method public static whitelist getShowGTalkServiceStatus(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4682
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4692
    const-string v0, "SHOW_GTALK_SERVICE_STATUS"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static whitelist getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 4166
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 4173
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Setting "

    const-string v2, "Settings"

    if-eqz v0, :cond_0

    .line 4174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, returning read-only value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4178
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4184
    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4179
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.System to android.provider.Settings.Global, returning read-only value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 4255
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Setting "

    const-string v2, "Settings"

    if-eqz v0, :cond_0

    .line 4256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, returning Secure URI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 4260
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4265
    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 4261
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.System to android.provider.Settings.Global, returning read-only global URI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o hasInterestingConfigurationChanges(I)Z
    .locals 1
    .param p0, "changes"    # I

    .line 4675
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static final greylist hidden_SEM_ACCESSIBILITY_REDUCE_TRANSPARENCY()Ljava/lang/String;
    .locals 1

    .line 3989
    const-string v0, "accessibility_reduce_transparency"

    return-object v0
.end method

.method private static final greylist hidden_SEM_PEN_HOVERING()Ljava/lang/String;
    .locals 1

    .line 3981
    const-string/jumbo v0, "pen_hovering"

    return-object v0
.end method

.method public static whitelist putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 4657
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I

    .line 4663
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const-string v1, "font_scale"

    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4665
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 4664
    const-string/jumbo v2, "system_locales"

    invoke-static {p0, v2, v0, p2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 4663
    :goto_0
    return v1
.end method

.method public static whitelist putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 4559
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    .line 4565
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 4360
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static greylist putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .line 4367
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 4459
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .line 4465
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 4195
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "overrideableByRestore"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4214
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public static greylist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 4222
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method private static blacklist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .param p4, "overrideableByRestore"    # Z

    .line 4228
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result v0

    return v0
.end method

.method private static blacklist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z
    .param p5, "userHandle"    # I
    .param p6, "overrideableByRestore"    # Z

    .line 4234
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Setting "

    const-string v3, "Settings"

    if-eqz v0, :cond_0

    .line 4235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, value is unchanged."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    return v1

    .line 4239
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4244
    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result v0

    return v0

    .line 4240
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has moved from android.provider.Settings.System to android.provider.Settings.Global, value is unchanged."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    return v1
.end method

.method public static whitelist semGetFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    .line 4512
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static whitelist semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .line 4312
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static whitelist semPutFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    .line 4586
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static whitelist semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .line 4388
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static whitelist setShowGTalkServiceStatus(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4698
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V

    .line 4699
    return-void
.end method

.method public static greylist-max-o setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "flag"    # Z
    .param p2, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4708
    const-string v0, "SHOW_GTALK_SERVICE_STATUS"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4709
    return-void
.end method
