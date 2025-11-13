.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$AppOpsCollector;,
        Landroid/app/AppOpsManager$OnOpNotedCallback;,
        Landroid/app/AppOpsManager$NotedOpCollectionMode;,
        Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;,
        Landroid/app/AppOpsManager$OnOpStartedListener;,
        Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpNotedListener;,
        Landroid/app/AppOpsManager$OnOpActiveChangedListener;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$HistoricalOp;,
        Landroid/app/AppOpsManager$AttributedHistoricalOps;,
        Landroid/app/AppOpsManager$HistoricalPackageOps;,
        Landroid/app/AppOpsManager$HistoricalUidOps;,
        Landroid/app/AppOpsManager$HistoricalOps;,
        Landroid/app/AppOpsManager$HistoricalOpsRequest;,
        Landroid/app/AppOpsManager$HistoricalOpsRequestFilter;,
        Landroid/app/AppOpsManager$OpHistoryFlags;,
        Landroid/app/AppOpsManager$HistoricalOpsVisitor;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$AttributedOpEntry;,
        Landroid/app/AppOpsManager$NoteOpEvent;,
        Landroid/app/AppOpsManager$OpEventProxyInfo;,
        Landroid/app/AppOpsManager$PackageOps;,
        Landroid/app/AppOpsManager$RestrictionBypass;,
        Landroid/app/AppOpsManager$ShouldCollectNoteOp;,
        Landroid/app/AppOpsManager$DataBucketKey;,
        Landroid/app/AppOpsManager$SamplingStrategy;,
        Landroid/app/AppOpsManager$AttributionFlags;,
        Landroid/app/AppOpsManager$OpFlags;,
        Landroid/app/AppOpsManager$UidState;,
        Landroid/app/AppOpsManager$Mode;,
        Landroid/app/AppOpsManager$HistoricalMode;
    }
.end annotation


# static fields
.field public static final blacklist ATTRIBUTION_CHAIN_ID_NONE:I = -0x1

.field public static final blacklist ATTRIBUTION_FLAGS_NONE:I = 0x0

.field public static final blacklist ATTRIBUTION_FLAG_ACCESSOR:I = 0x1

.field public static final blacklist ATTRIBUTION_FLAG_INTERMEDIARY:I = 0x2

.field public static final blacklist ATTRIBUTION_FLAG_RECEIVER:I = 0x4

.field public static final blacklist ATTRIBUTION_FLAG_TRUSTED:I = 0x8

.field public static final blacklist CALL_BACK_ON_CHANGED_LISTENER_WITH_SWITCHED_OP_CHANGE:J = 0x8d50f1eL

.field public static final blacklist CALL_BACK_ON_SWITCHED_OP:I = 0x2

.field private static final blacklist COLLECT_ASYNC:I = 0x3

.field private static final blacklist COLLECT_SELF:I = 0x1

.field private static final blacklist COLLECT_SYNC:I = 0x2

.field private static final blacklist DEBUG_LOGGING_ENABLE_PROP:Ljava/lang/String; = "appops.logging_enabled"

.field private static final blacklist DEBUG_LOGGING_OPS_PROP:Ljava/lang/String; = "appops.logging_ops"

.field private static final blacklist DEBUG_LOGGING_PACKAGES_PROP:Ljava/lang/String; = "appops.logging_packages"

.field private static final blacklist DEBUG_LOGGING_TAG:Ljava/lang/String; = "AppOpsManager"

.field private static final blacklist DONT_COLLECT:I = 0x0

.field public static final blacklist FILTER_BY_ATTRIBUTION_TAG:I = 0x4

.field public static final blacklist FILTER_BY_OP_NAMES:I = 0x8

.field public static final blacklist FILTER_BY_PACKAGE_NAME:I = 0x2

.field public static final blacklist FILTER_BY_UID:I = 0x1

.field private static final blacklist FLAGS_MASK:I = -0x1

.field private static final blacklist FULL_LOG:Ljava/lang/String; = "privacy_attribution_tag_full_log_enabled"

.field public static final blacklist HISTORICAL_MODE_DISABLED:I = 0x0

.field public static final blacklist HISTORICAL_MODE_ENABLED_ACTIVE:I = 0x1

.field public static final blacklist HISTORICAL_MODE_ENABLED_PASSIVE:I = 0x2

.field public static final whitelist HISTORY_FLAGS_ALL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HISTORY_FLAG_AGGREGATE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HISTORY_FLAG_DISCRETE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist HISTORY_FLAG_GET_ATTRIBUTION_CHAINS:I = 0x4

.field public static final blacklist KEY_BG_STATE_SETTLE_TIME:Ljava/lang/String; = "bg_state_settle_time"

.field public static final blacklist KEY_FG_SERVICE_STATE_SETTLE_TIME:Ljava/lang/String; = "fg_service_state_settle_time"

.field public static final blacklist KEY_HISTORICAL_OPS:Ljava/lang/String; = "historical_ops"

.field public static final blacklist KEY_TOP_STATE_SETTLE_TIME:Ljava/lang/String; = "top_state_settle_time"

.field public static final blacklist MAX_PRIORITY_UID_STATE:I = 0x64

.field private static final blacklist MAX_UNFORWARDED_OPS:I = 0xa

.field public static final blacklist MIN_PRIORITY_UID_STATE:I = 0x2bc

.field public static final whitelist MODE_ALLOWED:I = 0x0

.field public static final whitelist MODE_DEFAULT:I = 0x3

.field public static final whitelist MODE_ERRORED:I = 0x2

.field public static final whitelist MODE_FOREGROUND:I = 0x4

.field public static final whitelist MODE_IGNORED:I = 0x1

.field public static final greylist-max-o MODE_NAMES:[Ljava/lang/String;

.field public static final blacklist NOTE_OP_COLLECTION_ENABLED:Z = false

.field public static final whitelist OPSTR_ACCEPT_HANDOVER:Ljava/lang/String; = "android:accept_handover"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ACCESS_ACCESSIBILITY:Ljava/lang/String; = "android:access_accessibility"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_ACCESS_MEDIA_LOCATION:Ljava/lang/String; = "android:access_media_location"

.field public static final whitelist OPSTR_ACCESS_NOTIFICATIONS:Ljava/lang/String; = "android:access_notifications"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_ACCESS_RESTRICTED_SETTINGS:Ljava/lang/String; = "android:access_restricted_settings"

.field public static final whitelist OPSTR_ACTIVATE_PLATFORM_VPN:Ljava/lang/String; = "android:activate_platform_vpn"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_ACTIVITY_RECOGNITION:Ljava/lang/String; = "android:activity_recognition"

.field public static final blacklist OPSTR_ACTIVITY_RECOGNITION_SOURCE:Ljava/lang/String; = "android:activity_recognition_source"

.field public static final whitelist OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field public static final whitelist OPSTR_ANSWER_PHONE_CALLS:Ljava/lang/String; = "android:answer_phone_calls"

.field public static final whitelist OPSTR_ASSIST_SCREENSHOT:Ljava/lang/String; = "android:assist_screenshot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ASSIST_STRUCTURE:Ljava/lang/String; = "android:assist_structure"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_ACCESSIBILITY_VOLUME:Ljava/lang/String; = "android:audio_accessibility_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_ALARM_VOLUME:Ljava/lang/String; = "android:audio_alarm_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_BLUETOOTH_VOLUME:Ljava/lang/String; = "android:audio_bluetooth_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_MASTER_VOLUME:Ljava/lang/String; = "android:audio_master_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_MEDIA_VOLUME:Ljava/lang/String; = "android:audio_media_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_NOTIFICATION_VOLUME:Ljava/lang/String; = "android:audio_notification_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_RING_VOLUME:Ljava/lang/String; = "android:audio_ring_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_VOICE_VOLUME:Ljava/lang/String; = "android:audio_voice_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUTO_REVOKE_MANAGED_BY_INSTALLER:Ljava/lang/String; = "android:auto_revoke_managed_by_installer"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUTO_REVOKE_PERMISSIONS_IF_UNUSED:Ljava/lang/String; = "android:auto_revoke_permissions_if_unused"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_BIND_ACCESSIBILITY_SERVICE:Ljava/lang/String; = "android:bind_accessibility_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_BLUETOOTH_ADVERTISE:Ljava/lang/String; = "android:bluetooth_advertise"

.field public static final blacklist OPSTR_BLUETOOTH_CONNECT:Ljava/lang/String; = "android:bluetooth_connect"

.field public static final greylist-max-o OPSTR_BLUETOOTH_SCAN:Ljava/lang/String; = "android:bluetooth_scan"

.field public static final whitelist OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field public static final whitelist OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final whitelist OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final whitelist OPSTR_CHANGE_WIFI_STATE:Ljava/lang/String; = "android:change_wifi_state"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final blacklist OPSTR_COARSE_LOCATION_SOURCE:Ljava/lang/String; = "android:coarse_location_source"

.field public static final whitelist OPSTR_ESTABLISH_VPN_MANAGER:Ljava/lang/String; = "android:establish_vpn_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ESTABLISH_VPN_SERVICE:Ljava/lang/String; = "android:establish_vpn_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final blacklist OPSTR_FINE_LOCATION_SOURCE:Ljava/lang/String; = "android:fine_location_source"

.field public static final whitelist OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final whitelist OPSTR_GPS:Ljava/lang/String; = "android:gps"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_INSTANT_APP_START_FOREGROUND:Ljava/lang/String; = "android:instant_app_start_foreground"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_INTERACT_ACROSS_PROFILES:Ljava/lang/String; = "android:interact_across_profiles"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_LEGACY_STORAGE:Ljava/lang/String; = "android:legacy_storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_LOADER_USAGE_STATS:Ljava/lang/String; = "android:loader_usage_stats"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_MANAGE_CREDENTIALS:Ljava/lang/String; = "android:manage_credentials"

.field public static final whitelist OPSTR_MANAGE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:manage_external_storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_MANAGE_IPSEC_TUNNELS:Ljava/lang/String; = "android:manage_ipsec_tunnels"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_MANAGE_MEDIA:Ljava/lang/String; = "android:manage_media"

.field public static final whitelist OPSTR_MANAGE_ONGOING_CALLS:Ljava/lang/String; = "android:manage_ongoing_calls"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final whitelist OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final whitelist OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final whitelist OPSTR_MUTE_MICROPHONE:Ljava/lang/String; = "android:mute_microphone"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_NEARBY_WIFI_DEVICES:Ljava/lang/String; = "android:nearby_wifi_devices"

.field public static final whitelist OPSTR_NEIGHBORING_CELLS:Ljava/lang/String; = "android:neighboring_cells"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_NO_ISOLATED_STORAGE:Ljava/lang/String; = "android:no_isolated_storage"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist OPSTR_PHONE_CALL_CAMERA:Ljava/lang/String; = "android:phone_call_camera"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_PHONE_CALL_MICROPHONE:Ljava/lang/String; = "android:phone_call_microphone"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_PICTURE_IN_PICTURE:Ljava/lang/String; = "android:picture_in_picture"

.field public static final whitelist OPSTR_PLAY_AUDIO:Ljava/lang/String; = "android:play_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_POST_NOTIFICATION:Ljava/lang/String; = "android:post_notification"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_PROCESS_OUTGOING_CALLS:Ljava/lang/String; = "android:process_outgoing_calls"

.field public static final whitelist OPSTR_PROJECT_MEDIA:Ljava/lang/String; = "android:project_media"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_QUERY_ALL_PACKAGES:Ljava/lang/String; = "android:query_all_packages"

.field public static final whitelist OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final whitelist OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final whitelist OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final whitelist OPSTR_READ_CLIPBOARD:Ljava/lang/String; = "android:read_clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final blacklist OPSTR_READ_DEVICE_IDENTIFIERS:Ljava/lang/String; = "android:read_device_identifiers"

.field public static final whitelist OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field public static final whitelist OPSTR_READ_ICC_SMS:Ljava/lang/String; = "android:read_icc_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_MEDIA_AUDIO:Ljava/lang/String; = "android:read_media_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_MEDIA_IMAGES:Ljava/lang/String; = "android:read_media_images"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_MEDIA_VIDEO:Ljava/lang/String; = "android:read_media_video"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_PHONE_NUMBERS:Ljava/lang/String; = "android:read_phone_numbers"

.field public static final whitelist OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final whitelist OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final blacklist OPSTR_RECEIVE_AMBIENT_TRIGGER_AUDIO:Ljava/lang/String; = "android:receive_ambient_trigger_audio"

.field public static final whitelist OPSTR_RECEIVE_EMERGENCY_BROADCAST:Ljava/lang/String; = "android:receive_emergency_broadcast"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final whitelist OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final whitelist OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final whitelist OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field public static final blacklist OPSTR_RECORD_AUDIO_HOTWORD:Ljava/lang/String; = "android:record_audio_hotword"

.field public static final blacklist OPSTR_RECORD_AUDIO_OUTPUT:Ljava/lang/String; = "android:record_audio_output"

.field public static final blacklist OPSTR_RECORD_INCOMING_PHONE_AUDIO:Ljava/lang/String; = "android:record_incoming_phone_audio"

.field public static final whitelist OPSTR_REQUEST_DELETE_PACKAGES:Ljava/lang/String; = "android:request_delete_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_REQUEST_INSTALL_PACKAGES:Ljava/lang/String; = "android:request_install_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RUN_ANY_IN_BACKGROUND:Ljava/lang/String; = "android:run_any_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RUN_IN_BACKGROUND:Ljava/lang/String; = "android:run_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_SCHEDULE_EXACT_ALARM:Ljava/lang/String; = "android:schedule_exact_alarm"

.field public static final whitelist OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final blacklist OPSTR_SMS_FINANCIAL_TRANSACTIONS:Ljava/lang/String; = "android:sms_financial_transactions"

.field public static final whitelist OPSTR_START_FOREGROUND:Ljava/lang/String; = "android:start_foreground"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field public static final whitelist OPSTR_TAKE_AUDIO_FOCUS:Ljava/lang/String; = "android:take_audio_focus"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_TAKE_MEDIA_BUTTONS:Ljava/lang/String; = "android:take_media_buttons"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_TOAST_WINDOW:Ljava/lang/String; = "android:toast_window"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_TURN_SCREEN_ON:Ljava/lang/String; = "android:turn_screen_on"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_USE_BIOMETRIC:Ljava/lang/String; = "android:use_biometric"

.field public static final whitelist OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final blacklist OPSTR_USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER:Ljava/lang/String; = "android:use_icc_auth_with_device_identifier"

.field public static final whitelist OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field public static final blacklist OPSTR_UWB_RANGING:Ljava/lang/String; = "android:uwb_ranging"

.field public static final whitelist OPSTR_VIBRATE:Ljava/lang/String; = "android:vibrate"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WAKE_LOCK:Ljava/lang/String; = "android:wake_lock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WIFI_SCAN:Ljava/lang/String; = "android:wifi_scan"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final whitelist OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final whitelist OPSTR_WRITE_CLIPBOARD:Ljava/lang/String; = "android:write_clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final whitelist OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field public static final whitelist OPSTR_WRITE_ICC_SMS:Ljava/lang/String; = "android:write_icc_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_MEDIA_AUDIO:Ljava/lang/String; = "android:write_media_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_MEDIA_IMAGES:Ljava/lang/String; = "android:write_media_images"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_MEDIA_VIDEO:Ljava/lang/String; = "android:write_media_video"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final whitelist OPSTR_WRITE_SMS:Ljava/lang/String; = "android:write_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_WALLPAPER:Ljava/lang/String; = "android:write_wallpaper"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist OP_ACCEPT_HANDOVER:I = 0x4a

.field public static final blacklist OP_ACCESS_ACCESSIBILITY:I = 0x58

.field public static final blacklist OP_ACCESS_MEDIA_LOCATION:I = 0x5a

.field public static final greylist OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final blacklist OP_ACCESS_RESTRICTED_SETTINGS:I = 0x77

.field public static final blacklist OP_ACTIVATE_PLATFORM_VPN:I = 0x5e

.field public static final greylist OP_ACTIVATE_VPN:I = 0x2f

.field public static final blacklist OP_ACTIVITY_RECOGNITION:I = 0x4f

.field public static final blacklist OP_ACTIVITY_RECOGNITION_SOURCE:I = 0x71

.field public static final greylist OP_ADD_VOICEMAIL:I = 0x34

.field public static final greylist OP_ANSWER_PHONE_CALLS:I = 0x45

.field public static final greylist OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final greylist OP_ASSIST_STRUCTURE:I = 0x31

.field public static final greylist OP_AUDIO_ACCESSIBILITY_VOLUME:I = 0x40

.field public static final greylist OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final greylist OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final greylist OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final greylist OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final greylist OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final greylist OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final greylist OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final blacklist OP_AUTO_REVOKE_MANAGED_BY_INSTALLER:I = 0x62

.field public static final blacklist OP_AUTO_REVOKE_PERMISSIONS_IF_UNUSED:I = 0x61

.field public static final greylist OP_BIND_ACCESSIBILITY_SERVICE:I = 0x49

.field public static final blacklist OP_BLUETOOTH_ADVERTISE:I = 0x72

.field public static final blacklist OP_BLUETOOTH_CONNECT:I = 0x6f

.field public static final greylist OP_BLUETOOTH_SCAN:I = 0x4d

.field public static final greylist OP_BODY_SENSORS:I = 0x38

.field public static final greylist OP_CALL_PHONE:I = 0xd

.field public static final greylist OP_CAMERA:I = 0x1a

.field public static final greylist OP_CHANGE_WIFI_STATE:I = 0x47

.field public static final greylist OP_COARSE_LOCATION:I = 0x0

.field public static final blacklist OP_COARSE_LOCATION_SOURCE:I = 0x6d

.field private static final blacklist OP_DEPRECATED_1:I = 0x60

.field public static final blacklist OP_ESTABLISH_VPN_MANAGER:I = 0x76

.field public static final blacklist OP_ESTABLISH_VPN_SERVICE:I = 0x75

.field public static final greylist OP_FINE_LOCATION:I = 0x1

.field public static final blacklist OP_FINE_LOCATION_SOURCE:I = 0x6c

.field public static final whitelist OP_FLAGS_ALL:I = 0x1f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAGS_ALL_TRUSTED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_SELF:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_TRUSTED_PROXIED:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_TRUSTED_PROXY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_UNTRUSTED_PROXIED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_UNTRUSTED_PROXY:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist OP_GET_ACCOUNTS:I = 0x3e

.field public static final greylist OP_GET_USAGE_STATS:I = 0x2b

.field public static final greylist OP_GPS:I = 0x2

.field public static final greylist OP_INSTANT_APP_START_FOREGROUND:I = 0x44

.field public static final blacklist OP_INTERACT_ACROSS_PROFILES:I = 0x5d

.field public static final blacklist OP_LEGACY_STORAGE:I = 0x57

.field public static final blacklist OP_LOADER_USAGE_STATS:I = 0x5f

.field public static final blacklist OP_MANAGE_CREDENTIALS:I = 0x68

.field public static final blacklist OP_MANAGE_EXTERNAL_STORAGE:I = 0x5c

.field public static final greylist OP_MANAGE_IPSEC_TUNNELS:I = 0x4b

.field public static final blacklist OP_MANAGE_MEDIA:I = 0x6e

.field public static final blacklist OP_MANAGE_ONGOING_CALLS:I = 0x67

.field public static final greylist OP_MOCK_LOCATION:I = 0x3a

.field public static final greylist OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final greylist OP_MONITOR_LOCATION:I = 0x29

.field public static final greylist OP_MUTE_MICROPHONE:I = 0x2c

.field public static final blacklist OP_NEARBY_WIFI_DEVICES:I = 0x74

.field public static final greylist OP_NEIGHBORING_CELLS:I = 0xc

.field public static final greylist-max-r OP_NONE:I = -0x1

.field public static final blacklist OP_NO_ISOLATED_STORAGE:I = 0x63

.field public static final blacklist OP_PHONE_CALL_CAMERA:I = 0x65

.field public static final blacklist OP_PHONE_CALL_MICROPHONE:I = 0x64

.field public static final greylist OP_PICTURE_IN_PICTURE:I = 0x43

.field public static final greylist OP_PLAY_AUDIO:I = 0x1c

.field public static final greylist OP_POST_NOTIFICATION:I = 0xb

.field public static final greylist OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final greylist OP_PROJECT_MEDIA:I = 0x2e

.field public static final blacklist OP_QUERY_ALL_PACKAGES:I = 0x5b

.field public static final greylist OP_READ_CALENDAR:I = 0x8

.field public static final greylist OP_READ_CALL_LOG:I = 0x6

.field public static final greylist OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final greylist OP_READ_CLIPBOARD:I = 0x1d

.field public static final greylist OP_READ_CONTACTS:I = 0x4

.field public static final blacklist OP_READ_DEVICE_IDENTIFIERS:I = 0x59

.field public static final greylist OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final greylist OP_READ_ICC_SMS:I = 0x15

.field public static final blacklist OP_READ_MEDIA_AUDIO:I = 0x51

.field public static final blacklist OP_READ_MEDIA_IMAGES:I = 0x55

.field public static final blacklist OP_READ_MEDIA_VIDEO:I = 0x53

.field public static final greylist OP_READ_PHONE_NUMBERS:I = 0x41

.field public static final greylist OP_READ_PHONE_STATE:I = 0x33

.field public static final greylist OP_READ_SMS:I = 0xe

.field public static final blacklist OP_RECEIVE_AMBIENT_TRIGGER_AUDIO:I = 0x78

.field public static final greylist OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final greylist OP_RECEIVE_MMS:I = 0x12

.field public static final greylist OP_RECEIVE_SMS:I = 0x10

.field public static final greylist OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final greylist OP_RECORD_AUDIO:I = 0x1b

.field public static final blacklist OP_RECORD_AUDIO_HOTWORD:I = 0x66

.field public static final blacklist OP_RECORD_AUDIO_OUTPUT:I = 0x6a

.field public static final blacklist OP_RECORD_INCOMING_PHONE_AUDIO:I = 0x73

.field public static final greylist OP_REQUEST_DELETE_PACKAGES:I = 0x48

.field public static final greylist OP_REQUEST_INSTALL_PACKAGES:I = 0x42

.field public static final greylist OP_RUN_ANY_IN_BACKGROUND:I = 0x46

.field public static final greylist OP_RUN_IN_BACKGROUND:I = 0x3f

.field public static final blacklist OP_SCHEDULE_EXACT_ALARM:I = 0x6b

.field public static final greylist OP_SEND_SMS:I = 0x14

.field public static final blacklist OP_SMS_FINANCIAL_TRANSACTIONS:I = 0x50

.field public static final greylist OP_START_FOREGROUND:I = 0x4c

.field public static final greylist OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final greylist OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final greylist OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final greylist OP_TOAST_WINDOW:I = 0x2d

.field public static final greylist OP_TURN_SCREEN_ON:I = 0x3d

.field public static final blacklist OP_USE_BIOMETRIC:I = 0x4e

.field public static final greylist OP_USE_FINGERPRINT:I = 0x37

.field public static final blacklist OP_USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER:I = 0x69

.field public static final greylist OP_USE_SIP:I = 0x35

.field public static final blacklist OP_UWB_RANGING:I = 0x70

.field public static final greylist OP_VIBRATE:I = 0x3

.field public static final greylist OP_WAKE_LOCK:I = 0x28

.field public static final greylist OP_WIFI_SCAN:I = 0xa

.field public static final greylist OP_WRITE_CALENDAR:I = 0x9

.field public static final greylist OP_WRITE_CALL_LOG:I = 0x7

.field public static final greylist OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final greylist OP_WRITE_CONTACTS:I = 0x5

.field public static final greylist OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final greylist OP_WRITE_ICC_SMS:I = 0x16

.field public static final blacklist OP_WRITE_MEDIA_AUDIO:I = 0x52

.field public static final blacklist OP_WRITE_MEDIA_IMAGES:I = 0x56

.field public static final blacklist OP_WRITE_MEDIA_VIDEO:I = 0x54

.field public static final greylist OP_WRITE_SETTINGS:I = 0x17

.field public static final greylist OP_WRITE_SMS:I = 0xf

.field public static final greylist OP_WRITE_WALLPAPER:I = 0x30

.field private static final greylist-max-o RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

.field public static final blacklist SAMPLING_STRATEGY_BOOT_TIME_SAMPLING:I = 0x3

.field public static final blacklist SAMPLING_STRATEGY_DEFAULT:I = 0x0

.field public static final blacklist SAMPLING_STRATEGY_RARELY_USED:I = 0x2

.field public static final blacklist SAMPLING_STRATEGY_UNIFORM:I = 0x1

.field public static final blacklist SAMPLING_STRATEGY_UNIFORM_OPS:I = 0x4

.field public static final blacklist SECURITY_EXCEPTION_ON_INVALID_ATTRIBUTION_TAG_CHANGE:J = 0x901b1a2L

.field private static final blacklist SHOULD_COLLECT_NOTE_OP:B = 0x2t

.field private static final blacklist SHOULD_COLLECT_NOTE_OP_NOT_INITIALIZED:B = 0x0t

.field private static final blacklist SHOULD_NOT_COLLECT_NOTE_OP:B = 0x1t

.field public static final blacklist UID_STATES:[I

.field public static final whitelist UID_STATE_BACKGROUND:I = 0x258
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_CACHED:I = 0x2bc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_FOREGROUND:I = 0x1f4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_FOREGROUND_SERVICE:I = 0x190
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_FOREGROUND_SERVICE_LOCATION:I = 0x12c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist UID_STATE_MAX_LAST_NON_RESTRICTED:I = 0x1f4

.field private static final blacklist UID_STATE_OFFSET:I = 0x1f

.field public static final whitelist UID_STATE_PERSISTENT:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_TOP:I = 0xc8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WATCH_FOREGROUND_CHANGES:I = 0x1

.field public static final greylist-max-r _NUM_OP:I = 0x79

.field private static final blacklist sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[J>;>;"
        }
    .end annotation
.end field

.field private static final blacklist sAppOpsToNote:[B

.field private static final blacklist sBinderThreadCallingUid:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sClientId:Landroid/os/IBinder;

.field private static blacklist sConfig:Lcom/android/internal/app/MessageSamplingConfig;

.field private static blacklist sFullLog:Ljava/lang/Boolean;

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

.field private static blacklist sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

.field private static blacklist sOpAllowSystemRestrictionBypass:[Landroid/app/AppOpsManager$RestrictionBypass;

.field private static greylist-max-o sOpDefaultMode:[I

.field private static greylist-max-o sOpDisableReset:[Z

.field private static greylist-max-o sOpNames:[Ljava/lang/String;

.field private static greylist sOpPerms:[Ljava/lang/String;

.field private static blacklist sOpRestrictRead:[Z

.field private static greylist-max-o sOpRestrictions:[Ljava/lang/String;

.field private static greylist-max-o sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sOpToString:[Ljava/lang/String;

.field private static greylist-max-o sOpToSwitch:[I

.field private static greylist-max-o sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sService:Lcom/android/internal/app/IAppOpsService;

.field private static blacklist sUnforwardedOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpActiveChangedListener;",
            "Lcom/android/internal/app/IAppOpsActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNotedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpNotedListener;",
            "Lcom/android/internal/app/IAppOpsNotedCallback;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mService:Lcom/android/internal/app/IAppOpsService;

.field private final blacklist mStartedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpStartedListener;",
            "Lcom/android/internal/app/IAppOpsStartedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsConfig()Lcom/android/internal/app/MessageSamplingConfig;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsOpToString()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsConfig(Lcom/android/internal/app/MessageSamplingConfig;)V
    .locals 0

    sput-object p0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 0

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->collectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdeduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroid/app/AppOpsManager;->deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->equalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetFormattedStackTrace()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->getLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService()Lcom/android/internal/app/IAppOpsService;
    .locals 1

    invoke-static {}, Landroid/app/AppOpsManager;->getService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSettedEvent(Landroid/util/LongSparseArray;II)Landroid/app/AppOpsManager$NoteOpEvent;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/app/AppOpsManager;->getSettedEvent(Landroid/util/LongSparseArray;II)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisCollectingStackTraces()Z
    .locals 1

    invoke-static {}, Landroid/app/AppOpsManager;->isCollectingStackTraces()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->listForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;
    .locals 0

    invoke-static {p0}, Landroid/app/AppOpsManager;->mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroid/app/AppOpsManager;->readDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .locals 0

    invoke-static {p0}, Landroid/app/AppOpsManager;->readLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->sumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/app/AppOpsManager;->writeDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->writeLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 126

    .line 211
    const/4 v0, 0x0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 241
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    .line 262
    new-instance v1, Landroid/app/AppOpsManager$1;

    invoke-direct {v1}, Landroid/app/AppOpsManager$1;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 450
    const-string v1, "allow"

    const-string v2, "ignore"

    const-string v3, "deny"

    const-string v4, "default"

    const-string v5, "foreground"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    .line 573
    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Landroid/app/AppOpsManager;->UID_STATES:[I

    .line 1835
    const/16 v2, 0x39

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    sput-object v3, Landroid/app/AppOpsManager;->RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

    .line 1920
    const/16 v3, 0x79

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    sput-object v4, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 2047
    const-string v5, "android:coarse_location"

    const-string v6, "android:fine_location"

    const-string v7, "android:gps"

    const-string v8, "android:vibrate"

    const-string v9, "android:read_contacts"

    const-string v10, "android:write_contacts"

    const-string v11, "android:read_call_log"

    const-string v12, "android:write_call_log"

    const-string v13, "android:read_calendar"

    const-string v14, "android:write_calendar"

    const-string v15, "android:wifi_scan"

    const-string v16, "android:post_notification"

    const-string v17, "android:neighboring_cells"

    const-string v18, "android:call_phone"

    const-string v19, "android:read_sms"

    const-string v20, "android:write_sms"

    const-string v21, "android:receive_sms"

    const-string v22, "android:receive_emergency_broadcast"

    const-string v23, "android:receive_mms"

    const-string v24, "android:receive_wap_push"

    const-string v25, "android:send_sms"

    const-string v26, "android:read_icc_sms"

    const-string v27, "android:write_icc_sms"

    const-string v28, "android:write_settings"

    const-string v29, "android:system_alert_window"

    const-string v30, "android:access_notifications"

    const-string v31, "android:camera"

    const-string v32, "android:record_audio"

    const-string v33, "android:play_audio"

    const-string v34, "android:read_clipboard"

    const-string v35, "android:write_clipboard"

    const-string v36, "android:take_media_buttons"

    const-string v37, "android:take_audio_focus"

    const-string v38, "android:audio_master_volume"

    const-string v39, "android:audio_voice_volume"

    const-string v40, "android:audio_ring_volume"

    const-string v41, "android:audio_media_volume"

    const-string v42, "android:audio_alarm_volume"

    const-string v43, "android:audio_notification_volume"

    const-string v44, "android:audio_bluetooth_volume"

    const-string v45, "android:wake_lock"

    const-string v46, "android:monitor_location"

    const-string v47, "android:monitor_location_high_power"

    const-string v48, "android:get_usage_stats"

    const-string v49, "android:mute_microphone"

    const-string v50, "android:toast_window"

    const-string v51, "android:project_media"

    const-string v52, "android:activate_vpn"

    const-string v53, "android:write_wallpaper"

    const-string v54, "android:assist_structure"

    const-string v55, "android:assist_screenshot"

    const-string v56, "android:read_phone_state"

    const-string v57, "android:add_voicemail"

    const-string v58, "android:use_sip"

    const-string v59, "android:process_outgoing_calls"

    const-string v60, "android:use_fingerprint"

    const-string v61, "android:body_sensors"

    const-string v62, "android:read_cell_broadcasts"

    const-string v63, "android:mock_location"

    const-string v64, "android:read_external_storage"

    const-string v65, "android:write_external_storage"

    const-string v66, "android:turn_screen_on"

    const-string v67, "android:get_accounts"

    const-string v68, "android:run_in_background"

    const-string v69, "android:audio_accessibility_volume"

    const-string v70, "android:read_phone_numbers"

    const-string v71, "android:request_install_packages"

    const-string v72, "android:picture_in_picture"

    const-string v73, "android:instant_app_start_foreground"

    const-string v74, "android:answer_phone_calls"

    const-string v75, "android:run_any_in_background"

    const-string v76, "android:change_wifi_state"

    const-string v77, "android:request_delete_packages"

    const-string v78, "android:bind_accessibility_service"

    const-string v79, "android:accept_handover"

    const-string v80, "android:manage_ipsec_tunnels"

    const-string v81, "android:start_foreground"

    const-string v82, "android:bluetooth_scan"

    const-string v83, "android:use_biometric"

    const-string v84, "android:activity_recognition"

    const-string v85, "android:sms_financial_transactions"

    const-string v86, "android:read_media_audio"

    const-string v87, "android:write_media_audio"

    const-string v88, "android:read_media_video"

    const-string v89, "android:write_media_video"

    const-string v90, "android:read_media_images"

    const-string v91, "android:write_media_images"

    const-string v92, "android:legacy_storage"

    const-string v93, "android:access_accessibility"

    const-string v94, "android:read_device_identifiers"

    const-string v95, "android:access_media_location"

    const-string v96, "android:query_all_packages"

    const-string v97, "android:manage_external_storage"

    const-string v98, "android:interact_across_profiles"

    const-string v99, "android:activate_platform_vpn"

    const-string v100, "android:loader_usage_stats"

    const-string v101, ""

    const-string v102, "android:auto_revoke_permissions_if_unused"

    const-string v103, "android:auto_revoke_managed_by_installer"

    const-string v104, "android:no_isolated_storage"

    const-string v105, "android:phone_call_microphone"

    const-string v106, "android:phone_call_camera"

    const-string v107, "android:record_audio_hotword"

    const-string v108, "android:manage_ongoing_calls"

    const-string v109, "android:manage_credentials"

    const-string v110, "android:use_icc_auth_with_device_identifier"

    const-string v111, "android:record_audio_output"

    const-string v112, "android:schedule_exact_alarm"

    const-string v113, "android:fine_location_source"

    const-string v114, "android:coarse_location_source"

    const-string v115, "android:manage_media"

    const-string v116, "android:bluetooth_connect"

    const-string v117, "android:uwb_ranging"

    const-string v118, "android:activity_recognition_source"

    const-string v119, "android:bluetooth_advertise"

    const-string v120, "android:record_incoming_phone_audio"

    const-string v121, "android:nearby_wifi_devices"

    const-string v122, "android:establish_vpn_service"

    const-string v123, "android:establish_vpn_manager"

    const-string v124, "android:access_restricted_settings"

    const-string v125, "android:receive_ambient_trigger_audio"

    filled-new-array/range {v5 .. v125}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 2175
    const-string v5, "COARSE_LOCATION"

    const-string v6, "FINE_LOCATION"

    const-string v7, "GPS"

    const-string v8, "VIBRATE"

    const-string v9, "READ_CONTACTS"

    const-string v10, "WRITE_CONTACTS"

    const-string v11, "READ_CALL_LOG"

    const-string v12, "WRITE_CALL_LOG"

    const-string v13, "READ_CALENDAR"

    const-string v14, "WRITE_CALENDAR"

    const-string v15, "WIFI_SCAN"

    const-string v16, "POST_NOTIFICATION"

    const-string v17, "NEIGHBORING_CELLS"

    const-string v18, "CALL_PHONE"

    const-string v19, "READ_SMS"

    const-string v20, "WRITE_SMS"

    const-string v21, "RECEIVE_SMS"

    const-string v22, "RECEIVE_EMERGECY_SMS"

    const-string v23, "RECEIVE_MMS"

    const-string v24, "RECEIVE_WAP_PUSH"

    const-string v25, "SEND_SMS"

    const-string v26, "READ_ICC_SMS"

    const-string v27, "WRITE_ICC_SMS"

    const-string v28, "WRITE_SETTINGS"

    const-string v29, "SYSTEM_ALERT_WINDOW"

    const-string v30, "ACCESS_NOTIFICATIONS"

    const-string v31, "CAMERA"

    const-string v32, "RECORD_AUDIO"

    const-string v33, "PLAY_AUDIO"

    const-string v34, "READ_CLIPBOARD"

    const-string v35, "WRITE_CLIPBOARD"

    const-string v36, "TAKE_MEDIA_BUTTONS"

    const-string v37, "TAKE_AUDIO_FOCUS"

    const-string v38, "AUDIO_MASTER_VOLUME"

    const-string v39, "AUDIO_VOICE_VOLUME"

    const-string v40, "AUDIO_RING_VOLUME"

    const-string v41, "AUDIO_MEDIA_VOLUME"

    const-string v42, "AUDIO_ALARM_VOLUME"

    const-string v43, "AUDIO_NOTIFICATION_VOLUME"

    const-string v44, "AUDIO_BLUETOOTH_VOLUME"

    const-string v45, "WAKE_LOCK"

    const-string v46, "MONITOR_LOCATION"

    const-string v47, "MONITOR_HIGH_POWER_LOCATION"

    const-string v48, "GET_USAGE_STATS"

    const-string v49, "MUTE_MICROPHONE"

    const-string v50, "TOAST_WINDOW"

    const-string v51, "PROJECT_MEDIA"

    const-string v52, "ACTIVATE_VPN"

    const-string v53, "WRITE_WALLPAPER"

    const-string v54, "ASSIST_STRUCTURE"

    const-string v55, "ASSIST_SCREENSHOT"

    const-string v56, "READ_PHONE_STATE"

    const-string v57, "ADD_VOICEMAIL"

    const-string v58, "USE_SIP"

    const-string v59, "PROCESS_OUTGOING_CALLS"

    const-string v60, "USE_FINGERPRINT"

    const-string v61, "BODY_SENSORS"

    const-string v62, "READ_CELL_BROADCASTS"

    const-string v63, "MOCK_LOCATION"

    const-string v64, "READ_EXTERNAL_STORAGE"

    const-string v65, "WRITE_EXTERNAL_STORAGE"

    const-string v66, "TURN_ON_SCREEN"

    const-string v67, "GET_ACCOUNTS"

    const-string v68, "RUN_IN_BACKGROUND"

    const-string v69, "AUDIO_ACCESSIBILITY_VOLUME"

    const-string v70, "READ_PHONE_NUMBERS"

    const-string v71, "REQUEST_INSTALL_PACKAGES"

    const-string v72, "PICTURE_IN_PICTURE"

    const-string v73, "INSTANT_APP_START_FOREGROUND"

    const-string v74, "ANSWER_PHONE_CALLS"

    const-string v75, "RUN_ANY_IN_BACKGROUND"

    const-string v76, "CHANGE_WIFI_STATE"

    const-string v77, "REQUEST_DELETE_PACKAGES"

    const-string v78, "BIND_ACCESSIBILITY_SERVICE"

    const-string v79, "ACCEPT_HANDOVER"

    const-string v80, "MANAGE_IPSEC_TUNNELS"

    const-string v81, "START_FOREGROUND"

    const-string v82, "BLUETOOTH_SCAN"

    const-string v83, "USE_BIOMETRIC"

    const-string v84, "ACTIVITY_RECOGNITION"

    const-string v85, "SMS_FINANCIAL_TRANSACTIONS"

    const-string v86, "READ_MEDIA_AUDIO"

    const-string v87, "WRITE_MEDIA_AUDIO"

    const-string v88, "READ_MEDIA_VIDEO"

    const-string v89, "WRITE_MEDIA_VIDEO"

    const-string v90, "READ_MEDIA_IMAGES"

    const-string v91, "WRITE_MEDIA_IMAGES"

    const-string v92, "LEGACY_STORAGE"

    const-string v93, "ACCESS_ACCESSIBILITY"

    const-string v94, "READ_DEVICE_IDENTIFIERS"

    const-string v95, "ACCESS_MEDIA_LOCATION"

    const-string v96, "QUERY_ALL_PACKAGES"

    const-string v97, "MANAGE_EXTERNAL_STORAGE"

    const-string v98, "INTERACT_ACROSS_PROFILES"

    const-string v99, "ACTIVATE_PLATFORM_VPN"

    const-string v100, "LOADER_USAGE_STATS"

    const-string v101, "deprecated"

    const-string v102, "AUTO_REVOKE_PERMISSIONS_IF_UNUSED"

    const-string v103, "AUTO_REVOKE_MANAGED_BY_INSTALLER"

    const-string v104, "NO_ISOLATED_STORAGE"

    const-string v105, "PHONE_CALL_MICROPHONE"

    const-string v106, "PHONE_CALL_CAMERA"

    const-string v107, "RECORD_AUDIO_HOTWORD"

    const-string v108, "MANAGE_ONGOING_CALLS"

    const-string v109, "MANAGE_CREDENTIALS"

    const-string v110, "USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    const-string v111, "RECORD_AUDIO_OUTPUT"

    const-string v112, "SCHEDULE_EXACT_ALARM"

    const-string v113, "FINE_LOCATION_SOURCE"

    const-string v114, "COARSE_LOCATION_SOURCE"

    const-string v115, "MANAGE_MEDIA"

    const-string v116, "BLUETOOTH_CONNECT"

    const-string v117, "UWB_RANGING"

    const-string v118, "ACTIVITY_RECOGNITION_SOURCE"

    const-string v119, "BLUETOOTH_ADVERTISE"

    const-string v120, "RECORD_INCOMING_PHONE_AUDIO"

    const-string v121, "NEARBY_WIFI_DEVICES"

    const-string v122, "ESTABLISH_VPN_SERVICE"

    const-string v123, "ESTABLISH_VPN_MANAGER"

    const-string v124, "ACCESS_RESTRICTED_SETTINGS"

    const-string v125, "RECEIVE_SOUNDTRIGGER_AUDIO"

    filled-new-array/range {v5 .. v125}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 2304
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v7, 0x0

    const-string v8, "android.permission.VIBRATE"

    const-string v9, "android.permission.READ_CONTACTS"

    const-string v10, "android.permission.WRITE_CONTACTS"

    const-string v11, "android.permission.READ_CALL_LOG"

    const-string v12, "android.permission.WRITE_CALL_LOG"

    const-string v13, "android.permission.READ_CALENDAR"

    const-string v14, "android.permission.WRITE_CALENDAR"

    const-string v15, "android.permission.ACCESS_WIFI_STATE"

    const-string v16, "android.permission.POST_NOTIFICATIONS"

    const/16 v17, 0x0

    const-string v18, "android.permission.CALL_PHONE"

    const-string v19, "android.permission.READ_SMS"

    const/16 v20, 0x0

    const-string v21, "android.permission.RECEIVE_SMS"

    const-string v22, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const-string v23, "android.permission.RECEIVE_MMS"

    const-string v24, "android.permission.RECEIVE_WAP_PUSH"

    const-string v25, "android.permission.SEND_SMS"

    const-string v26, "android.permission.READ_SMS"

    const/16 v27, 0x0

    const-string v28, "android.permission.WRITE_SETTINGS"

    const-string v29, "android.permission.SYSTEM_ALERT_WINDOW"

    const-string v30, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v31, "android.permission.CAMERA"

    const-string v32, "android.permission.RECORD_AUDIO"

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-string v45, "android.permission.WAKE_LOCK"

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-string v48, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const-string v56, "android.permission.READ_PHONE_STATE"

    const-string v57, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string v58, "android.permission.USE_SIP"

    const-string v59, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v60, "android.permission.USE_FINGERPRINT"

    const-string v61, "android.permission.BODY_SENSORS"

    const-string v62, "android.permission.READ_CELL_BROADCASTS"

    const/16 v63, 0x0

    const-string v64, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v65, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v66, 0x0

    const-string v67, "android.permission.GET_ACCOUNTS"

    const/16 v68, 0x0

    const/16 v69, 0x0

    const-string v70, "android.permission.READ_PHONE_NUMBERS"

    const-string v71, "android.permission.REQUEST_INSTALL_PACKAGES"

    const/16 v72, 0x0

    const-string v73, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    const-string v74, "android.permission.ANSWER_PHONE_CALLS"

    const/16 v75, 0x0

    const-string v76, "android.permission.CHANGE_WIFI_STATE"

    const-string v77, "android.permission.REQUEST_DELETE_PACKAGES"

    const-string v78, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    const-string v79, "android.permission.ACCEPT_HANDOVER"

    const-string v80, "android.permission.MANAGE_IPSEC_TUNNELS"

    const-string v81, "android.permission.FOREGROUND_SERVICE"

    const-string v82, "android.permission.BLUETOOTH_SCAN"

    const-string v83, "android.permission.USE_BIOMETRIC"

    const-string v84, "android.permission.ACTIVITY_RECOGNITION"

    const-string v85, "android.permission.SMS_FINANCIAL_TRANSACTIONS"

    const-string v86, "android.permission.READ_MEDIA_AUDIO"

    const/16 v87, 0x0

    const-string v88, "android.permission.READ_MEDIA_VIDEO"

    const/16 v89, 0x0

    const-string v90, "android.permission.READ_MEDIA_IMAGES"

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const-string v95, "android.permission.ACCESS_MEDIA_LOCATION"

    const/16 v96, 0x0

    const-string v97, "android.permission.MANAGE_EXTERNAL_STORAGE"

    const-string v98, "android.permission.INTERACT_ACROSS_PROFILES"

    const/16 v99, 0x0

    const-string v100, "android.permission.LOADER_USAGE_STATS"

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const-string v108, "android.permission.MANAGE_ONGOING_CALLS"

    const/16 v109, 0x0

    const-string v110, "android.permission.USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    const/16 v111, 0x0

    const-string v112, "android.permission.SCHEDULE_EXACT_ALARM"

    const/16 v113, 0x0

    const/16 v114, 0x0

    const-string v115, "android.permission.MANAGE_MEDIA"

    const-string v116, "android.permission.BLUETOOTH_CONNECT"

    const-string v117, "android.permission.UWB_RANGING"

    const/16 v118, 0x0

    const-string v119, "android.permission.BLUETOOTH_ADVERTISE"

    const/16 v120, 0x0

    const-string v121, "android.permission.NEARBY_WIFI_DEVICES"

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v125, 0x0

    filled-new-array/range {v5 .. v125}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 2433
    const-string/jumbo v5, "no_share_location"

    const-string/jumbo v6, "no_share_location"

    const-string/jumbo v7, "no_share_location"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v11, "no_outgoing_calls"

    const-string/jumbo v12, "no_outgoing_calls"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v15, "no_share_location"

    const/16 v16, 0x0

    const/16 v18, 0x0

    const-string/jumbo v19, "no_sms"

    const-string/jumbo v20, "no_sms"

    const-string/jumbo v21, "no_sms"

    const/16 v22, 0x0

    const-string/jumbo v23, "no_sms"

    const/16 v24, 0x0

    const-string/jumbo v25, "no_sms"

    const-string/jumbo v26, "no_sms"

    const-string/jumbo v27, "no_sms"

    const/16 v28, 0x0

    const-string/jumbo v29, "no_create_windows"

    const/16 v30, 0x0

    const-string/jumbo v31, "no_camera"

    const-string/jumbo v32, "no_record_audio"

    const-string/jumbo v38, "no_adjust_volume"

    const-string/jumbo v39, "no_adjust_volume"

    const-string/jumbo v40, "no_adjust_volume"

    const-string/jumbo v41, "no_adjust_volume"

    const-string/jumbo v42, "no_adjust_volume"

    const-string/jumbo v43, "no_adjust_volume"

    const-string/jumbo v44, "no_adjust_volume"

    const/16 v45, 0x0

    const-string/jumbo v46, "no_share_location"

    const-string/jumbo v47, "no_share_location"

    const/16 v48, 0x0

    const-string/jumbo v49, "no_unmute_microphone"

    const-string/jumbo v50, "no_create_windows"

    const-string/jumbo v53, "no_wallpaper"

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v67, 0x0

    const-string/jumbo v69, "no_adjust_volume"

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const-string/jumbo v85, "no_sms"

    const/16 v86, 0x0

    const/16 v88, 0x0

    const/16 v90, 0x0

    const/16 v95, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v100, 0x0

    const/16 v108, 0x0

    const/16 v110, 0x0

    const/16 v112, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v119, 0x0

    const/16 v121, 0x0

    filled-new-array/range {v5 .. v125}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 2561
    new-array v4, v3, [Landroid/app/AppOpsManager$RestrictionBypass;

    new-instance v5, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v7}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    aput-object v5, v4, v7

    new-instance v5, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v5, v6, v7, v7}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v8, 0x3

    aput-object v0, v4, v8

    const/4 v9, 0x4

    aput-object v0, v4, v9

    const/4 v10, 0x5

    aput-object v0, v4, v10

    const/4 v11, 0x6

    aput-object v0, v4, v11

    aput-object v0, v4, v1

    const/16 v12, 0x8

    aput-object v0, v4, v12

    const/16 v13, 0x9

    aput-object v0, v4, v13

    new-instance v14, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v14, v7, v6, v7}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    const/16 v15, 0xa

    aput-object v14, v4, v15

    const/16 v14, 0xb

    aput-object v0, v4, v14

    const/16 v16, 0xc

    aput-object v0, v4, v16

    const/16 v17, 0xd

    aput-object v0, v4, v17

    const/16 v18, 0xe

    aput-object v0, v4, v18

    const/16 v19, 0xf

    aput-object v0, v4, v19

    const/16 v20, 0x10

    aput-object v0, v4, v20

    const/16 v21, 0x11

    aput-object v0, v4, v21

    const/16 v22, 0x12

    aput-object v0, v4, v22

    const/16 v22, 0x13

    aput-object v0, v4, v22

    const/16 v22, 0x14

    aput-object v0, v4, v22

    const/16 v22, 0x15

    aput-object v0, v4, v22

    const/16 v22, 0x16

    aput-object v0, v4, v22

    const/16 v22, 0x17

    aput-object v0, v4, v22

    new-instance v14, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v14, v7, v6, v7}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    const/16 v23, 0x18

    aput-object v14, v4, v23

    const/16 v14, 0x19

    aput-object v0, v4, v14

    const/16 v14, 0x1a

    aput-object v0, v4, v14

    new-instance v14, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v14, v7, v7, v6}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    const/16 v23, 0x1b

    aput-object v14, v4, v23

    const/16 v14, 0x1c

    aput-object v0, v4, v14

    const/16 v14, 0x1d

    aput-object v0, v4, v14

    const/16 v14, 0x1e

    aput-object v0, v4, v14

    const/16 v14, 0x1f

    aput-object v0, v4, v14

    const/16 v14, 0x20

    aput-object v0, v4, v14

    const/16 v14, 0x21

    aput-object v0, v4, v14

    const/16 v14, 0x22

    aput-object v0, v4, v14

    const/16 v14, 0x23

    aput-object v0, v4, v14

    const/16 v14, 0x24

    aput-object v0, v4, v14

    const/16 v14, 0x25

    aput-object v0, v4, v14

    const/16 v14, 0x26

    aput-object v0, v4, v14

    const/16 v14, 0x27

    aput-object v0, v4, v14

    const/16 v14, 0x28

    aput-object v0, v4, v14

    const/16 v14, 0x29

    aput-object v0, v4, v14

    const/16 v14, 0x2a

    aput-object v0, v4, v14

    const/16 v14, 0x2b

    aput-object v0, v4, v14

    const/16 v14, 0x2c

    aput-object v0, v4, v14

    new-instance v14, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v14, v7, v6, v7}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    const/16 v23, 0x2d

    aput-object v14, v4, v23

    const/16 v14, 0x2e

    aput-object v0, v4, v14

    const/16 v14, 0x2f

    aput-object v0, v4, v14

    const/16 v14, 0x30

    aput-object v0, v4, v14

    const/16 v14, 0x31

    aput-object v0, v4, v14

    const/16 v14, 0x32

    aput-object v0, v4, v14

    const/16 v14, 0x33

    aput-object v0, v4, v14

    const/16 v14, 0x34

    aput-object v0, v4, v14

    const/16 v14, 0x35

    aput-object v0, v4, v14

    const/16 v14, 0x36

    aput-object v0, v4, v14

    const/16 v14, 0x37

    aput-object v0, v4, v14

    const/16 v14, 0x38

    aput-object v0, v4, v14

    aput-object v0, v4, v2

    const/16 v14, 0x3a

    aput-object v0, v4, v14

    const/16 v14, 0x3b

    aput-object v0, v4, v14

    const/16 v14, 0x3c

    aput-object v0, v4, v14

    const/16 v14, 0x3d

    aput-object v0, v4, v14

    const/16 v14, 0x3e

    aput-object v0, v4, v14

    const/16 v14, 0x3f

    aput-object v0, v4, v14

    const/16 v14, 0x40

    aput-object v0, v4, v14

    const/16 v14, 0x41

    aput-object v0, v4, v14

    const/16 v14, 0x42

    aput-object v0, v4, v14

    const/16 v14, 0x43

    aput-object v0, v4, v14

    const/16 v14, 0x44

    aput-object v0, v4, v14

    const/16 v14, 0x45

    aput-object v0, v4, v14

    const/16 v14, 0x46

    aput-object v0, v4, v14

    const/16 v14, 0x47

    aput-object v0, v4, v14

    const/16 v14, 0x48

    aput-object v0, v4, v14

    const/16 v14, 0x49

    aput-object v0, v4, v14

    const/16 v14, 0x4a

    aput-object v0, v4, v14

    const/16 v14, 0x4b

    aput-object v0, v4, v14

    const/16 v14, 0x4c

    aput-object v0, v4, v14

    new-instance v14, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v14, v7, v6, v7}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    const/16 v23, 0x4d

    aput-object v14, v4, v23

    const/16 v14, 0x4e

    aput-object v0, v4, v14

    const/16 v14, 0x4f

    aput-object v0, v4, v14

    const/16 v14, 0x50

    aput-object v0, v4, v14

    const/16 v14, 0x51

    aput-object v0, v4, v14

    const/16 v14, 0x52

    aput-object v0, v4, v14

    const/16 v14, 0x53

    aput-object v0, v4, v14

    const/16 v14, 0x54

    aput-object v0, v4, v14

    const/16 v14, 0x55

    aput-object v0, v4, v14

    const/16 v14, 0x56

    aput-object v0, v4, v14

    const/16 v14, 0x57

    aput-object v0, v4, v14

    const/16 v14, 0x58

    aput-object v0, v4, v14

    const/16 v14, 0x59

    aput-object v0, v4, v14

    const/16 v14, 0x5a

    aput-object v0, v4, v14

    const/16 v14, 0x5b

    aput-object v0, v4, v14

    const/16 v14, 0x5c

    aput-object v0, v4, v14

    const/16 v14, 0x5d

    aput-object v0, v4, v14

    const/16 v14, 0x5e

    aput-object v0, v4, v14

    const/16 v14, 0x5f

    aput-object v0, v4, v14

    const/16 v14, 0x60

    aput-object v0, v4, v14

    const/16 v14, 0x61

    aput-object v0, v4, v14

    const/16 v14, 0x62

    aput-object v0, v4, v14

    const/16 v14, 0x63

    aput-object v0, v4, v14

    const/16 v14, 0x64

    aput-object v0, v4, v14

    const/16 v14, 0x65

    aput-object v0, v4, v14

    const/16 v14, 0x66

    aput-object v0, v4, v14

    const/16 v14, 0x67

    aput-object v0, v4, v14

    const/16 v14, 0x68

    aput-object v0, v4, v14

    const/16 v14, 0x69

    aput-object v0, v4, v14

    const/16 v14, 0x6a

    aput-object v0, v4, v14

    const/16 v14, 0x6b

    aput-object v0, v4, v14

    const/16 v14, 0x6c

    aput-object v0, v4, v14

    const/16 v14, 0x6d

    aput-object v0, v4, v14

    const/16 v14, 0x6e

    aput-object v0, v4, v14

    const/16 v14, 0x6f

    aput-object v0, v4, v14

    const/16 v14, 0x70

    aput-object v0, v4, v14

    const/16 v14, 0x71

    aput-object v0, v4, v14

    const/16 v14, 0x72

    aput-object v0, v4, v14

    const/16 v14, 0x73

    aput-object v0, v4, v14

    const/16 v14, 0x74

    aput-object v0, v4, v14

    const/16 v14, 0x75

    aput-object v0, v4, v14

    const/16 v14, 0x76

    aput-object v0, v4, v14

    const/16 v14, 0x77

    aput-object v0, v4, v14

    const/16 v14, 0x78

    aput-object v0, v4, v14

    sput-object v4, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Landroid/app/AppOpsManager$RestrictionBypass;

    .line 2688
    new-array v0, v3, [I

    aput v7, v0, v7

    aput v7, v0, v6

    aput v7, v0, v5

    aput v7, v0, v8

    aput v7, v0, v9

    aput v7, v0, v10

    aput v7, v0, v11

    aput v7, v0, v1

    aput v7, v0, v12

    aput v7, v0, v13

    aput v7, v0, v15

    const/16 v1, 0xb

    aput v7, v0, v1

    aput v7, v0, v16

    aput v7, v0, v17

    aput v7, v0, v18

    aput v6, v0, v19

    aput v7, v0, v20

    aput v7, v0, v21

    const/16 v1, 0x12

    aput v7, v0, v1

    const/16 v1, 0x13

    aput v7, v0, v1

    const/16 v1, 0x14

    aput v7, v0, v1

    const/16 v1, 0x15

    aput v7, v0, v1

    const/16 v1, 0x16

    aput v7, v0, v1

    const/16 v1, 0x17

    aput v8, v0, v1

    .line 2713
    invoke-static {}, Landroid/app/AppOpsManager;->getSystemAlertWindowDefault()I

    move-result v1

    const/16 v4, 0x18

    aput v1, v0, v4

    const/16 v1, 0x19

    aput v7, v0, v1

    const/16 v1, 0x1a

    aput v7, v0, v1

    const/16 v1, 0x1b

    aput v7, v0, v1

    const/16 v1, 0x1c

    aput v7, v0, v1

    const/16 v1, 0x1d

    aput v7, v0, v1

    const/16 v1, 0x1e

    aput v7, v0, v1

    const/16 v1, 0x1f

    aput v7, v0, v1

    const/16 v1, 0x20

    aput v7, v0, v1

    const/16 v1, 0x21

    aput v7, v0, v1

    const/16 v1, 0x22

    aput v7, v0, v1

    const/16 v1, 0x23

    aput v7, v0, v1

    const/16 v1, 0x24

    aput v7, v0, v1

    const/16 v1, 0x25

    aput v7, v0, v1

    const/16 v1, 0x26

    aput v7, v0, v1

    const/16 v1, 0x27

    aput v7, v0, v1

    const/16 v1, 0x28

    aput v7, v0, v1

    const/16 v1, 0x29

    aput v7, v0, v1

    const/16 v1, 0x2a

    aput v7, v0, v1

    const/16 v1, 0x2b

    aput v8, v0, v1

    const/16 v1, 0x2c

    aput v7, v0, v1

    const/16 v1, 0x2d

    aput v7, v0, v1

    const/16 v1, 0x2e

    aput v6, v0, v1

    const/16 v1, 0x2f

    aput v6, v0, v1

    const/16 v1, 0x30

    aput v7, v0, v1

    const/16 v1, 0x31

    aput v7, v0, v1

    const/16 v1, 0x32

    aput v7, v0, v1

    const/16 v1, 0x33

    aput v7, v0, v1

    const/16 v1, 0x34

    aput v7, v0, v1

    const/16 v1, 0x35

    aput v7, v0, v1

    const/16 v1, 0x36

    aput v7, v0, v1

    const/16 v1, 0x37

    aput v7, v0, v1

    const/16 v1, 0x38

    aput v7, v0, v1

    aput v7, v0, v2

    const/16 v1, 0x3a

    aput v5, v0, v1

    const/16 v1, 0x3b

    aput v7, v0, v1

    const/16 v1, 0x3c

    aput v7, v0, v1

    const/16 v1, 0x3d

    aput v7, v0, v1

    const/16 v1, 0x3e

    aput v7, v0, v1

    const/16 v1, 0x3f

    aput v7, v0, v1

    const/16 v1, 0x40

    aput v7, v0, v1

    const/16 v1, 0x41

    aput v7, v0, v1

    const/16 v1, 0x42

    aput v8, v0, v1

    const/16 v1, 0x43

    aput v7, v0, v1

    const/16 v1, 0x44

    aput v8, v0, v1

    const/16 v1, 0x45

    aput v7, v0, v1

    const/16 v1, 0x46

    aput v7, v0, v1

    const/16 v1, 0x47

    aput v7, v0, v1

    const/16 v1, 0x48

    aput v7, v0, v1

    const/16 v1, 0x49

    aput v7, v0, v1

    const/16 v1, 0x4a

    aput v7, v0, v1

    const/16 v1, 0x4b

    aput v5, v0, v1

    const/16 v1, 0x4c

    aput v7, v0, v1

    const/16 v1, 0x4d

    aput v7, v0, v1

    const/16 v1, 0x4e

    aput v7, v0, v1

    const/16 v1, 0x4f

    aput v7, v0, v1

    const/16 v1, 0x50

    aput v8, v0, v1

    const/16 v1, 0x51

    aput v7, v0, v1

    const/16 v1, 0x52

    aput v5, v0, v1

    const/16 v1, 0x53

    aput v7, v0, v1

    const/16 v1, 0x54

    aput v5, v0, v1

    const/16 v1, 0x55

    aput v7, v0, v1

    const/16 v1, 0x56

    aput v5, v0, v1

    const/16 v1, 0x57

    aput v8, v0, v1

    const/16 v1, 0x58

    aput v7, v0, v1

    const/16 v1, 0x59

    aput v5, v0, v1

    const/16 v1, 0x5a

    aput v7, v0, v1

    const/16 v1, 0x5b

    aput v8, v0, v1

    const/16 v1, 0x5c

    aput v8, v0, v1

    const/16 v1, 0x5d

    aput v8, v0, v1

    const/16 v1, 0x5e

    aput v6, v0, v1

    const/16 v1, 0x5f

    aput v8, v0, v1

    const/16 v1, 0x60

    aput v6, v0, v1

    const/16 v1, 0x61

    aput v8, v0, v1

    const/16 v1, 0x62

    aput v7, v0, v1

    const/16 v1, 0x63

    aput v5, v0, v1

    const/16 v1, 0x64

    aput v7, v0, v1

    const/16 v1, 0x65

    aput v7, v0, v1

    const/16 v1, 0x66

    aput v7, v0, v1

    const/16 v1, 0x67

    aput v8, v0, v1

    const/16 v1, 0x68

    aput v8, v0, v1

    const/16 v1, 0x69

    aput v8, v0, v1

    const/16 v1, 0x6a

    aput v7, v0, v1

    const/16 v1, 0x6b

    aput v8, v0, v1

    const/16 v1, 0x6c

    aput v7, v0, v1

    const/16 v1, 0x6d

    aput v7, v0, v1

    const/16 v1, 0x6e

    aput v8, v0, v1

    const/16 v1, 0x6f

    aput v7, v0, v1

    const/16 v1, 0x70

    aput v7, v0, v1

    const/16 v1, 0x71

    aput v7, v0, v1

    const/16 v1, 0x72

    aput v7, v0, v1

    const/16 v1, 0x73

    aput v7, v0, v1

    const/16 v1, 0x74

    aput v7, v0, v1

    const/16 v1, 0x75

    aput v7, v0, v1

    const/16 v1, 0x76

    aput v7, v0, v1

    const/16 v1, 0x77

    aput v7, v0, v1

    const/16 v1, 0x78

    aput v7, v0, v1

    sput-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 2819
    new-array v0, v3, [Z

    fill-array-data v0, :array_3

    sput-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 2947
    new-array v0, v3, [Z

    fill-array-data v0, :array_4

    sput-object v0, Landroid/app/AppOpsManager;->sOpRestrictRead:[Z

    .line 3074
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 3079
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 3088
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    .line 3097
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    .line 3101
    new-array v0, v3, [B

    sput-object v0, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    .line 3104
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v0, v0

    const-string v1, " should be "

    if-ne v0, v3, :cond_b

    .line 3108
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_a

    .line 3112
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_9

    .line 3116
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_8

    .line 3120
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v0, v0

    if-ne v0, v3, :cond_7

    .line 3124
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v0, v0

    if-ne v0, v3, :cond_6

    .line 3128
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_5

    .line 3132
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Landroid/app/AppOpsManager$RestrictionBypass;

    array-length v0, v0

    if-ne v0, v3, :cond_4

    .line 3136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 3137
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3138
    sget-object v2, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3141
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Landroid/app/AppOpsManager;->RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

    array-length v1, v0

    move v2, v7

    :goto_1
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    .line 3142
    .local v3, "op":I
    sget-object v4, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 3143
    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3141
    .end local v3    # "op":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3155
    :cond_3
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    sput-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    return-void

    .line 3133
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpAllowSYstemRestrictionsBypass length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3129
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpRestrictions length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3125
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpDisableReset length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3121
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpDefaultMode length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3117
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpPerms length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3113
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpNames length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3109
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpToString length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3105
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpToSwitch length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x5
        0x3e
        0x8
        0x9
        0x14
        0x10
        0xe
        0x13
        0x12
        0x39
        0x3b
        0x3c
        0x5a
        0x0
        0x1
        0x33
        0x41
        0xd
        0x6
        0x7
        0x34
        0x35
        0x36
        0x45
        0x4a
        0x1b
        0x1a
        0x38
        0x4f
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x4d
        0x6f
        0x72
        0x70
        0x74
        0xb
        0x19
        0x18
        0x17
        0x42
        0x4c
        0x50
        0x4b
        0x44
        0x5c
        0x5d
        0x5f
        0x67
        0x69
        0x6b
        0x6e
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x12
        0x13
        0x14
        0xe
        0xf
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x0
        0x0
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x1
        0x0
        0x6e
        0x6f
        0x70
        0x4f
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .line 7643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 229
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 233
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 237
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 7644
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 7645
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 7647
    if-eqz p1, :cond_0

    .line 7648
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 7650
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    .line 7651
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7650
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 7652
    const-string/jumbo v1, "privacy"

    .line 7653
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;-><init>()V

    .line 7652
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7658
    return-void

    .line 7660
    :catch_0
    move-exception v1

    nop

    .line 7665
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 7666
    return-void
.end method

.method private greylist-max-o buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 8439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist collectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 5
    .param p0, "array"    # Landroid/util/LongSparseLongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseLongArray;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 10442
    .local p1, "result":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    if-eqz p0, :cond_1

    .line 10443
    if-nez p1, :cond_0

    .line 10444
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    move-object p1, v0

    .line 10446
    :cond_0
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 10447
    .local v0, "accessSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10448
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 10447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10451
    .end local v0    # "accessSize":I
    .end local v1    # "i":I
    :cond_1
    return-object p1
.end method

.method private blacklist collectNoteOpCallsForValidation(I)V
    .locals 0
    .param p1, "op"    # I

    .line 10560
    return-void
.end method

.method private blacklist collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V
    .locals 2
    .param p1, "syncOp"    # Landroid/app/SyncNotedAppOp;

    .line 9661
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9662
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v1, :cond_0

    .line 9663
    invoke-virtual {v1, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onSelfNoted(Landroid/app/SyncNotedAppOp;)V

    .line 9665
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9666
    sget-object v0, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-virtual {v0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onSelfNoted(Landroid/app/SyncNotedAppOp;)V

    .line 9667
    return-void

    .line 9665
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V
    .locals 9
    .param p0, "syncOp"    # Landroid/app/SyncNotedAppOp;

    .line 9683
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9684
    .local v0, "op":I
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 9685
    .local v2, "appOpsNoted":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[J>;"
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 9686
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v3}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v2, v4

    .line 9687
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 9690
    :cond_0
    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 9691
    .local v1, "appOpsNotedForAttribution":[J
    if-nez v1, :cond_1

    .line 9692
    const/4 v4, 0x2

    new-array v1, v4, [J

    .line 9693
    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9696
    :cond_1
    const-wide/16 v4, 0x1

    const/16 v6, 0x40

    if-ge v0, v6, :cond_2

    .line 9697
    const/4 v3, 0x0

    aget-wide v6, v1, v3

    shl-long/2addr v4, v0

    or-long/2addr v4, v6

    aput-wide v4, v1, v3

    goto :goto_0

    .line 9699
    :cond_2
    aget-wide v6, v1, v3

    add-int/lit8 v8, v0, -0x40

    shl-long/2addr v4, v8

    or-long/2addr v4, v6

    aput-wide v4, v1, v3

    .line 9701
    :goto_0
    return-void
.end method

.method private static blacklist deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 10576
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 10577
    .local v0, "n":I
    const/4 v1, 0x0

    .line 10578
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10579
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v6

    .line 10580
    .local v6, "currentAccessTime":J
    add-int/lit8 v3, v2, 0x1

    .line 10581
    :goto_1
    if-ge v3, v0, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-nez v4, :cond_0

    .line 10582
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10584
    :cond_0
    invoke-interface {p0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v4

    invoke-interface {p0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10578
    .end local v6    # "currentAccessTime":J
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 10586
    .end local v2    # "j":I
    .end local v3    # "k":I
    :cond_1
    :goto_2
    if-ge v1, v0, :cond_2

    .line 10587
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10586
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10589
    :cond_2
    return-object p0
.end method

.method private static blacklist equalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z
    .locals 8
    .param p0, "a"    # Landroid/util/LongSparseLongArray;
    .param p1, "b"    # Landroid/util/LongSparseLongArray;

    .line 10371
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 10372
    return v0

    .line 10375
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    .line 10379
    :cond_1
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 10380
    return v1

    .line 10383
    :cond_2
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v2

    .line 10384
    .local v2, "numEntries":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 10385
    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    goto :goto_1

    .line 10384
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10386
    :cond_4
    :goto_1
    return v1

    .line 10390
    .end local v3    # "i":I
    :cond_5
    return v0

    .line 10376
    .end local v2    # "numEntries":I
    :cond_6
    :goto_2
    return v1
.end method

.method public static blacklist extractFlagsFromKey(J)I
    .locals 2
    .param p0, "key"    # J

    .line 851
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist extractUidStateFromKey(J)I
    .locals 2
    .param p0, "key"    # J

    .line 846
    const/16 v0, 0x1f

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist finishNotedAppOpsCollection()V
    .locals 1

    .line 9650
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 9651
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 9652
    return-void
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 857
    .local v0, "flagsBuilder":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz p0, :cond_1

    .line 858
    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 859
    .local v1, "flag":I
    not-int v2, v1

    and-int/2addr p0, v2

    .line 860
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 861
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 863
    :cond_0
    invoke-static {v1}, Landroid/app/AppOpsManager;->getFlagName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .end local v1    # "flag":I
    goto :goto_0

    .line 865
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getClientId()Landroid/os/IBinder;
    .locals 2

    .line 9071
    const-class v0, Landroid/app/AppOpsManager;

    monitor-enter v0

    .line 9072
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 9073
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    .line 9076
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    .line 9077
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getComponentPackageNameFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "from"    # Ljava/lang/String;

    .line 8938
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8939
    .local v0, "componentName":Landroid/content/ComponentName;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    return-object v1
.end method

.method public static final blacklist getFlagName(I)Ljava/lang/String;
    .locals 1
    .param p0, "flag"    # I

    .line 696
    sparse-switch p0, :sswitch_data_0

    .line 708
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 706
    :sswitch_0
    const-string/jumbo v0, "upd"

    return-object v0

    .line 704
    :sswitch_1
    const-string/jumbo v0, "tpd"

    return-object v0

    .line 702
    :sswitch_2
    const-string/jumbo v0, "up"

    return-object v0

    .line 700
    :sswitch_3
    const-string/jumbo v0, "tp"

    return-object v0

    .line 698
    :sswitch_4
    const-string/jumbo v0, "s"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist getFormattedStackTrace()Ljava/lang/String;
    .locals 8

    .line 10082
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 10084
    .local v0, "trace":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 10085
    .local v1, "firstInteresting":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 10086
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 10087
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 10088
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$Stub$Proxy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 10089
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/database/DatabaseUtils;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 10090
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.content.ContentProviderProxy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 10091
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/content/ContentResolver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10092
    :cond_0
    move v1, v2

    .line 10085
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10098
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 10099
    .local v2, "lastInteresting":I
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 10100
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/HandlerThread;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 10101
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Handler;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 10102
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Looper;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 10103
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Binder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 10104
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/internal/os/RuntimeInit;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 10105
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/internal/os/ZygoteInit;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 10106
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/app/ActivityThread;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 10107
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 10108
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.server.SystemServer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10109
    :cond_2
    move v2, v3

    .line 10099
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 10115
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10116
    .local v3, "sb":Ljava/lang/StringBuilder;
    move v4, v1

    .local v4, "i":I
    :goto_2
    if-gt v4, v2, :cond_7

    .line 10117
    sget-object v5, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    if-nez v5, :cond_4

    .line 10119
    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "privacy"

    const-string/jumbo v7, "privacy_attribution_tag_full_log_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10124
    goto :goto_3

    .line 10121
    :catch_0
    move-exception v6

    .line 10123
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 10127
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-eq v4, v1, :cond_5

    .line 10128
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10130
    :cond_5
    sget-object v5, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x258

    if-le v5, v6, :cond_6

    .line 10131
    goto :goto_4

    .line 10133
    :cond_6
    aget-object v5, v0, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10116
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 10136
    .end local v4    # "i":I
    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist getLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .locals 17
    .param p1, "beginUidState"    # I
    .param p2, "endUidState"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;III)",
            "Landroid/app/AppOpsManager$NoteOpEvent;"
        }
    .end annotation

    .line 10328
    .local p0, "events":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    move-object/from16 v0, p0

    if-nez v0, :cond_0

    .line 10329
    const/4 v1, 0x0

    return-object v1

    .line 10332
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    move/from16 v1, p3

    .line 10333
    .end local p3    # "flags":I
    .local v1, "flags":I
    .local v2, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :goto_0
    if-eqz v1, :cond_6

    .line 10334
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 10335
    .local v3, "flag":I
    not-int v4, v3

    and-int/2addr v1, v4

    .line 10336
    sget-object v4, Landroid/app/AppOpsManager;->UID_STATES:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    aget v7, v4, v6

    .line 10337
    .local v7, "uidState":I
    move/from16 v8, p1

    if-lt v7, v8, :cond_3

    move/from16 v9, p2

    if-le v7, v9, :cond_1

    .line 10338
    goto :goto_2

    .line 10340
    :cond_1
    invoke-static {v7, v3}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v10

    .line 10342
    .local v10, "key":J
    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 10343
    .local v12, "event":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v2, :cond_2

    if-eqz v12, :cond_4

    .line 10344
    invoke-virtual {v12}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v13

    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_4

    .line 10345
    :cond_2
    move-object v2, v12

    goto :goto_2

    .line 10337
    .end local v10    # "key":J
    .end local v12    # "event":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_3
    move/from16 v9, p2

    .line 10336
    .end local v7    # "uidState":I
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move/from16 v8, p1

    move/from16 v9, p2

    .line 10348
    .end local v3    # "flag":I
    goto :goto_0

    .line 10350
    :cond_6
    move/from16 v8, p1

    move/from16 v9, p2

    return-object v2
.end method

.method private blacklist getNotedOpCollectionMode(ILjava/lang/String;I)I
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "op"    # I

    .line 9722
    if-nez p2, :cond_0

    .line 9723
    const-string p2, "android"

    .line 9727
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aget-byte v1, v0, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_2

    .line 9730
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p3}, Lcom/android/internal/app/IAppOpsService;->shouldCollectNotes(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9733
    .local v1, "shouldCollectNotes":Z
    nop

    .line 9735
    if-eqz v1, :cond_1

    .line 9736
    aput-byte v4, v0, p3

    goto :goto_0

    .line 9738
    :cond_1
    aput-byte v2, v0, p3

    goto :goto_0

    .line 9731
    .end local v1    # "shouldCollectNotes":Z
    :catch_0
    move-exception v0

    .line 9732
    .local v0, "e":Landroid/os/RemoteException;
    return v3

    .line 9742
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    aget-byte v0, v0, p3

    if-eq v0, v4, :cond_3

    .line 9743
    return v3

    .line 9746
    :cond_3
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9747
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 9748
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9749
    monitor-exit v0

    return v2

    .line 9751
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9753
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 9755
    .local v0, "binderUid":Ljava/lang/Integer;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_5

    .line 9756
    return v4

    .line 9758
    :cond_5
    const/4 v1, 0x3

    return v1

    .line 9751
    .end local v0    # "binderUid":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static blacklist getNumOps()I
    .locals 1

    .line 10312
    const/16 v0, 0x79

    return v0
.end method

.method public static whitelist getOpStrs()[Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10302
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist getService()Lcom/android/internal/app/IAppOpsService;
    .locals 2

    .line 9082
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9083
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    if-nez v1, :cond_0

    .line 9084
    const-string v1, "appops"

    .line 9085
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 9084
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    .line 9087
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    monitor-exit v0

    return-object v1

    .line 9088
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getSettedEvent(Landroid/util/LongSparseArray;II)Landroid/app/AppOpsManager$NoteOpEvent;
    .locals 5
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;II)",
            "Landroid/app/AppOpsManager$NoteOpEvent;"
        }
    .end annotation

    .line 10355
    .local p0, "events":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    if-nez p0, :cond_0

    .line 10356
    const/4 v0, 0x0

    return-object v0

    .line 10358
    :cond_0
    const/4 v0, 0x0

    .line 10359
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :goto_0
    if-eqz p2, :cond_1

    .line 10360
    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 10361
    .local v1, "flag":I
    not-int v2, v1

    and-int/2addr p2, v2

    .line 10362
    invoke-static {p1, v1}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v2

    .line 10363
    .local v2, "key":J
    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 10364
    .end local v1    # "flag":I
    .end local v2    # "key":J
    goto :goto_0

    .line 10365
    :cond_1
    return-object v0
.end method

.method private static blacklist getSystemAlertWindowDefault()I
    .locals 5

    .line 10518
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 10519
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 10520
    return v1

    .line 10524
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 10526
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 10527
    const-string v4, "android.software.leanback"

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10528
    const/4 v1, 0x1

    return v1

    .line 10531
    :cond_1
    return v1
.end method

.method public static greylist-max-q getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 1
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9066
    invoke-static {}, Landroid/app/AppOpsManager;->getClientId()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUidStateName(I)Ljava/lang/String;
    .locals 1
    .param p0, "uidState"    # I

    .line 585
    sparse-switch p0, :sswitch_data_0

    .line 601
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 599
    :sswitch_0
    const-string v0, "cch"

    return-object v0

    .line 597
    :sswitch_1
    const-string v0, "bg"

    return-object v0

    .line 595
    :sswitch_2
    const-string v0, "fg"

    return-object v0

    .line 593
    :sswitch_3
    const-string v0, "fgsvc"

    return-object v0

    .line 591
    :sswitch_4
    const-string v0, "fgsvcl"

    return-object v0

    .line 589
    :sswitch_5
    const-string/jumbo v0, "top"

    return-object v0

    .line 587
    :sswitch_6
    const-string/jumbo v0, "pers"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_5
        0x12c -> :sswitch_4
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_1
        0x2bc -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist historicalModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .line 10501
    packed-switch p0, :pswitch_data_0

    .line 10512
    const-string v0, "UNKNOWN"

    return-object v0

    .line 10509
    :pswitch_0
    const-string v0, "HISTORICAL_MODE_ENABLED_PASSIVE"

    return-object v0

    .line 10506
    :pswitch_1
    const-string v0, "HISTORICAL_MODE_ENABLED_ACTIVE"

    return-object v0

    .line 10503
    :pswitch_2
    const-string v0, "HISTORICAL_MODE_DISABLED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist isCollectingStackTraces()Z
    .locals 4

    .line 9949
    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getSampledOpCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getAcceptableLeftDistance()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    .line 9950
    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getExpirationTimeSinceBootMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 9951
    const/4 v0, 0x0

    return v0

    .line 9953
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isListeningForOpNoted()Z
    .locals 1

    .line 9938
    sget-object v0, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/AppOpsManager;->isCollectingStackTraces()Z

    move-result v0

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

.method private static blacklist isPackagePreInstalled(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 8944
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8945
    .local v1, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 8946
    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 8947
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v0, v4

    :cond_0
    return v0

    .line 8948
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 8949
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public static blacklist keyToString(J)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # J

    .line 834
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v0

    .line 835
    .local v0, "uidState":I
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v1

    .line 836
    .local v1, "flags":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic blacklist lambda$getHistoricalOps$1(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 0
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 7810
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getHistoricalOps$2(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 7807
    const-string v0, "historical_ops"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 7808
    .local v0, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7810
    .local v1, "identity":J
    :try_start_0
    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, p1, v0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7812
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7813
    nop

    .line 7814
    return-void

    .line 7812
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7813
    throw v3
.end method

.method static synthetic blacklist lambda$getHistoricalOpsFromDiskRaw$3(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 0
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 7850
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getHistoricalOpsFromDiskRaw$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 7847
    const-string v0, "historical_ops"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 7848
    .local v0, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7850
    .local v1, "identity":J
    :try_start_0
    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7852
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7853
    nop

    .line 7854
    return-void

    .line 7852
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7853
    throw v3
.end method

.method static synthetic blacklist lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p0, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 7654
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "privacy_attribution_tag_full_log_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7655
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 7657
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$setOnOpNotedCallback$5(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V
    .locals 0
    .param p0, "onOpNotedCallback"    # Landroid/app/AppOpsManager$OnOpNotedCallback;
    .param p1, "asyncNotedAppOp"    # Landroid/app/AsyncNotedAppOp;

    .line 9889
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method

.method static synthetic blacklist lambda$setOnOpNotedCallback$6(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V
    .locals 0
    .param p0, "onOpNotedCallback"    # Landroid/app/AppOpsManager$OnOpNotedCallback;
    .param p1, "syncNotedAppOp"    # Landroid/app/AsyncNotedAppOp;

    .line 9898
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method

.method public static blacklist leftCircularDistance(III)I
    .locals 1
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "size"    # I

    .line 10539
    add-int v0, p1, p2

    sub-int/2addr v0, p0

    rem-int/2addr v0, p2

    return v0
.end method

.method private static blacklist listForFlagsInStates(Ljava/util/List;III)Ljava/util/List;
    .locals 8
    .param p1, "beginUidState"    # I
    .param p2, "endUidState"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;III)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 7475
    .local p0, "accesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7476
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    if-nez p0, :cond_0

    .line 7477
    return-object v0

    .line 7479
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 7480
    .local v1, "nAccesses":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7481
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 7482
    .local v3, "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v3, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 7483
    goto :goto_1

    .line 7485
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7480
    .end local v3    # "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7487
    .end local v2    # "i":I
    :cond_2
    invoke-static {v0}, Landroid/app/AppOpsManager;->deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist makeKey(II)J
    .locals 4
    .param p0, "uidState"    # I
    .param p1, "flags"    # I

    .line 841
    int-to-long v0, p0

    const/16 v2, 0x1f

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)",
            "Landroid/app/AppOpsManager$AttributedOpEntry;"
        }
    .end annotation

    .line 10593
    .local p0, "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 10594
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    return-object v1

    .line 10596
    :cond_0
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 10597
    .local v1, "accessEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 10598
    .local v3, "rejectEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    .line 10599
    .local v4, "opCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_7

    .line 10600
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 10601
    .local v6, "a":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v7

    .line 10602
    .local v7, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    .line 10603
    .local v8, "keyCount":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    if-ge v9, v8, :cond_6

    .line 10604
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 10606
    .local v10, "key":J
    invoke-static {v10, v11}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v12

    .line 10607
    .local v12, "uidState":I
    invoke-static {v10, v11}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v13

    .line 10609
    .local v13, "flags":I
    invoke-static {v6, v12, v12, v13}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastAccessEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v14

    .line 10610
    .local v14, "access":Landroid/app/AppOpsManager$NoteOpEvent;
    invoke-static {v6, v12, v12, v13}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastRejectEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v15

    .line 10612
    .local v15, "reject":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v14, :cond_4

    .line 10613
    invoke-virtual {v1, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 10614
    .local v2, "existingAccess":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v16, v17, v19

    if-nez v16, :cond_1

    move/from16 v16, v4

    goto :goto_2

    .line 10616
    :cond_1
    invoke-static {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v16

    if-nez v16, :cond_2

    invoke-static {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 10617
    move/from16 v16, v4

    .end local v4    # "opCount":I
    .local v16, "opCount":I
    invoke-static {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fputmProxy(Landroid/app/AppOpsManager$NoteOpEvent;Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    goto :goto_3

    .line 10616
    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_2
    move/from16 v16, v4

    .end local v4    # "opCount":I
    .restart local v16    # "opCount":I
    goto :goto_3

    .line 10614
    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_3
    move/from16 v16, v4

    .line 10615
    .end local v4    # "opCount":I
    .restart local v16    # "opCount":I
    :goto_2
    invoke-virtual {v1, v10, v11, v14}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    goto :goto_3

    .line 10612
    .end local v2    # "existingAccess":Landroid/app/AppOpsManager$NoteOpEvent;
    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_4
    move/from16 v16, v4

    .line 10620
    .end local v4    # "opCount":I
    .restart local v16    # "opCount":I
    :goto_3
    if-eqz v15, :cond_5

    .line 10621
    invoke-virtual {v3, v10, v11, v15}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 10603
    .end local v10    # "key":J
    .end local v12    # "uidState":I
    .end local v13    # "flags":I
    .end local v14    # "access":Landroid/app/AppOpsManager$NoteOpEvent;
    .end local v15    # "reject":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    const/4 v2, 0x0

    goto :goto_1

    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_6
    move/from16 v16, v4

    .line 10599
    .end local v4    # "opCount":I
    .end local v6    # "a":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v7    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v8    # "keyCount":I
    .end local v9    # "k":I
    .restart local v16    # "opCount":I
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    goto :goto_0

    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_7
    move/from16 v16, v4

    .line 10625
    .end local v4    # "opCount":I
    .end local v5    # "i":I
    .restart local v16    # "opCount":I
    new-instance v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-static {v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$fgetmOp(Landroid/app/AppOpsManager$AttributedOpEntry;)I

    move-result v5

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v2
.end method

.method public static greylist-max-o modeToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 3287
    if-ltz p0, :cond_0

    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 3288
    aget-object v0, v0, p0

    return-object v0

    .line 3290
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;
    .locals 1
    .param p0, "op"    # I

    .line 3257
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Landroid/app/AppOpsManager$RestrictionBypass;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static greylist-max-o opAllowsReset(I)Z
    .locals 1
    .param p0, "op"    # I

    .line 3306
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v0, v0, p0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist opRestrictsRead(I)Z
    .locals 1
    .param p0, "op"    # I

    .line 3298
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictRead:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static greylist-max-o opToDefaultMode(I)I
    .locals 1
    .param p0, "op"    # I

    .line 3265
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static whitelist opToDefaultMode(Ljava/lang/String;)I
    .locals 1
    .param p0, "appOp"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3279
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-r opToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "op"    # I

    .line 3182
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "NONE"

    return-object v0

    .line 3183
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static greylist-max-r opToPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .line 3214
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static whitelist opToPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3227
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist opToPublicName(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .line 3192
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static greylist-max-o opToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .line 3235
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static greylist opToSwitch(I)I
    .locals 1
    .param p0, "op"    # I

    .line 3173
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method

.method public static blacklist parseHistoricalMode(Ljava/lang/String;)I
    .locals 3
    .param p0, "mode"    # Ljava/lang/String;

    .line 10486
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "HISTORICAL_MODE_ENABLED_PASSIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "HISTORICAL_MODE_ENABLED_ACTIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 10494
    return v1

    .line 10491
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 10488
    :pswitch_1
    return v2

    :sswitch_data_0
    .sparse-switch
        0x93ff10b -> :sswitch_1
        0x34c83da2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist pauseNotedAppOpsCollection()Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;
    .locals 4

    .line 9608
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 9609
    .local v1, "previousUid":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 9610
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    .line 9611
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 9613
    .local v3, "previousCollectedNotedAppOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[J>;"
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 9614
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 9616
    new-instance v0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2, v3}, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;-><init>(ILandroid/util/ArrayMap;)V

    return-object v0

    .line 9619
    .end local v3    # "previousCollectedNotedAppOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[J>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .line 8074
    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8075
    .local v0, "opCode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 8076
    const/4 v1, 0x0

    return-object v1

    .line 8078
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static greylist permissionToOpCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 3247
    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3248
    .local v0, "boxedOpCode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public static blacklist prefixParcelWithAppOpsIfNeeded(Landroid/os/Parcel;)V
    .locals 5
    .param p0, "p"    # Landroid/os/Parcel;

    .line 9774
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 9775
    .local v0, "notedAppOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[J>;"
    if-nez v0, :cond_0

    .line 9776
    return-void

    .line 9779
    :cond_0
    const/16 v1, -0x7f

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9781
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 9782
    .local v1, "numAttributionWithNotesAppOps":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9784
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9785
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9786
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 9787
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 9784
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9789
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public static blacklist readAndLogNotedAppops(Landroid/os/Parcel;)V
    .locals 18
    .param p0, "p"    # Landroid/os/Parcel;

    .line 9802
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 9804
    .local v1, "numAttributionsWithNotedAppOps":I
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 9805
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 9806
    .local v10, "attributionTag":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v11, v0, [J

    .line 9807
    .local v11, "rawNotedAppOps":[J
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v0, 0x0

    aput-wide v3, v11, v0

    .line 9808
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v11, v5

    .line 9810
    aget-wide v3, v11, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-nez v3, :cond_0

    aget-wide v3, v11, v5

    cmp-long v3, v3, v6

    if-eqz v3, :cond_4

    .line 9811
    :cond_0
    invoke-static {v11}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v12

    .line 9813
    .local v12, "notedAppOps":Ljava/util/BitSet;
    sget-object v13, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v13

    .line 9814
    :try_start_0
    invoke-virtual {v12, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    move v14, v3

    .local v14, "code":I
    :goto_1
    const/4 v3, -0x1

    if-eq v14, v3, :cond_3

    .line 9816
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v3, :cond_1

    .line 9817
    new-instance v4, Landroid/app/SyncNotedAppOp;

    invoke-direct {v4, v14, v10}, Landroid/app/SyncNotedAppOp;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onNoted(Landroid/app/SyncNotedAppOp;)V

    goto :goto_2

    .line 9819
    :cond_1
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v7

    .line 9820
    .local v7, "message":Ljava/lang/String;
    sget-object v15, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    new-instance v8, Landroid/app/AsyncNotedAppOp;

    .line 9821
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 9822
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v3, v8

    move v4, v14

    move-object v6, v10

    move-object v0, v8

    move-wide/from16 v8, v16

    invoke-direct/range {v3 .. v9}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    .line 9820
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9823
    sget-object v0, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_2

    .line 9824
    sget-object v0, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9815
    .end local v7    # "message":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v12, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v14, v0

    const/4 v0, 0x0

    goto :goto_1

    .line 9828
    .end local v14    # "code":I
    :cond_3
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9829
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .local v0, "code":I
    :goto_3
    if-eq v0, v3, :cond_4

    .line 9831
    sget-object v4, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    new-instance v5, Landroid/app/SyncNotedAppOp;

    invoke-direct {v5, v0, v10}, Landroid/app/SyncNotedAppOp;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onNoted(Landroid/app/SyncNotedAppOp;)V

    .line 9830
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v12, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_3

    .line 9804
    .end local v0    # "code":I
    .end local v10    # "attributionTag":Ljava/lang/String;
    .end local v11    # "rawNotedAppOps":[J
    .end local v12    # "notedAppOps":Ljava/util/BitSet;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 9828
    .restart local v10    # "attributionTag":Ljava/lang/String;
    .restart local v11    # "rawNotedAppOps":[J
    .restart local v12    # "notedAppOps":Ljava/util/BitSet;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 9835
    .end local v2    # "i":I
    .end local v10    # "attributionTag":Ljava/lang/String;
    .end local v11    # "rawNotedAppOps":[J
    .end local v12    # "notedAppOps":Ljava/util/BitSet;
    :cond_5
    return-void
.end method

.method private static blacklist readDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 10429
    const-class v0, Landroid/content/pm/ParceledListSlice;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 10430
    .local v0, "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static blacklist readLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .locals 7
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 10409
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 10410
    .local v0, "size":I
    if-gez v0, :cond_0

    .line 10411
    const/4 v1, 0x0

    return-object v1

    .line 10413
    :cond_0
    new-instance v1, Landroid/util/LongSparseLongArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 10414
    .local v1, "array":Landroid/util/LongSparseLongArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10415
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 10414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10417
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static blacklist resolveFirstUnrestrictedUidState(I)I
    .locals 1
    .param p0, "op"    # I

    .line 558
    const/16 v0, 0x1f4

    return v0
.end method

.method public static blacklist resolveLastRestrictedUidState(I)I
    .locals 1
    .param p0, "op"    # I

    .line 569
    const/16 v0, 0x258

    return v0
.end method

.method public static blacklist resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 8091
    if-nez p0, :cond_0

    .line 8092
    const-string/jumbo v0, "root"

    return-object v0

    .line 8093
    :cond_0
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    .line 8094
    const-string v0, "com.android.shell"

    return-object v0

    .line 8095
    :cond_1
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_2

    .line 8096
    const-string/jumbo v0, "media"

    return-object v0

    .line 8097
    :cond_2
    const/16 v0, 0x411

    if-ne p0, v0, :cond_3

    .line 8098
    const-string v0, "audioserver"

    return-object v0

    .line 8099
    :cond_3
    const/16 v0, 0x417

    if-ne p0, v0, :cond_4

    .line 8100
    const-string v0, "cameraserver"

    return-object v0

    .line 8101
    :cond_4
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_5

    if-nez p1, :cond_5

    .line 8102
    const-string v0, "android"

    return-object v0

    .line 8104
    :cond_5
    return-object p1
.end method

.method public static blacklist resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V
    .locals 2
    .param p0, "prevCollection"    # Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    .line 9631
    if-eqz p0, :cond_0

    .line 9632
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    iget v1, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 9634
    iget-object v0, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mCollectedNotedAppOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 9635
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mCollectedNotedAppOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 9638
    :cond_0
    return-void
.end method

.method public static blacklist startNotedAppOpsCollection(I)V
    .locals 2
    .param p0, "callingUid"    # I

    .line 9577
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 9578
    return-void
.end method

.method public static greylist-max-o strDebugOpToOp(Ljava/lang/String;)I
    .locals 3
    .param p0, "op"    # Ljava/lang/String;

    .line 3199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3200
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3201
    return v0

    .line 3199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3204
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist strOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .line 8448
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8449
    .local v0, "val":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 8452
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 8450
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist sumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J
    .locals 11
    .param p0, "counts"    # Landroid/util/LongSparseLongArray;
    .param p1, "beginUidState"    # I
    .param p2, "endUidState"    # I
    .param p3, "flags"    # I

    .line 7446
    if-nez p0, :cond_0

    .line 7447
    const-wide/16 v0, 0x0

    return-wide v0

    .line 7449
    :cond_0
    const-wide/16 v0, 0x0

    .line 7450
    .local v0, "sum":J
    :goto_0
    if-eqz p3, :cond_4

    .line 7451
    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 7452
    .local v2, "flag":I
    not-int v3, v2

    and-int/2addr p3, v3

    .line 7453
    sget-object v3, Landroid/app/AppOpsManager;->UID_STATES:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 7454
    .local v6, "uidState":I
    if-lt v6, p1, :cond_2

    if-le v6, p2, :cond_1

    .line 7455
    goto :goto_2

    .line 7457
    :cond_1
    invoke-static {v6, v2}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v7

    .line 7458
    .local v7, "key":J
    invoke-virtual {p0, v7, v8}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v9

    add-long/2addr v0, v9

    .line 7453
    .end local v6    # "uidState":I
    .end local v7    # "key":J
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7460
    .end local v2    # "flag":I
    :cond_3
    goto :goto_0

    .line 7461
    :cond_4
    return-wide v0
.end method

.method public static blacklist toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 3346
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toReceiverId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 3324
    if-nez p0, :cond_0

    .line 3325
    const-string/jumbo v0, "null"

    return-object v0

    .line 3326
    :cond_0
    instance-of v0, p0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 3327
    move-object v0, p0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-static {v0}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3329
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist uidStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "uidState"    # I

    .line 10456
    sparse-switch p0, :sswitch_data_0

    .line 10479
    const-string v0, "UNKNOWN"

    return-object v0

    .line 10476
    :sswitch_0
    const-string v0, "UID_STATE_CACHED"

    return-object v0

    .line 10473
    :sswitch_1
    const-string v0, "UID_STATE_BACKGROUND"

    return-object v0

    .line 10470
    :sswitch_2
    const-string v0, "UID_STATE_FOREGROUND"

    return-object v0

    .line 10467
    :sswitch_3
    const-string v0, "UID_STATE_FOREGROUND_SERVICE"

    return-object v0

    .line 10464
    :sswitch_4
    const-string v0, "UID_STATE_FOREGROUND_SERVICE_LOCATION"

    return-object v0

    .line 10461
    :sswitch_5
    const-string v0, "UID_STATE_TOP"

    return-object v0

    .line 10458
    :sswitch_6
    const-string v0, "UID_STATE_PERSISTENT"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_5
        0x12c -> :sswitch_4
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_1
        0x2bc -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist writeDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 10423
    .local p0, "array":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 10424
    .local v0, "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10425
    return-void
.end method

.method private static blacklist writeLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V
    .locals 4
    .param p0, "array"    # Landroid/util/LongSparseLongArray;
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 10395
    if-eqz p0, :cond_1

    .line 10396
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 10397
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10398
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10399
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 10400
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 10398
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10402
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 10403
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10405
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 2
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 10222
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10225
    nop

    .line 10226
    return-void

    .line 10223
    :catch_0
    move-exception v0

    .line 10224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o checkAudioOp(IIILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 9034
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 9035
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 9038
    return v0

    .line 9036
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "op":I
    .end local p2    # "stream":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9039
    .end local v0    # "mode":I
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "op":I
    .restart local p2    # "stream":I
    .restart local p3    # "uid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 9040
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 9051
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9052
    :catch_0
    move-exception v0

    .line 9053
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist checkOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 8985
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 8986
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 8989
    return v0

    .line 8987
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8990
    .end local v0    # "mode":I
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "op":I
    .restart local p2    # "uid":I
    .restart local p3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 8991
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8492
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist checkOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9006
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9007
    .local v0, "mode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 9008
    .end local v0    # "mode":I
    :catch_0
    move-exception v0

    .line 9009
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8508
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist checkPackage(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9019
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 9025
    nop

    .line 9026
    return-void

    .line 9020
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9023
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 9024
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearHistory()V
    .locals 2

    .line 10254
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->clearHistory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10257
    nop

    .line 10258
    return-void

    .line 10255
    :catch_0
    move-exception v0

    .line 10256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10290
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10291
    :catch_0
    move-exception v0

    .line 10292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o finishOp(I)V
    .locals 3
    .param p1, "op"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9417
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 9418
    return-void
.end method

.method public greylist-max-o finishOp(IILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9444
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 9445
    return-void
.end method

.method public blacklist finishOp(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 9454
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 9455
    return-void
.end method

.method public blacklist finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 9465
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9468
    nop

    .line 9469
    return-void

    .line 9466
    :catch_0
    move-exception v0

    .line 9467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9424
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 9425
    return-void
.end method

.method public whitelist finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 9435
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 9436
    return-void
.end method

.method public blacklist finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V
    .locals 2
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "skipProxyOperation"    # Z

    .line 9506
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/android/internal/app/IAppOpsService;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9510
    nop

    .line 9511
    return-void

    .line 9508
    :catch_0
    move-exception v0

    .line 9509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist finishProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedUid"    # I
    .param p3, "proxiedPackageName"    # Ljava/lang/String;
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;

    .line 9485
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v0

    .line 9486
    .local v0, "token":Landroid/os/IBinder;
    new-instance v1, Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2, p3, p4, v0}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v1, v2, v3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    .line 9489
    return-void
.end method

.method public whitelist getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 17
    .param p1, "request"    # Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 7800
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v0, "executor cannot be null"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7801
    const-string v0, "callback cannot be null"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7803
    move-object/from16 v3, p0

    :try_start_0
    iget-object v4, v3, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmUid(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmPackageName(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmAttributionTag(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmOpNames(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmHistoryFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFilter(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmBeginTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmEndTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v15

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v16, v0

    invoke-interface/range {v4 .. v16}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7817
    nop

    .line 7818
    return-void

    .line 7815
    :catch_0
    move-exception v0

    .line 7816
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public blacklist getHistoricalOpsFromDiskRaw(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 17
    .param p1, "request"    # Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 7840
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v0, "executor cannot be null"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7841
    const-string v0, "callback cannot be null"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7843
    move-object/from16 v3, p0

    :try_start_0
    iget-object v4, v3, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmUid(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmPackageName(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmAttributionTag(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmOpNames(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmHistoryFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFilter(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmBeginTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmEndTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v15

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, v2}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v16, v0

    invoke-interface/range {v4 .. v16}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7857
    nop

    .line 7858
    return-void

    .line 7855
    :catch_0
    move-exception v0

    .line 7856
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public greylist getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7740
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7741
    :catch_0
    move-exception v0

    .line 7742
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public varargs whitelist getOpsForPackage(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 7766
    const/4 v0, 0x0

    .line 7767
    .local v0, "opCodes":[I
    if-eqz p3, :cond_0

    .line 7768
    array-length v1, p3

    new-array v0, v1, [I

    .line 7769
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 7770
    aget-object v2, p3, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 7769
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7774
    .end local v1    # "i":I
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v1

    .line 7775
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v1, :cond_1

    .line 7776
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 7778
    :cond_1
    return-object v1

    .line 7779
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_0
    move-exception v1

    .line 7780
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist getPackagesForOps([I)Ljava/util/List;
    .locals 2
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 7708
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7709
    :catch_0
    move-exception v0

    .line 7710
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPackagesForOps([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "ops"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 7683
    array-length v0, p1

    .line 7684
    .local v0, "opCount":I
    new-array v1, v0, [I

    .line 7685
    .local v1, "opCodes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7686
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 7685
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7688
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    .line 7689
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_1
    return-object v3
.end method

.method public whitelist isOpActive(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9524
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isOperationActive(IILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 10156
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->isOperationActive(IILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10157
    :catch_0
    move-exception v0

    .line 10158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isProxying(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "op"    # I
    .param p2, "proxyAttributionTag"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .line 9542
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 9543
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 9542
    move v1, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9544
    :catch_0
    move-exception v0

    .line 9545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-q noteOp(I)I
    .locals 6
    .param p1, "op"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8607
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist-max-q noteOp(IILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8620
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 8688
    invoke-virtual/range {p0 .. p5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 8689
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 8692
    return v0

    .line 8690
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8594
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 8678
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist-max-q noteOpNoThrow(IILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8713
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 8735
    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 8736
    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    :try_start_1
    invoke-direct {v1, v11, v12, v10}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    .line 8737
    .local v0, "collectionMode":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v13, 0x1

    if-ne v2, v3, :cond_0

    move v2, v13

    goto :goto_0

    :cond_0
    move v2, v4

    .line 8738
    .local v2, "shouldCollectMessage":Z
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 8739
    if-nez p5, :cond_1

    .line 8741
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8742
    .end local p5    # "message":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    const/4 v2, 0x1

    move v15, v2

    move-object v14, v5

    goto :goto_1

    .line 8746
    .end local v5    # "message":Ljava/lang/String;
    .restart local p5    # "message":Ljava/lang/String;
    :cond_1
    move-object/from16 v14, p5

    move v15, v2

    .end local v2    # "shouldCollectMessage":Z
    .end local p5    # "message":Ljava/lang/String;
    .local v14, "message":Ljava/lang/String;
    .local v15, "shouldCollectMessage":Z
    :goto_1
    :try_start_2
    iget-object v2, v1, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v0, v3, :cond_2

    move v7, v13

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v8, v14

    move v9, v15

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v2

    .line 8749
    .local v2, "syncOp":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3

    if-nez v3, :cond_4

    .line 8750
    if-ne v0, v13, :cond_3

    .line 8751
    invoke-direct {v1, v2}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_3

    .line 8752
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 8753
    invoke-static {v2}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 8757
    :cond_4
    :goto_3
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    .line 8758
    .end local v0    # "collectionMode":I
    .end local v2    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v15    # "shouldCollectMessage":Z
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v14    # "message":Ljava/lang/String;
    .restart local p5    # "message":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    :goto_4
    move-object/from16 v14, p5

    .line 8759
    .end local p5    # "message":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v14    # "message":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8700
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 8724
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist noteProxyOp(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .locals 5
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "skipProxyOperation"    # Z

    .line 8840
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    .line 8841
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 8849
    return v0

    .line 8842
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8843
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8844
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " or calling package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8845
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8846
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed to perform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-q noteProxyOp(ILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8781
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 8791
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8793
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, p3, p2, p4, v3}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 8791
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p5, v1}, Landroid/app/AppOpsManager;->noteProxyOp(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public whitelist noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8768
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 8818
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .locals 14
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "skipProxyOperation"    # Z

    .line 8899
    move-object v1, p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 8902
    .local v2, "myUid":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 8903
    nop

    .line 8904
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    .line 8905
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 8903
    move v11, p1

    :try_start_1
    invoke-direct {p0, v0, v3, p1}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    .line 8906
    .local v0, "collectionMode":I
    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v12, 0x1

    if-ne v2, v3, :cond_0

    move v3, v12

    goto :goto_0

    :cond_0
    move v3, v4

    .line 8907
    .local v3, "shouldCollectMessage":Z
    :goto_0
    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    .line 8908
    if-nez p3, :cond_1

    .line 8910
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8911
    .end local p3    # "message":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    const/4 v3, 0x1

    move v13, v3

    move-object v3, v6

    goto :goto_1

    .line 8915
    .end local v6    # "message":Ljava/lang/String;
    .restart local p3    # "message":Ljava/lang/String;
    :cond_1
    move v13, v3

    move-object/from16 v3, p3

    .end local p3    # "message":Ljava/lang/String;
    .local v3, "message":Ljava/lang/String;
    .local v13, "shouldCollectMessage":Z
    :goto_1
    :try_start_2
    iget-object v6, v1, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v0, v5, :cond_2

    move v7, v12

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    move-object v4, v6

    move v5, p1

    move-object/from16 v6, p2

    move-object v8, v3

    move v9, v13

    move/from16 v10, p4

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v4

    .line 8919
    .local v4, "syncOp":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v4}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v5

    if-nez v5, :cond_5

    .line 8920
    if-ne v0, v12, :cond_3

    .line 8921
    invoke-direct {p0, v4}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_3

    .line 8922
    :cond_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_5

    iget-object v5, v1, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v7, -0x1

    .line 8924
    invoke-virtual {v5, v6, v7, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_4

    .line 8926
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 8927
    :cond_4
    invoke-static {v4}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 8931
    :cond_5
    :goto_3
    invoke-virtual {v4}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v5

    .line 8932
    .end local v0    # "collectionMode":I
    .end local v4    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v13    # "shouldCollectMessage":Z
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v3    # "message":Ljava/lang/String;
    .restart local p3    # "message":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move v11, p1

    :goto_4
    move-object/from16 v3, p3

    .line 8933
    .end local p3    # "message":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "message":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public whitelist noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8857
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8866
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 8877
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8878
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    new-instance v3, Landroid/content/AttributionSource;

    iget-object v4, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8879
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 8880
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, p3, p2, p4, v4}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v1, v2, v3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 8877
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p5, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public blacklist offsetHistory(J)V
    .locals 2
    .param p1, "offsetMillis"    # J

    .line 10200
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->offsetHistory(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10203
    nop

    .line 10204
    return-void

    .line 10201
    :catch_0
    move-exception v0

    .line 10202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist rebootHistory(J)V
    .locals 2
    .param p1, "offlineDurationMillis"    # J

    .line 10273
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->rebootHistory(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10276
    nop

    .line 10277
    return-void

    .line 10274
    :catch_0
    move-exception v0

    .line 10275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reloadNonHistoricalState()V
    .locals 2

    .line 7869
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->reloadNonHistoricalState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7872
    nop

    .line 7873
    return-void

    .line 7870
    :catch_0
    move-exception v0

    .line 7871
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestPermissionAccessInformation()V
    .locals 3

    .line 10569
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->requestPermissionAccessInformation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10572
    goto :goto_0

    .line 10570
    :catch_0
    move-exception v0

    .line 10571
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppOpsManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10573
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist-max-r resetAllModes()V
    .locals 3

    .line 8056
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8059
    nop

    .line 8060
    return-void

    .line 8057
    :catch_0
    move-exception v0

    .line 8058
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist resetHistoryParameters()V
    .locals 2

    .line 10239
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->resetHistoryParameters()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10242
    nop

    .line 10243
    return-void

    .line 10240
    :catch_0
    move-exception v0

    .line 10241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist resetPackageOpsNoHistory(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 9561
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->resetPackageOpsNoHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9564
    nop

    .line 9565
    return-void

    .line 9562
    :catch_0
    move-exception v0

    .line 9563
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist semCheckOpRunAnyInBackground(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 8570
    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist semCheckOpSystemAlertWindow(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 8586
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist semCheckOpWriteSms(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 8554
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist semSetBackgroundRestrictionMode(ILjava/lang/String;ZI)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isTargetSdkVersionPreviousO"    # Z
    .param p4, "mode"    # I

    .line 7988
    if-eqz p3, :cond_0

    .line 7989
    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2, p4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 7991
    :cond_0
    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1, p2, p4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 7992
    return-void
.end method

.method public whitelist semSetModeWriteSms(ILjava/lang/String;I)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 7973
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 7974
    return-void
.end method

.method public whitelist semSetSystemAlertWindowRestricted(ZLandroid/os/IBinder;[Ljava/lang/String;)V
    .locals 8
    .param p1, "restricted"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "exceptionPackages"    # [Ljava/lang/String;

    .line 7952
    const/4 v0, 0x0

    .line 7953
    .local v0, "excludedPackageTags":Landroid/os/PackageTagsList;
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7954
    new-instance v1, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v1}, Landroid/os/PackageTagsList$Builder;-><init>()V

    .line 7955
    .local v1, "builder":Landroid/os/PackageTagsList$Builder;
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p3, v3

    .line 7956
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    .line 7955
    .end local v4    # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7958
    :cond_0
    invoke-virtual {v1}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v0

    .line 7960
    .end local v1    # "builder":Landroid/os/PackageTagsList$Builder;
    :cond_1
    const/16 v3, 0x18

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 7961
    return-void
.end method

.method public blacklist setHistoryParameters(IJI)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "compressionStep"    # I

    .line 10183
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setHistoryParameters(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10186
    nop

    .line 10187
    return-void

    .line 10184
    :catch_0
    move-exception v0

    .line 10185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setMode(IILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 8000
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8003
    nop

    .line 8004
    return-void

    .line 8001
    :catch_0
    move-exception v0

    .line 8002
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setMode(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8022
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8025
    nop

    .line 8026
    return-void

    .line 8023
    :catch_0
    move-exception v0

    .line 8024
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setNotedAppOpsCollector(Landroid/app/AppOpsManager$AppOpsCollector;)V
    .locals 3
    .param p1, "collector"    # Landroid/app/AppOpsManager$AppOpsCollector;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9918
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9919
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 9920
    :try_start_0
    invoke-static {}, Landroid/app/AppOpsManager;->isListeningForOpNoted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9921
    invoke-virtual {p0, v1, v1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    .line 9923
    :cond_0
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v1, p1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    goto :goto_0

    .line 9924
    :cond_1
    sget-object v2, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v2, :cond_2

    .line 9925
    invoke-virtual {p0, v1, v1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    .line 9927
    :cond_2
    :goto_0
    monitor-exit v0

    .line 9928
    return-void

    .line 9927
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V
    .locals 8
    .param p1, "asyncExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 9851
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-ne v2, v3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 9853
    sget-object v2, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9854
    if-nez p2, :cond_4

    .line 9855
    :try_start_0
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v3, :cond_3

    move v0, v1

    :cond_3
    const-string v1, "No callback is currently registered"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9859
    :try_start_1
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-static {v3}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fgetmAsyncCb(Landroid/app/AppOpsManager$OnOpNotedCallback;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9863
    goto :goto_3

    .line 9861
    :catch_0
    move-exception v0

    .line 9862
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9865
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    const/4 v0, 0x0

    sput-object v0, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    goto/16 :goto_7

    .line 9867
    :cond_4
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-nez v3, :cond_5

    move v0, v1

    :cond_5
    const-string v1, "Another callback is already registered"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 9870
    invoke-static {p2, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fputmAsyncExecutor(Landroid/app/AppOpsManager$OnOpNotedCallback;Ljava/util/concurrent/Executor;)V

    .line 9871
    sput-object p2, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9873
    const/4 v0, 0x0

    .line 9875
    .local v0, "missedAsyncOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AsyncNotedAppOp;>;"
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-static {v4}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fgetmAsyncCb(Landroid/app/AppOpsManager$OnOpNotedCallback;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 9877
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->extractAsyncOps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .line 9880
    goto :goto_4

    .line 9878
    :catch_1
    move-exception v1

    .line 9879
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9883
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4
    sget-object v1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 9884
    .local v1, "onOpNotedCallback":Landroid/app/AppOpsManager$OnOpNotedCallback;
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 9885
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 9886
    .local v3, "numMissedAsyncOps":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v3, :cond_6

    .line 9887
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AsyncNotedAppOp;

    .line 9888
    .local v5, "asyncNotedAppOp":Landroid/app/AsyncNotedAppOp;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->getAsyncNotedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1, v5}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9886
    .end local v5    # "asyncNotedAppOp":Landroid/app/AsyncNotedAppOp;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 9892
    .end local v3    # "numMissedAsyncOps":I
    .end local v4    # "i":I
    :cond_6
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9893
    :try_start_5
    sget-object v3, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 9894
    .local v3, "numMissedSyncOps":I
    if-eqz v1, :cond_7

    .line 9895
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    if-ge v4, v3, :cond_7

    .line 9896
    sget-object v5, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AsyncNotedAppOp;

    .line 9897
    .local v5, "syncNotedAppOp":Landroid/app/AsyncNotedAppOp;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->getAsyncNotedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/app/AppOpsManager$$ExternalSyntheticLambda3;

    invoke-direct {v7, v1, v5}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda3;-><init>(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9895
    .end local v5    # "syncNotedAppOp":Landroid/app/AsyncNotedAppOp;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 9901
    .end local v4    # "i":I
    :cond_7
    sget-object v4, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 9902
    .end local v3    # "numMissedSyncOps":I
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 9904
    .end local v0    # "missedAsyncOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AsyncNotedAppOp;>;"
    .end local v1    # "onOpNotedCallback":Landroid/app/AppOpsManager$OnOpNotedCallback;
    :goto_7
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 9905
    return-void

    .line 9902
    .restart local v0    # "missedAsyncOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AsyncNotedAppOp;>;"
    .restart local v1    # "onOpNotedCallback":Landroid/app/AppOpsManager$OnOpNotedCallback;
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "asyncExecutor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/app/AppOpsManager$OnOpNotedCallback;
    :try_start_8
    throw v3

    .line 9904
    .end local v0    # "missedAsyncOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AsyncNotedAppOp;>;"
    .end local v1    # "onOpNotedCallback":Landroid/app/AppOpsManager$OnOpNotedCallback;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "asyncExecutor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/app/AppOpsManager$OnOpNotedCallback;
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method public greylist setRestriction(III[Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .line 8044
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 8045
    .local v3, "uid":I
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8048
    .end local v3    # "uid":I
    nop

    .line 8049
    return-void

    .line 8046
    :catch_0
    move-exception v0

    .line 8047
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setUidMode(III)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 7888
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7891
    nop

    .line 7892
    return-void

    .line 7889
    :catch_0
    move-exception v0

    .line 7890
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUidMode(Ljava/lang/String;II)V
    .locals 2
    .param p1, "appOp"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7908
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7911
    nop

    .line 7912
    return-void

    .line 7909
    :catch_0
    move-exception v0

    .line 7910
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setUserRestriction(IZLandroid/os/IBinder;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;

    .line 7916
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;)V

    .line 7917
    return-void
.end method

.method public blacklist setUserRestriction(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "excludedPackageTags"    # Landroid/os/PackageTagsList;

    .line 7925
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 7926
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 7925
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 7927
    return-void
.end method

.method public blacklist setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "excludedPackageTags"    # Landroid/os/PackageTagsList;
    .param p5, "userId"    # I

    .line 7936
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7939
    nop

    .line 7940
    return-void

    .line 7937
    :catch_0
    move-exception v0

    .line 7938
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o startOp(I)I
    .locals 7
    .param p1, "op"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9106
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o startOp(IILjava/lang/String;)I
    .locals 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9116
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o startOp(IILjava/lang/String;Z)I
    .locals 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9126
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 9162
    invoke-virtual/range {p0 .. p6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 9164
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 9167
    return v0

    .line 9165
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9096
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9152
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o startOpNoThrow(IILjava/lang/String;)I
    .locals 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9185
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o startOpNoThrow(IILjava/lang/String;Z)I
    .locals 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9195
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 9216
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "startIfModeDefault"    # Z
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "message"    # Ljava/lang/String;

    .line 9227
    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "startIfModeDefault"    # Z
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "message"    # Ljava/lang/String;
    .param p8, "attributionFlags"    # I
    .param p9, "attributionChainId"    # I

    move-object/from16 v1, p0

    move/from16 v14, p2

    .line 9240
    :try_start_0
    invoke-direct {v1, v14}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 9241
    move/from16 v15, p3

    move-object/from16 v13, p4

    :try_start_1
    invoke-direct {v1, v15, v13, v14}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    .line 9242
    .local v0, "collectionMode":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v12, 0x1

    if-ne v2, v3, :cond_0

    move v2, v12

    goto :goto_0

    :cond_0
    move v2, v4

    .line 9243
    .local v2, "shouldCollectMessage":Z
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 9244
    if-nez p7, :cond_1

    .line 9246
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9247
    .end local p7    # "message":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v17, v2

    move-object/from16 v16, v5

    goto :goto_1

    .line 9251
    .end local v5    # "message":Ljava/lang/String;
    .restart local p7    # "message":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, p7

    move/from16 v17, v2

    .end local v2    # "shouldCollectMessage":Z
    .end local p7    # "message":Ljava/lang/String;
    .local v16, "message":Ljava/lang/String;
    .local v17, "shouldCollectMessage":Z
    :goto_1
    :try_start_2
    iget-object v2, v1, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v0, v3, :cond_2

    move v9, v12

    goto :goto_2

    :cond_2
    move v9, v4

    :goto_2
    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v8, p5

    move-object/from16 v10, v16

    move/from16 v11, v17

    move v14, v12

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-interface/range {v2 .. v13}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v2

    .line 9255
    .local v2, "syncOp":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3

    if-nez v3, :cond_4

    .line 9256
    if-ne v0, v14, :cond_3

    .line 9257
    invoke-direct {v1, v2}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_3

    .line 9258
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 9259
    invoke-static {v2}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 9263
    :cond_4
    :goto_3
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    .line 9264
    .end local v0    # "collectionMode":I
    .end local v2    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v17    # "shouldCollectMessage":Z
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v16    # "message":Ljava/lang/String;
    .restart local p7    # "message":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move/from16 v15, p3

    :goto_4
    move-object/from16 v16, p7

    .line 9265
    .end local p7    # "message":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "message":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9175
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9206
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist startProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedUid"    # I
    .param p3, "proxiedPackageName"    # Ljava/lang/String;
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9289
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 9291
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, p2, p3, p4, v3}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 9289
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p5, v1}, Landroid/app/AppOpsManager;->startProxyOp(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public blacklist startProxyOp(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Z)I
    .locals 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "skipProxyOperation"    # Z

    .line 9314
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    .line 9316
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 9324
    return v0

    .line 9317
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9318
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9319
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " or calling package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9320
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9321
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed to perform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .locals 9
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "skipProxyOperation"    # Z

    .line 9354
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0

    return v0
.end method

.method public blacklist startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I
    .locals 18
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "skipProxyOperation"    # Z
    .param p6, "proxyAttributionFlags"    # I
    .param p7, "proxiedAttributionFlags"    # I
    .param p8, "attributionChainId"    # I

    move-object/from16 v1, p0

    move/from16 v14, p2

    .line 9374
    :try_start_0
    invoke-direct {v1, v14}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 9375
    nop

    .line 9376
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    .line 9377
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    .line 9375
    invoke-direct {v1, v0, v2, v14}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    .line 9378
    .local v0, "collectionMode":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v15, 0x1

    if-ne v2, v3, :cond_0

    move v2, v15

    goto :goto_0

    :cond_0
    move v2, v4

    .line 9379
    .local v2, "shouldCollectMessage":Z
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 9380
    if-nez p4, :cond_1

    .line 9382
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9383
    .end local p4    # "message":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v17, v2

    move-object/from16 v16, v5

    goto :goto_1

    .line 9387
    .end local v5    # "message":Ljava/lang/String;
    .restart local p4    # "message":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, p4

    move/from16 v17, v2

    .end local v2    # "shouldCollectMessage":Z
    .end local p4    # "message":Ljava/lang/String;
    .local v16, "message":Ljava/lang/String;
    .local v17, "shouldCollectMessage":Z
    :goto_1
    :try_start_1
    iget-object v2, v1, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    const/4 v6, 0x0

    if-ne v0, v3, :cond_2

    move v7, v15

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-interface/range {v2 .. v13}, Lcom/android/internal/app/IAppOpsService;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v2

    .line 9392
    .local v2, "syncOp":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3

    if-nez v3, :cond_5

    .line 9393
    if-ne v0, v15, :cond_3

    .line 9394
    invoke-direct {v1, v2}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_3

    .line 9395
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    iget-object v3, v1, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v5, -0x1

    .line 9398
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 9397
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_4

    .line 9399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 9400
    :cond_4
    invoke-static {v2}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 9404
    :cond_5
    :goto_3
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    .line 9405
    .end local v0    # "collectionMode":I
    .end local v2    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v17    # "shouldCollectMessage":Z
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v16    # "message":Ljava/lang/String;
    .restart local p4    # "message":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v16, p4

    .line 9406
    .end local p4    # "message":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "message":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist startProxyOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedUid"    # I
    .param p3, "proxiedPackageName"    # Ljava/lang/String;
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9336
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 9337
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    new-instance v3, Landroid/content/AttributionSource;

    iget-object v4, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 9339
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, p2, p3, p4, v4}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v1, v2, v3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 9336
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p5, v2}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public blacklist startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .locals 3
    .param p1, "ops"    # [I
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8216
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 8217
    .local v0, "strOps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 8218
    aget v2, p1, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 8217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8220
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 8221
    return-void
.end method

.method public whitelist startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .locals 4
    .param p1, "ops"    # [Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    .line 8243
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8244
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8245
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8247
    iget-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8248
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 8249
    .local v1, "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    if-eqz v1, :cond_0

    .line 8250
    monitor-exit v0

    return-void

    .line 8252
    :cond_0
    new-instance v2, Landroid/app/AppOpsManager$3;

    invoke-direct {v2, p0, p2, p3}, Landroid/app/AppOpsManager$3;-><init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    move-object v1, v2

    .line 8269
    iget-object v2, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8270
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8271
    array-length v0, p1

    new-array v0, v0, [I

    .line 8272
    .local v0, "rawOps":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 8273
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    .line 8272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8276
    .end local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8279
    nop

    .line 8280
    return-void

    .line 8277
    :catch_0
    move-exception v2

    .line 8278
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 8270
    .end local v0    # "rawOps":[I
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8165
    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8166
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsCallback;

    .line 8167
    .local v1, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v1, :cond_0

    .line 8168
    new-instance v2, Landroid/app/AppOpsManager$2;

    invoke-direct {v2, p0, p4}, Landroid/app/AppOpsManager$2;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    move-object v1, v2

    .line 8178
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8182
    :cond_0
    const-wide/32 v2, 0x8d50f1e

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 8184
    or-int/lit8 p3, p3, 0x2

    .line 8188
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8191
    nop

    .line 8192
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :try_start_2
    monitor-exit v0

    .line 8193
    return-void

    .line 8189
    .restart local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v2

    .line 8190
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "op":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    throw v3

    .line 8192
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "op":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "flags":I
    .restart local p4    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 8148
    return-void
.end method

.method public whitelist startWatchingMode(Ljava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8131
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 8132
    return-void
.end method

.method public whitelist startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8117
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 8118
    return-void
.end method

.method public blacklist startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V
    .locals 3
    .param p1, "ops"    # [I
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpNotedListener;

    .line 8395
    iget-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8396
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 8397
    .local v1, "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    if-eqz v1, :cond_0

    .line 8398
    monitor-exit v0

    return-void

    .line 8400
    :cond_0
    new-instance v2, Landroid/app/AppOpsManager$5;

    invoke-direct {v2, p0, p2}, Landroid/app/AppOpsManager$5;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpNotedListener;)V

    move-object v1, v2

    .line 8407
    iget-object v2, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8408
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8410
    :try_start_1
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8413
    nop

    .line 8414
    return-void

    .line 8411
    :catch_0
    move-exception v0

    .line 8412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 8408
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V
    .locals 3
    .param p1, "ops"    # [I
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpStartedListener;

    .line 8326
    iget-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8327
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8328
    monitor-exit v0

    return-void

    .line 8330
    :cond_0
    new-instance v1, Landroid/app/AppOpsManager$4;

    invoke-direct {v1, p0, p2}, Landroid/app/AppOpsManager$4;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 8339
    .local v1, "cb":Lcom/android/internal/app/IAppOpsStartedCallback;
    iget-object v2, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8340
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8342
    :try_start_1
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8345
    nop

    .line 8346
    return-void

    .line 8343
    :catch_0
    move-exception v0

    .line 8344
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 8340
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsStartedCallback;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    .line 8290
    iget-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8291
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsActiveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8292
    .local v1, "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    if-eqz v1, :cond_0

    .line 8294
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8297
    goto :goto_0

    .line 8295
    :catch_0
    move-exception v2

    .line 8296
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "callback":Landroid/app/AppOpsManager$OnOpActiveChangedListener;
    throw v3

    .line 8299
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "callback":Landroid/app/AppOpsManager$OnOpActiveChangedListener;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 8300
    return-void

    .line 8299
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8200
    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8201
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8202
    .local v1, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v1, :cond_0

    .line 8204
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8207
    goto :goto_0

    .line 8205
    :catch_0
    move-exception v2

    .line 8206
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    throw v3

    .line 8209
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 8210
    return-void

    .line 8209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpNotedListener;

    .line 8426
    iget-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8427
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsNotedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8428
    .local v1, "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    if-eqz v1, :cond_0

    .line 8430
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8433
    goto :goto_0

    .line 8431
    :catch_0
    move-exception v2

    .line 8432
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "callback":Landroid/app/AppOpsManager$OnOpNotedListener;
    throw v3

    .line 8435
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "callback":Landroid/app/AppOpsManager$OnOpNotedListener;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 8436
    return-void

    .line 8435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpStartedListener;

    .line 8360
    iget-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8361
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsStartedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8362
    .local v1, "cb":Lcom/android/internal/app/IAppOpsStartedCallback;
    if-eqz v1, :cond_0

    .line 8364
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8367
    goto :goto_0

    .line 8365
    :catch_0
    move-exception v2

    .line 8366
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "callback":Landroid/app/AppOpsManager$OnOpStartedListener;
    throw v3

    .line 8369
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsStartedCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "callback":Landroid/app/AppOpsManager$OnOpStartedListener;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 8370
    return-void

    .line 8369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 8484
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 8500
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 8516
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist unsafeCheckOpRawNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 8535
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/app/IAppOpsService;->checkOperationRaw(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8536
    :catch_0
    move-exception v0

    .line 8537
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unsafeCheckOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 8525
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method
