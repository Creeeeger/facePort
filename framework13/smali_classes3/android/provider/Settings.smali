.class public final Landroid/provider/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$AddWifiResult;,
        Landroid/provider/Settings$Panel;,
        Landroid/provider/Settings$Bookmarks;,
        Landroid/provider/Settings$Config;,
        Landroid/provider/Settings$Global;,
        Landroid/provider/Settings$Secure;,
        Landroid/provider/Settings$System;,
        Landroid/provider/Settings$Readable;,
        Landroid/provider/Settings$NameValueCache;,
        Landroid/provider/Settings$ContentProviderHolder;,
        Landroid/provider/Settings$GenerationTracker;,
        Landroid/provider/Settings$NameValueTable;,
        Landroid/provider/Settings$SettingNotFoundException;,
        Landroid/provider/Settings$ResetMode;,
        Landroid/provider/Settings$EnableMmsDataReason;,
        Landroid/provider/Settings$SupervisorVerificationSetting;,
        Landroid/provider/Settings$SetAllResult;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ACCESSIBILITY_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_DETAILS_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_SETTINGS"

.field public static final whitelist ACTION_ADD_ACCOUNT:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field public static final whitelist ACTION_AIRPLANE_MODE_SETTINGS:Ljava/lang/String; = "android.settings.AIRPLANE_MODE_SETTINGS"

.field public static final whitelist ACTION_ALL_APPS_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.ALL_APPS_NOTIFICATION_SETTINGS"

.field public static final blacklist ACTION_ALL_APPS_NOTIFICATION_SETTINGS_FOR_REVIEW:Ljava/lang/String; = "android.settings.ALL_APPS_NOTIFICATION_SETTINGS_FOR_REVIEW"

.field public static final whitelist ACTION_APN_SETTINGS:Ljava/lang/String; = "android.settings.APN_SETTINGS"

.field public static final whitelist ACTION_APPLICATION_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field public static final whitelist ACTION_APPLICATION_DEVELOPMENT_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

.field public static final whitelist ACTION_APPLICATION_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_SETTINGS"

.field public static final whitelist ACTION_APP_LOCALE_SETTINGS:Ljava/lang/String; = "android.settings.APP_LOCALE_SETTINGS"

.field public static final whitelist ACTION_APP_NOTIFICATION_BUBBLE_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

.field public static final greylist-max-o ACTION_APP_NOTIFICATION_REDACTION:Ljava/lang/String; = "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

.field public static final whitelist ACTION_APP_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_SETTINGS"

.field public static final whitelist ACTION_APP_OPEN_BY_DEFAULT_SETTINGS:Ljava/lang/String; = "android.settings.APP_OPEN_BY_DEFAULT_SETTINGS"

.field public static final greylist-max-o ACTION_APP_OPS_SETTINGS:Ljava/lang/String; = "android.settings.APP_OPS_SETTINGS"

.field public static final whitelist ACTION_APP_SEARCH_SETTINGS:Ljava/lang/String; = "android.settings.APP_SEARCH_SETTINGS"

.field public static final whitelist ACTION_APP_USAGE_SETTINGS:Ljava/lang/String; = "android.settings.action.APP_USAGE_SETTINGS"

.field public static final greylist-max-o ACTION_ASSIST_GESTURE_SETTINGS:Ljava/lang/String; = "android.settings.ASSIST_GESTURE_SETTINGS"

.field public static final whitelist ACTION_AUTO_ROTATE_SETTINGS:Ljava/lang/String; = "android.settings.AUTO_ROTATE_SETTINGS"

.field public static final whitelist ACTION_BATTERY_SAVER_SETTINGS:Ljava/lang/String; = "android.settings.BATTERY_SAVER_SETTINGS"

.field public static final whitelist ACTION_BEDTIME_SETTINGS:Ljava/lang/String; = "android.settings.BEDTIME_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_BIOMETRIC_ENROLL:Ljava/lang/String; = "android.settings.BIOMETRIC_ENROLL"

.field public static final blacklist ACTION_BLUETOOTH_PAIRING_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_PAIRING_SETTINGS"

.field public static final whitelist ACTION_BLUETOOTH_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_SETTINGS"

.field public static final whitelist ACTION_BUGREPORT_HANDLER_SETTINGS:Ljava/lang/String; = "android.settings.BUGREPORT_HANDLER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CAPTIONING_SETTINGS:Ljava/lang/String; = "android.settings.CAPTIONING_SETTINGS"

.field public static final whitelist ACTION_CAST_SETTINGS:Ljava/lang/String; = "android.settings.CAST_SETTINGS"

.field public static final whitelist ACTION_CHANNEL_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

.field public static final blacklist ACTION_COLOR_CORRECTION_SETTINGS:Ljava/lang/String; = "com.android.settings.ACCESSIBILITY_COLOR_SPACE_SETTINGS"

.field public static final blacklist ACTION_COLOR_INVERSION_SETTINGS:Ljava/lang/String; = "android.settings.COLOR_INVERSION_SETTINGS"

.field public static final whitelist ACTION_CONDITION_PROVIDER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

.field public static final blacklist ACTION_CONVERSATION_SETTINGS:Ljava/lang/String; = "android.settings.CONVERSATION_SETTINGS"

.field public static final blacklist ACTION_DARK_THEME_SETTINGS:Ljava/lang/String; = "android.settings.DARK_THEME_SETTINGS"

.field public static final whitelist ACTION_DATA_ROAMING_SETTINGS:Ljava/lang/String; = "android.settings.DATA_ROAMING_SETTINGS"

.field public static final blacklist ACTION_DATA_SAVER_SETTINGS:Ljava/lang/String; = "android.settings.DATA_SAVER_SETTINGS"

.field public static final whitelist ACTION_DATA_USAGE_SETTINGS:Ljava/lang/String; = "android.settings.DATA_USAGE_SETTINGS"

.field public static final whitelist ACTION_DATE_SETTINGS:Ljava/lang/String; = "android.settings.DATE_SETTINGS"

.field public static final blacklist ACTION_DEVICE_CONTROLS_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_DEVICE_CONTROLS_SETTINGS"

.field public static final whitelist ACTION_DEVICE_INFO_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_INFO_SETTINGS"

.field public static final whitelist ACTION_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.DISPLAY_SETTINGS"

.field public static final whitelist ACTION_DREAM_SETTINGS:Ljava/lang/String; = "android.settings.DREAM_SETTINGS"

.field public static final blacklist ACTION_ENABLE_MMS_DATA_REQUEST:Ljava/lang/String; = "android.settings.ENABLE_MMS_DATA_REQUEST"

.field public static final whitelist ACTION_ENTERPRISE_PRIVACY_SETTINGS:Ljava/lang/String; = "android.settings.ENTERPRISE_PRIVACY_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_FINGERPRINT_ENROLL:Ljava/lang/String; = "android.settings.FINGERPRINT_ENROLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_FOREGROUND_SERVICES_SETTINGS:Ljava/lang/String; = "android.settings.FOREGROUND_SERVICES_SETTINGS"

.field public static final whitelist ACTION_HARD_KEYBOARD_SETTINGS:Ljava/lang/String; = "android.settings.HARD_KEYBOARD_SETTINGS"

.field public static final whitelist ACTION_HOME_SETTINGS:Ljava/lang/String; = "android.settings.HOME_SETTINGS"

.field public static final whitelist ACTION_IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS:Ljava/lang/String; = "android.settings.IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS"

.field public static final whitelist ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS:Ljava/lang/String; = "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

.field public static final whitelist ACTION_INPUT_METHOD_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SETTINGS"

.field public static final whitelist ACTION_INPUT_METHOD_SUBTYPE_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

.field public static final whitelist ACTION_INTERNAL_STORAGE_SETTINGS:Ljava/lang/String; = "android.settings.INTERNAL_STORAGE_SETTINGS"

.field public static final whitelist ACTION_LOCALE_SETTINGS:Ljava/lang/String; = "android.settings.LOCALE_SETTINGS"

.field public static final whitelist ACTION_LOCATION_CONTROLLER_EXTRA_PACKAGE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_CONTROLLER_EXTRA_PACKAGE_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_LOCATION_SCANNING_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SCANNING_SETTINGS"

.field public static final whitelist ACTION_LOCATION_SOURCE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SOURCE_SETTINGS"

.field public static final blacklist ACTION_LOCKSCREEN_SETTINGS:Ljava/lang/String; = "android.settings.LOCK_SCREEN_SETTINGS"

.field public static final greylist-max-o ACTION_MANAGED_PROFILE_SETTINGS:Ljava/lang/String; = "android.settings.MANAGED_PROFILE_SETTINGS"

.field public static final whitelist ACTION_MANAGE_ALL_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

.field public static final whitelist ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION:Ljava/lang/String; = "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

.field public static final whitelist ACTION_MANAGE_ALL_SIM_PROFILES_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_ALL_SIM_PROFILES_SETTINGS"

.field public static final whitelist ACTION_MANAGE_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_APPLICATIONS_SETTINGS"

.field public static final whitelist ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION:Ljava/lang/String; = "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

.field public static final whitelist ACTION_MANAGE_APP_OVERLAY_PERMISSION:Ljava/lang/String; = "android.settings.MANAGE_APP_OVERLAY_PERMISSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_MANAGE_CROSS_PROFILE_ACCESS:Ljava/lang/String; = "android.settings.MANAGE_CROSS_PROFILE_ACCESS"

.field public static final whitelist ACTION_MANAGE_DEFAULT_APPS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

.field public static final whitelist ACTION_MANAGE_DOMAIN_URLS:Ljava/lang/String; = "android.settings.MANAGE_DOMAIN_URLS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_MORE_DEFAULT_APPS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_MORE_DEFAULT_APPS_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_OVERLAY_PERMISSION:Ljava/lang/String; = "android.settings.action.MANAGE_OVERLAY_PERMISSION"

.field public static final whitelist ACTION_MANAGE_SUPERVISOR_RESTRICTED_SETTING:Ljava/lang/String; = "android.settings.MANAGE_SUPERVISOR_RESTRICTED_SETTING"

.field public static final whitelist ACTION_MANAGE_UNKNOWN_APP_SOURCES:Ljava/lang/String; = "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

.field public static final whitelist ACTION_MANAGE_WRITE_SETTINGS:Ljava/lang/String; = "android.settings.action.MANAGE_WRITE_SETTINGS"

.field public static final blacklist ACTION_MEDIA_CONTROLS_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

.field public static final whitelist ACTION_MEMORY_CARD_SETTINGS:Ljava/lang/String; = "android.settings.MEMORY_CARD_SETTINGS"

.field public static final blacklist ACTION_MMS_MESSAGE_SETTING:Ljava/lang/String; = "android.settings.MMS_MESSAGE_SETTING"

.field public static final greylist-max-o ACTION_MOBILE_DATA_USAGE:Ljava/lang/String; = "android.settings.MOBILE_DATA_USAGE"

.field public static final greylist-max-o ACTION_MONITORING_CERT_INFO:Ljava/lang/String; = "com.android.settings.MONITORING_CERT_INFO"

.field public static final whitelist ACTION_NETWORK_OPERATOR_SETTINGS:Ljava/lang/String; = "android.settings.NETWORK_OPERATOR_SETTINGS"

.field public static final whitelist ACTION_NFCSHARING_SETTINGS:Ljava/lang/String; = "android.settings.NFCSHARING_SETTINGS"

.field public static final whitelist ACTION_NFC_PAYMENT_SETTINGS:Ljava/lang/String; = "android.settings.NFC_PAYMENT_SETTINGS"

.field public static final whitelist ACTION_NFC_SETTINGS:Ljava/lang/String; = "android.settings.NFC_SETTINGS"

.field public static final whitelist ACTION_NIGHT_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.NIGHT_DISPLAY_SETTINGS"

.field public static final whitelist ACTION_NOTIFICATION_ASSISTANT_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_ASSISTANT_SETTINGS"

.field public static final blacklist ACTION_NOTIFICATION_HISTORY:Ljava/lang/String; = "android.settings.NOTIFICATION_HISTORY"

.field public static final whitelist ACTION_NOTIFICATION_LISTENER_DETAIL_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_LISTENER_DETAIL_SETTINGS"

.field public static final whitelist ACTION_NOTIFICATION_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

.field public static final whitelist ACTION_NOTIFICATION_POLICY_ACCESS_DETAIL_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_POLICY_ACCESS_DETAIL_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_NOTIFICATION_POLICY_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

.field public static final blacklist ACTION_NOTIFICATION_POPUP_STYLE_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_POPUP_STYLE_SETTINGS"

.field public static final greylist-max-o ACTION_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_SETTINGS"

.field public static final blacklist ACTION_ONE_HANDED_SETTINGS:Ljava/lang/String; = "android.settings.action.ONE_HANDED_SETTINGS"

.field public static final greylist-max-o ACTION_PAIRING_SETTINGS:Ljava/lang/String; = "android.settings.PAIRING_SETTINGS"

.field public static final greylist-max-o ACTION_PICTURE_IN_PICTURE_SETTINGS:Ljava/lang/String; = "android.settings.PICTURE_IN_PICTURE_SETTINGS"

.field public static final blacklist ACTION_POWER_MENU_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_POWER_MENU_SETTINGS"

.field public static final whitelist ACTION_PRINT_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_PRINT_SETTINGS"

.field public static final whitelist ACTION_PRIVACY_SETTINGS:Ljava/lang/String; = "android.settings.PRIVACY_SETTINGS"

.field public static final whitelist ACTION_PROCESS_WIFI_EASY_CONNECT_URI:Ljava/lang/String; = "android.settings.PROCESS_WIFI_EASY_CONNECT_URI"

.field public static final whitelist ACTION_QUICK_ACCESS_WALLET_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_ACCESS_WALLET_SETTINGS"

.field public static final whitelist ACTION_QUICK_LAUNCH_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_LAUNCH_SETTINGS"

.field public static final blacklist ACTION_REDUCE_BRIGHT_COLORS_SETTINGS:Ljava/lang/String; = "android.settings.REDUCE_BRIGHT_COLORS_SETTINGS"

.field public static final whitelist ACTION_REQUEST_ENABLE_CONTENT_CAPTURE:Ljava/lang/String; = "android.settings.REQUEST_ENABLE_CONTENT_CAPTURE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS:Ljava/lang/String; = "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

.field public static final whitelist ACTION_REQUEST_MANAGE_MEDIA:Ljava/lang/String; = "android.settings.REQUEST_MANAGE_MEDIA"

.field public static final whitelist ACTION_REQUEST_SCHEDULE_EXACT_ALARM:Ljava/lang/String; = "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

.field public static final whitelist ACTION_REQUEST_SET_AUTOFILL_SERVICE:Ljava/lang/String; = "android.settings.REQUEST_SET_AUTOFILL_SERVICE"

.field public static final whitelist ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final whitelist ACTION_SECURITY_SETTINGS:Ljava/lang/String; = "android.settings.SECURITY_SETTINGS"

.field public static final whitelist ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field public static final whitelist ACTION_SETTINGS_EMBED_DEEP_LINK_ACTIVITY:Ljava/lang/String; = "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

.field public static final whitelist ACTION_SHOW_ADMIN_SUPPORT_DETAILS:Ljava/lang/String; = "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SHOW_REGULATORY_INFO:Ljava/lang/String; = "android.settings.SHOW_REGULATORY_INFO"

.field public static final greylist-max-o ACTION_SHOW_REMOTE_BUGREPORT_DIALOG:Ljava/lang/String; = "android.settings.SHOW_REMOTE_BUGREPORT_DIALOG"

.field public static final blacklist ACTION_SHOW_RESTRICTED_SETTING_DIALOG:Ljava/lang/String; = "android.settings.SHOW_RESTRICTED_SETTING_DIALOG"

.field public static final whitelist ACTION_SHOW_WORK_POLICY_INFO:Ljava/lang/String; = "android.settings.SHOW_WORK_POLICY_INFO"

.field public static final whitelist ACTION_SOUND_SETTINGS:Ljava/lang/String; = "android.settings.SOUND_SETTINGS"

.field public static final greylist-max-o ACTION_STORAGE_MANAGER_SETTINGS:Ljava/lang/String; = "android.settings.STORAGE_MANAGER_SETTINGS"

.field public static final whitelist ACTION_STORAGE_VOLUME_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.STORAGE_VOLUME_ACCESS_SETTINGS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_SYNC_SETTINGS:Ljava/lang/String; = "android.settings.SYNC_SETTINGS"

.field public static final greylist-max-o ACTION_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "android.settings.SYSTEM_UPDATE_SETTINGS"

.field public static final whitelist ACTION_TETHER_PROVISIONING_UI:Ljava/lang/String; = "android.settings.TETHER_PROVISIONING_UI"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_TETHER_SETTINGS:Ljava/lang/String; = "android.settings.TETHER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_TETHER_UNSUPPORTED_CARRIER_UI:Ljava/lang/String; = "android.settings.TETHER_UNSUPPORTED_CARRIER_UI"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist ACTION_TRUSTED_CREDENTIALS_USER:Ljava/lang/String; = "com.android.settings.TRUSTED_CREDENTIALS_USER"

.field public static final whitelist ACTION_USAGE_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.USAGE_ACCESS_SETTINGS"

.field public static final greylist-max-r ACTION_USER_DICTIONARY_INSERT:Ljava/lang/String; = "com.android.settings.USER_DICTIONARY_INSERT"

.field public static final whitelist ACTION_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "android.settings.USER_DICTIONARY_SETTINGS"

.field public static final greylist-max-o ACTION_USER_SETTINGS:Ljava/lang/String; = "android.settings.USER_SETTINGS"

.field public static final blacklist ACTION_VIEW_ADVANCED_POWER_USAGE_DETAIL:Ljava/lang/String; = "android.settings.VIEW_ADVANCED_POWER_USAGE_DETAIL"

.field public static final whitelist ACTION_VOICE_CONTROL_AIRPLANE_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_AIRPLANE_MODE"

.field public static final whitelist ACTION_VOICE_CONTROL_BATTERY_SAVER_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_BATTERY_SAVER_MODE"

.field public static final whitelist ACTION_VOICE_CONTROL_DO_NOT_DISTURB_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_DO_NOT_DISTURB_MODE"

.field public static final whitelist ACTION_VOICE_INPUT_SETTINGS:Ljava/lang/String; = "android.settings.VOICE_INPUT_SETTINGS"

.field public static final whitelist ACTION_VPN_SETTINGS:Ljava/lang/String; = "android.settings.VPN_SETTINGS"

.field public static final whitelist ACTION_VR_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.VR_LISTENER_SETTINGS"

.field public static final whitelist ACTION_WEBVIEW_SETTINGS:Ljava/lang/String; = "android.settings.WEBVIEW_SETTINGS"

.field public static final whitelist ACTION_WIFI_ADD_NETWORKS:Ljava/lang/String; = "android.settings.WIFI_ADD_NETWORKS"

.field public static final whitelist ACTION_WIFI_IP_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_IP_SETTINGS"

.field public static final whitelist ACTION_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static final blacklist ACTION_WIFI_TETHER_SETTING:Ljava/lang/String; = "com.android.settings.WIFI_TETHER_SETTINGS"

.field public static final whitelist ACTION_WIRELESS_SETTINGS:Ljava/lang/String; = "android.settings.WIRELESS_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_AUTOMATION_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_AUTOMATION_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_EVENT_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_EXTERNAL_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

.field public static final whitelist ACTION_ZEN_MODE_PRIORITY_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_SCHEDULE_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_SETTINGS"

.field public static final whitelist ADD_WIFI_RESULT_ADD_OR_UPDATE_FAILED:I = 0x1

.field public static final whitelist ADD_WIFI_RESULT_ALREADY_EXISTS:I = 0x2

.field public static final whitelist ADD_WIFI_RESULT_SUCCESS:I = 0x0

.field public static final whitelist AUTHORITY:Ljava/lang/String; = "settings"

.field public static final blacklist CALL_METHOD_DELETE_CONFIG:Ljava/lang/String; = "DELETE_config"

.field public static final blacklist CALL_METHOD_DELETE_GLOBAL:Ljava/lang/String; = "DELETE_global"

.field public static final blacklist CALL_METHOD_DELETE_SECURE:Ljava/lang/String; = "DELETE_secure"

.field public static final blacklist CALL_METHOD_DELETE_SYSTEM:Ljava/lang/String; = "DELETE_system"

.field public static final blacklist CALL_METHOD_FLAGS_KEY:Ljava/lang/String; = "_flags"

.field public static final greylist-max-o CALL_METHOD_GENERATION_INDEX_KEY:Ljava/lang/String; = "_generation_index"

.field public static final greylist-max-o CALL_METHOD_GENERATION_KEY:Ljava/lang/String; = "_generation"

.field public static final blacklist CALL_METHOD_GET_CONFIG:Ljava/lang/String; = "GET_config"

.field public static final greylist-max-o CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final greylist-max-o CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final blacklist CALL_METHOD_GET_SYNC_DISABLED_MODE_CONFIG:Ljava/lang/String; = "GET_SYNC_DISABLED_MODE_config"

.field public static final greylist-max-o CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final blacklist CALL_METHOD_LIST_CONFIG:Ljava/lang/String; = "LIST_config"

.field public static final blacklist CALL_METHOD_LIST_GLOBAL:Ljava/lang/String; = "LIST_global"

.field public static final blacklist CALL_METHOD_LIST_SECURE:Ljava/lang/String; = "LIST_secure"

.field public static final blacklist CALL_METHOD_LIST_SYSTEM:Ljava/lang/String; = "LIST_system"

.field public static final greylist-max-o CALL_METHOD_MAKE_DEFAULT_KEY:Ljava/lang/String; = "_make_default"

.field public static final blacklist CALL_METHOD_MONITOR_CALLBACK_KEY:Ljava/lang/String; = "_monitor_callback_key"

.field public static final blacklist CALL_METHOD_OVERRIDEABLE_BY_RESTORE_KEY:Ljava/lang/String; = "_overrideable_by_restore"

.field public static final blacklist CALL_METHOD_PREFIX_KEY:Ljava/lang/String; = "_prefix"

.field public static final blacklist CALL_METHOD_PUT_CONFIG:Ljava/lang/String; = "PUT_config"

.field public static final greylist-max-o CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final greylist-max-o CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final greylist-max-o CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final blacklist CALL_METHOD_REGISTER_MONITOR_CALLBACK_CONFIG:Ljava/lang/String; = "REGISTER_MONITOR_CALLBACK_config"

.field public static final blacklist CALL_METHOD_RESET_CONFIG:Ljava/lang/String; = "RESET_config"

.field public static final greylist-max-o CALL_METHOD_RESET_GLOBAL:Ljava/lang/String; = "RESET_global"

.field public static final greylist-max-o CALL_METHOD_RESET_MODE_KEY:Ljava/lang/String; = "_reset_mode"

.field public static final greylist-max-o CALL_METHOD_RESET_SECURE:Ljava/lang/String; = "RESET_secure"

.field public static final blacklist CALL_METHOD_SET_ALL_CONFIG:Ljava/lang/String; = "SET_ALL_config"

.field public static final blacklist CALL_METHOD_SET_SYNC_DISABLED_MODE_CONFIG:Ljava/lang/String; = "SET_SYNC_DISABLED_MODE_config"

.field public static final blacklist CALL_METHOD_SYNC_DISABLED_MODE_KEY:Ljava/lang/String; = "_disabled_mode"

.field public static final greylist-max-o CALL_METHOD_TAG_KEY:Ljava/lang/String; = "_tag"

.field public static final greylist-max-o CALL_METHOD_TRACK_GENERATION_KEY:Ljava/lang/String; = "_track_generation"

.field public static final greylist-max-o CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field public static final blacklist DEFAULT_OVERRIDEABLE_BY_RESTORE:Z = false

.field public static final greylist-max-o DEVICE_NAME_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_NAME"

.field public static final blacklist ENABLE_MMS_DATA_REQUEST_REASON_INCOMING_MMS:I = 0x0

.field public static final blacklist ENABLE_MMS_DATA_REQUEST_REASON_OUTGOING_MMS:I = 0x1

.field public static final blacklist EXTRA_ACCESS_CALLBACK:Ljava/lang/String; = "access_callback"

.field public static final whitelist EXTRA_ACCOUNT_TYPES:Ljava/lang/String; = "account_types"

.field public static final whitelist EXTRA_AIRPLANE_MODE_ENABLED:Ljava/lang/String; = "airplane_mode_enabled"

.field public static final whitelist EXTRA_APP_PACKAGE:Ljava/lang/String; = "android.provider.extra.APP_PACKAGE"

.field public static final greylist-max-r EXTRA_APP_UID:Ljava/lang/String; = "app_uid"

.field public static final whitelist EXTRA_AUTHORITIES:Ljava/lang/String; = "authorities"

.field public static final whitelist EXTRA_BATTERY_SAVER_MODE_ENABLED:Ljava/lang/String; = "android.settings.extra.battery_saver_mode_enabled"

.field public static final whitelist EXTRA_BIOMETRIC_AUTHENTICATORS_ALLOWED:Ljava/lang/String; = "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

.field public static final blacklist EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field public static final whitelist EXTRA_CHANNEL_FILTER_LIST:Ljava/lang/String; = "android.provider.extra.CHANNEL_FILTER_LIST"

.field public static final whitelist EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.provider.extra.CHANNEL_ID"

.field public static final whitelist EXTRA_CONVERSATION_ID:Ljava/lang/String; = "android.provider.extra.CONVERSATION_ID"

.field public static final whitelist EXTRA_DO_NOT_DISTURB_MODE_ENABLED:Ljava/lang/String; = "android.settings.extra.do_not_disturb_mode_enabled"

.field public static final whitelist EXTRA_DO_NOT_DISTURB_MODE_MINUTES:Ljava/lang/String; = "android.settings.extra.do_not_disturb_mode_minutes"

.field public static final whitelist EXTRA_EASY_CONNECT_ATTEMPTED_SSID:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_ATTEMPTED_SSID"

.field public static final whitelist EXTRA_EASY_CONNECT_BAND_LIST:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_BAND_LIST"

.field public static final whitelist EXTRA_EASY_CONNECT_CHANNEL_LIST:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_CHANNEL_LIST"

.field public static final whitelist EXTRA_EASY_CONNECT_ERROR_CODE:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_ERROR_CODE"

.field public static final blacklist EXTRA_ENABLE_MMS_DATA_REQUEST_REASON:Ljava/lang/String; = "android.settings.extra.ENABLE_MMS_DATA_REQUEST_REASON"

.field public static final greylist-max-o EXTRA_INPUT_DEVICE_IDENTIFIER:Ljava/lang/String; = "input_device_identifier"

.field public static final whitelist EXTRA_INPUT_METHOD_ID:Ljava/lang/String; = "input_method_id"

.field public static final blacklist EXTRA_MONITOR_CALLBACK_TYPE:Ljava/lang/String; = "monitor_callback_type"

.field public static final blacklist EXTRA_NAMESPACE:Ljava/lang/String; = "namespace"

.field public static final blacklist EXTRA_NAMESPACE_UPDATED_CALLBACK:Ljava/lang/String; = "namespace_updated_callback"

.field public static final greylist-max-o EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "network_template"

.field public static final whitelist EXTRA_NOTIFICATION_LISTENER_COMPONENT_NAME:Ljava/lang/String; = "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME"

.field public static final greylist-max-o EXTRA_NUMBER_OF_CERTIFICATES:Ljava/lang/String; = "android.settings.extra.number_of_certificates"

.field public static final whitelist EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY:Ljava/lang/String; = "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

.field public static final whitelist EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI:Ljava/lang/String; = "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

.field public static final whitelist EXTRA_SUB_ID:Ljava/lang/String; = "android.provider.extra.SUB_ID"

.field public static final whitelist EXTRA_SUPERVISOR_RESTRICTED_SETTING_KEY:Ljava/lang/String; = "android.provider.extra.SUPERVISOR_RESTRICTED_SETTING_KEY"

.field public static final whitelist EXTRA_WIFI_NETWORK_LIST:Ljava/lang/String; = "android.provider.extra.WIFI_NETWORK_LIST"

.field public static final whitelist EXTRA_WIFI_NETWORK_RESULT_LIST:Ljava/lang/String; = "android.provider.extra.WIFI_NETWORK_RESULT_LIST"

.field public static final whitelist INTENT_CATEGORY_USAGE_ACCESS_CONFIG:Ljava/lang/String; = "android.intent.category.USAGE_ACCESS_CONFIG"

.field public static final blacklist KEY_CONFIG_GET_SYNC_DISABLED_MODE_RETURN:Ljava/lang/String; = "config_get_sync_disabled_mode_return"

.field public static final blacklist KEY_CONFIG_SET_ALL_RETURN:Ljava/lang/String; = "config_set_all_return"

.field private static final greylist-max-o LOCAL_LOGV:Z = false

.field public static final whitelist METADATA_USAGE_ACCESS_REASON:Ljava/lang/String; = "android.settings.metadata.USAGE_ACCESS_REASON"

.field private static final greylist-max-o PM_CHANGE_NETWORK_STATE:[Ljava/lang/String;

.field private static final greylist-max-o PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

.field private static final greylist-max-o PM_WRITE_SETTINGS:[Ljava/lang/String;

.field public static final greylist-max-r RESET_MODE_PACKAGE_DEFAULTS:I = 0x1

.field public static final greylist-max-o RESET_MODE_TRUSTED_DEFAULTS:I = 0x4

.field public static final greylist-max-o RESET_MODE_UNTRUSTED_CHANGES:I = 0x3

.field public static final greylist-max-o RESET_MODE_UNTRUSTED_DEFAULTS:I = 0x2

.field public static final blacklist SAMSUNG_NOTIFY_NO_DELAY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SET_ALL_RESULT_DISABLED:I = 0x2

.field public static final blacklist SET_ALL_RESULT_FAILURE:I = 0x0

.field public static final blacklist SET_ALL_RESULT_SUCCESS:I = 0x1

.field public static final whitelist SUPERVISOR_VERIFICATION_SETTING_BIOMETRICS:I = 0x1

.field public static final whitelist SUPERVISOR_VERIFICATION_SETTING_UNKNOWN:I = 0x0

.field private static final blacklist SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Settings"

.field public static final greylist-max-o ZEN_MODE_BLOCKED_EFFECTS_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_BLOCKED_EFFECTS_SETTINGS"

.field public static final greylist-max-o ZEN_MODE_ONBOARDING:Ljava/lang/String; = "android.settings.ZEN_MODE_ONBOARDING"

.field private static greylist-max-o sInSystemServer:Z

.field private static final greylist-max-o sInSystemServerLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings;->getPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseFloatSetting(Ljava/lang/String;Ljava/lang/String;)F
    .locals 0

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseFloatSetting(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseFloatSettingWithDefault(Ljava/lang/String;F)F
    .locals 0

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseFloatSettingWithDefault(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseIntSetting(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseIntSetting(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseIntSettingWithDefault(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseIntSettingWithDefault(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseLongSetting(Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseLongSetting(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseLongSettingWithDefault(Ljava/lang/String;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings;->parseLongSettingWithDefault(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 144
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings;->SAMSUNG_NOTIFY_NO_DELAY:Ljava/util/Set;

    .line 150
    const-string v1, "edge_enable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v1, "active_edge_area"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    const-string/jumbo v1, "show_recent_apps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v1, "current_sec_active_themepackage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v1, "current_sec_appicon_theme_package"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    const-string/jumbo v1, "wallpapertheme_state"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v1, "any_screen_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    const-string/jumbo v1, "one_handed_op_wakeup_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v1, "any_screen_running"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    const-string/jumbo v1, "navigation_bar_gesture_disabled_by_policy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    const-string/jumbo v1, "navigation_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    const-string/jumbo v1, "onehand_direction"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v1, "game_no_interruption_white_list"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v1, "game_no_interruption"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v1, "game_edgescreen_touch_lock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v1, "game_autobrightness_lock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v1, "game_touchscreen_lock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v1, "game_bixby_block"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v1, "game_auto_temperature_control"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v1, "allow_more_heat_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v1, "game_double_swipe_enable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v1, "game_show_floating_icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    const-string v1, "game_display_hz_48"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    const-string/jumbo v1, "zen_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    const-string/jumbo v1, "zen_mode_config_etag"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v1, "game_immersive_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    const-string/jumbo v1, "show_touches"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v1, "air_cmd_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    const-string/jumbo v1, "motion_pick_up"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    const-string/jumbo v1, "motion_merged_mute_pause"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    const-string/jumbo v1, "motion_overturn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    const-string/jumbo v1, "surface_palm_touch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    const-string/jumbo v1, "surface_palm_swipe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    const-string/jumbo v1, "lift_to_wake"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v1, "double_tap_to_sleep"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v1, "double_tab_to_wake_up"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    const-string/jumbo v1, "palm_touch_to_sleep"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    const-string/jumbo v1, "intelligent_sleep_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    const-string/jumbo v1, "google_core_control"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    const-string/jumbo v1, "spam_call_enable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v1, "contact_setting_sort_order"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    const-string v1, "contact_setting_display_order"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v1, "contact_setting_show_frequently_contacted"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v1, "contact_setting_business_card_sort_order"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    const-string/jumbo v1, "only_contact_with_phone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v1, "carrier_matching_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v1, "airplane_mode_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    const-string/jumbo v1, "select_icon_1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    const-string/jumbo v1, "select_icon_2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    const-string/jumbo v1, "select_name_1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    const-string/jumbo v1, "select_name_2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v1, "contact_setting_list_filter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    const-string/jumbo v1, "rcs_user_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    const-string/jumbo v1, "rcs_user_setting2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    const-string/jumbo v1, "show_message_logs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    const-string/jumbo v1, "voicecall_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    const-string/jumbo v1, "videocall_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo v1, "voicecall_type2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    const-string/jumbo v1, "videocall_type2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    const-string/jumbo v1, "video_calling_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v1, "date_format"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    const-string/jumbo v1, "prefered_voice_call"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    const-string/jumbo v1, "mobile_data"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    const-string v1, "enabled_accessibility_services"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v1, "default_key_sound_path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    const-string v1, "backspace_key_sound_path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    const-string/jumbo v1, "modifier_key_sound_path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    const-string v1, "emergency_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v1, "device_provisioned"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    const-string/jumbo v1, "minimal_battery_use"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v1, "enable_language_change_combination_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    const-string v1, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    const-string/jumbo v1, "wallpapertheme_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v1, "bold_text"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    const-string v1, "dtmf_tone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    const-string v1, "dtmf_tone_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    const-string/jumbo v1, "lockscreen_sounds_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    const-string/jumbo v1, "sip_key_feedback_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    const-string/jumbo v1, "sound_effects_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v1, "camera_feedback_vibrate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    const-string v1, "dialing_keypad_vibrate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    const-string/jumbo v1, "haptic_feedback_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    const-string/jumbo v1, "navigation_gestures_vibrate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    const-string/jumbo v1, "sip_key_feedback_vibration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    const-string v1, "charging_sounds_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    const-string v1, "charging_vibration_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    const-string/jumbo v1, "system_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v1, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    const-string/jumbo v1, "media_vibration_intensity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v1, "direct_writing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v1, "direct_writing_toolbar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    const-string v1, "colortheme_app_icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    const-string/jumbo v1, "lockstar_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    const-string/jumbo v1, "plugin_lock_sub_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v1, "blue_light_filter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    const-string v1, "blue_light_filter_opacity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    const-string v1, "blue_light_filter_scheduled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    const-string v1, "blue_light_filter_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    const-string v1, "blue_light_filter_on_time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    const-string v1, "blue_light_filter_off_time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    const-string v1, "blue_light_filter_adaptive_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    const-string v1, "blue_light_filter_night_dim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2999
    const/4 v0, 0x0

    sput-boolean v0, Landroid/provider/Settings;->sInSystemServer:Z

    .line 3000
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/Settings;->sInSystemServerLock:Ljava/lang/Object;

    .line 24337
    const-string v0, "android.permission.WRITE_SETTINGS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    .line 24340
    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings;->PM_CHANGE_NETWORK_STATE:[Ljava/lang/String;

    .line 24344
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist canDrawOverlays(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 3738
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 3739
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3738
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->isCallingPackageAllowedToDrawOverlays(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3739
    const-string v0, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 3738
    :cond_1
    return v2
.end method

.method public static blacklist checkAndNoteDrawOverlaysOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "throwException"    # Z

    .line 24500
    sget-object v6, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    const/16 v5, 0x18

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "throwException"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 24467
    sget-object v6, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    const/16 v5, 0x17

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24448
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 24590
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 24591
    .local v0, "packages":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 24592
    const/4 v1, 0x0

    return-object v1

    .line 24594
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private static blacklist getPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
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

    .line 3759
    .local p0, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "allKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "readableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "keysWithMaxTargetSdk":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3761
    .local v0, "allFields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 3762
    aget-object v2, v0, v1

    .line 3763
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3764
    goto :goto_1

    .line 3766
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3767
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3768
    goto :goto_1

    .line 3770
    :cond_1
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3771
    const-class v4, Landroid/provider/Settings$Readable;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Landroid/provider/Settings$Readable;

    .line 3773
    .local v4, "annotation":Landroid/provider/Settings$Readable;
    if-eqz v4, :cond_2

    .line 3774
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 3775
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Landroid/provider/Settings$Readable;->maxTargetSdk()I

    move-result v6

    .line 3776
    .local v6, "maxTargetSdk":I
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3777
    if-eqz v6, :cond_2

    .line 3778
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3761
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "annotation":Landroid/provider/Settings$Readable;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "maxTargetSdk":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3783
    .end local v1    # "i":I
    :cond_3
    goto :goto_2

    .line 3782
    :catch_0
    move-exception v1

    .line 3784
    :goto_2
    return-void
.end method

.method public static greylist isCallingPackageAllowedToDrawOverlays(Landroid/content/Context;ILjava/lang/String;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z

    .line 24482
    sget-object v6, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v5, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "throwException"    # Z
    .param p5, "appOpsOpCode"    # I
    .param p6, "permissions"    # [Ljava/lang/String;
    .param p7, "makeNote"    # Z

    .line 24529
    move-object v0, p0

    move-object v7, p2

    move-object/from16 v8, p6

    const/4 v9, 0x0

    if-nez v7, :cond_0

    .line 24530
    return v9

    .line 24533
    :cond_0
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/app/AppOpsManager;

    .line 24534
    .local v10, "appOpsMgr":Landroid/app/AppOpsManager;
    const/4 v11, 0x3

    .line 24535
    .local v11, "mode":I
    if-eqz p7, :cond_1

    .line 24536
    const/4 v6, 0x0

    move-object v1, v10

    move/from16 v2, p5

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v3, v1

    move v1, p1

    .end local v11    # "mode":I
    .local v1, "mode":I
    goto :goto_0

    .line 24539
    .end local v1    # "mode":I
    .restart local v11    # "mode":I
    :cond_1
    move v1, p1

    move/from16 v2, p5

    invoke-virtual {v10, v2, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 24542
    .end local v11    # "mode":I
    .local v3, "mode":I
    :goto_0
    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    .line 24550
    :sswitch_0
    array-length v5, v8

    move v6, v9

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v11, v8, v6

    .line 24551
    .local v11, "permission":Ljava/lang/String;
    invoke-virtual {p0, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_2

    .line 24554
    return v4

    .line 24550
    .end local v11    # "permission":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 24544
    :sswitch_1
    return v4

    .line 24560
    :cond_3
    :goto_2
    if-nez p4, :cond_4

    .line 24561
    return v9

    .line 24566
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24567
    .local v5, "exceptionMessage":Ljava/lang/StringBuilder;
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24568
    const-string v6, " was not granted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24569
    array-length v6, v8

    if-le v6, v4, :cond_5

    .line 24570
    const-string v6, " either of these permissions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 24572
    :cond_5
    const-string v6, " this permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24574
    :goto_3
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v9, v8

    if-ge v6, v9, :cond_7

    .line 24575
    aget-object v9, v8, v6

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24576
    array-length v9, v8

    sub-int/2addr v9, v4

    if-ne v6, v9, :cond_6

    const-string v9, "."

    goto :goto_5

    :cond_6
    const-string v9, ", "

    :goto_5
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24574
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 24579
    .end local v6    # "i":I
    :cond_7
    new-instance v4, Ljava/lang/SecurityException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;ZI[Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z
    .param p4, "appOpsOpCode"    # I
    .param p5, "permissions"    # [Ljava/lang/String;
    .param p6, "makeNote"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24516
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isCallingPackageAllowedToWriteSettings(Landroid/content/Context;ILjava/lang/String;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z

    .line 24432
    sget-object v6, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v5, 0x17

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isInSystemServer()Z
    .locals 2

    .line 3011
    sget-object v0, Landroid/provider/Settings;->sInSystemServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3012
    :try_start_0
    sget-boolean v1, Landroid/provider/Settings;->sInSystemServer:Z

    monitor-exit v0

    return v1

    .line 3013
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist parseFloatSetting(Ljava/lang/String;Ljava/lang/String;)F
    .locals 2
    .param p0, "settingValue"    # Ljava/lang/String;
    .param p1, "settingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 3788
    if-eqz p0, :cond_0

    .line 3792
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3793
    :catch_0
    move-exception v0

    .line 3794
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3789
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist parseFloatSettingWithDefault(Ljava/lang/String;F)F
    .locals 1
    .param p0, "settingValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .line 3800
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3801
    :catch_0
    move-exception v0

    .line 3802
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1

    .line 3800
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private static blacklist parseIntSetting(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "settingValue"    # Ljava/lang/String;
    .param p1, "settingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 3808
    if-eqz p0, :cond_0

    .line 3812
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3813
    :catch_0
    move-exception v0

    .line 3814
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3809
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist parseIntSettingWithDefault(Ljava/lang/String;I)I
    .locals 1
    .param p0, "settingValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 3820
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3821
    :catch_0
    move-exception v0

    .line 3822
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1

    .line 3820
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private static blacklist parseLongSetting(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p0, "settingValue"    # Ljava/lang/String;
    .param p1, "settingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 3828
    if-eqz p0, :cond_0

    .line 3832
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 3833
    :catch_0
    move-exception v0

    .line 3834
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3829
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist parseLongSettingWithDefault(Ljava/lang/String;J)J
    .locals 2
    .param p0, "settingValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .line 3840
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3841
    :catch_0
    move-exception v0

    .line 3842
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p1

    .line 3840
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move-wide v0, p1

    :goto_0
    return-wide v0
.end method

.method public static greylist-max-o setInSystemServer()V
    .locals 2

    .line 3004
    sget-object v0, Landroid/provider/Settings;->sInSystemServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3005
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Landroid/provider/Settings;->sInSystemServer:Z

    .line 3006
    monitor-exit v0

    .line 3007
    return-void

    .line 3006
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
