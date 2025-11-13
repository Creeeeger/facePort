.class public final Landroid/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final whitelist ACCEPT_HANDOVER:Ljava/lang/String; = "android.permission.ACCEPT_HANDOVER"

.field public static final whitelist ACCESS_AMBIENT_CONTEXT_EVENT:Ljava/lang/String; = "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_AMBIENT_LIGHT_STATS:Ljava/lang/String; = "android.permission.ACCESS_AMBIENT_LIGHT_STATS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_BACKGROUND_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_BACKGROUND_LOCATION"

.field public static final whitelist ACCESS_BLOBS_ACROSS_USERS:Ljava/lang/String; = "android.permission.ACCESS_BLOBS_ACROSS_USERS"

.field public static final blacklist ACCESS_BRIDGE:Ljava/lang/String; = "com.att.iqi.permission.ACCESS_BRIDGE"

.field public static final whitelist ACCESS_BROADCAST_RADIO:Ljava/lang/String; = "android.permission.ACCESS_BROADCAST_RADIO"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_BROADCAST_RESPONSE_STATS:Ljava/lang/String; = "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_CACHE_FILESYSTEM:Ljava/lang/String; = "android.permission.ACCESS_CACHE_FILESYSTEM"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_CHECKIN_PROPERTIES:Ljava/lang/String; = "android.permission.ACCESS_CHECKIN_PROPERTIES"

.field public static final whitelist ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field public static final blacklist ACCESS_COMMANDS:Ljava/lang/String; = "com.samsung.android.permission.sdk.command.ACCESS_COMMANDS"

.field public static final greylist-max-o ACCESS_CONTENT_PROVIDERS_EXTERNALLY:Ljava/lang/String; = "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

.field public static final whitelist ACCESS_CONTEXT_HUB:Ljava/lang/String; = "android.permission.ACCESS_CONTEXT_HUB"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_DRM_CERTIFICATES:Ljava/lang/String; = "android.permission.ACCESS_DRM_CERTIFICATES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field public static final whitelist ACCESS_FM_RADIO:Ljava/lang/String; = "android.permission.ACCESS_FM_RADIO"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACCESS_FPS_COUNTER:Ljava/lang/String; = "android.permission.ACCESS_FPS_COUNTER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACCESS_IMS_CALL_SERVICE:Ljava/lang/String; = "android.permission.ACCESS_IMS_CALL_SERVICE"

.field public static final greylist-max-o ACCESS_INPUT_FLINGER:Ljava/lang/String; = "android.permission.ACCESS_INPUT_FLINGER"

.field public static final whitelist ACCESS_INSTANT_APPS:Ljava/lang/String; = "android.permission.ACCESS_INSTANT_APPS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACCESS_KEYGUARD_SECURE_STORAGE:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field public static final blacklist ACCESS_KEY_CUSTOMIZE_INFO:Ljava/lang/String; = "com.samsung.android.permisson.ACCESS_KEY_CUSTOMIZE_INFO"

.field public static final whitelist ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field public static final whitelist ACCESS_LOCUS_ID_USAGE_STATS:Ljava/lang/String; = "android.permission.ACCESS_LOCUS_ID_USAGE_STATS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACCESS_LOGS:Ljava/lang/String; = "com.samsung.android.dsms.permission.ACCESS_LOGS"

.field public static final greylist-max-o ACCESS_LOWPAN_STATE:Ljava/lang/String; = "android.permission.ACCESS_LOWPAN_STATE"

.field public static final blacklist ACCESS_MAINTENANCE_MODE:Ljava/lang/String; = "com.samsung.android.permission.ACCESS_MAINTENANCE_MODE"

.field public static final whitelist ACCESS_MEDIA_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MEDIA_LOCATION"

.field public static final blacklist ACCESS_MESSAGES_ON_ICC:Ljava/lang/String; = "android.permission.ACCESS_MESSAGES_ON_ICC"

.field public static final whitelist ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_MTP:Ljava/lang/String; = "android.permission.ACCESS_MTP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_NETWORK_STATE:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field public static final whitelist ACCESS_NOTIFICATIONS:Ljava/lang/String; = "android.permission.ACCESS_NOTIFICATIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_NOTIFICATION_POLICY:Ljava/lang/String; = "android.permission.ACCESS_NOTIFICATION_POLICY"

.field public static final whitelist ACCESS_PDB_STATE:Ljava/lang/String; = "android.permission.ACCESS_PDB_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACCESS_PROVIDER:Ljava/lang/String; = "com.samsung.android.bbc.bbcagent.permission.ACCESS_PROVIDER"

.field public static final whitelist ACCESS_RCS_USER_CAPABILITY_EXCHANGE:Ljava/lang/String; = "android.permission.ACCESS_RCS_USER_CAPABILITY_EXCHANGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_SHARED_LIBRARIES:Ljava/lang/String; = "android.permission.ACCESS_SHARED_LIBRARIES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_SHORTCUTS:Ljava/lang/String; = "android.permission.ACCESS_SHORTCUTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_SURFACE_FLINGER:Ljava/lang/String; = "android.permission.ACCESS_SURFACE_FLINGER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_TUNED_INFO:Ljava/lang/String; = "android.permission.ACCESS_TUNED_INFO"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_TV_DESCRAMBLER:Ljava/lang/String; = "android.permission.ACCESS_TV_DESCRAMBLER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_TV_SHARED_FILTER:Ljava/lang/String; = "android.permission.ACCESS_TV_SHARED_FILTER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_TV_TUNER:Ljava/lang/String; = "android.permission.ACCESS_TV_TUNER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACCESS_UCE_OPTIONS_SERVICE:Ljava/lang/String; = "android.permission.ACCESS_UCE_OPTIONS_SERVICE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACCESS_UCE_PRESENCE_SERVICE:Ljava/lang/String; = "android.permission.ACCESS_UCE_PRESENCE_SERVICE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACCESS_ULTRASOUND:Ljava/lang/String; = "android.permission.ACCESS_ULTRASOUND"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCESS_VIBRATOR_STATE:Ljava/lang/String; = "android.permission.ACCESS_VIBRATOR_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACCESS_VOICE_INTERACTION_SERVICE:Ljava/lang/String; = "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

.field public static final greylist-max-o ACCESS_VR_MANAGER:Ljava/lang/String; = "android.permission.ACCESS_VR_MANAGER"

.field public static final greylist-max-o ACCESS_VR_STATE:Ljava/lang/String; = "android.permission.ACCESS_VR_STATE"

.field public static final whitelist ACCESS_WIFI_STATE:Ljava/lang/String; = "android.permission.ACCESS_WIFI_STATE"

.field public static final whitelist ACCOUNT_MANAGER:Ljava/lang/String; = "android.permission.ACCOUNT_MANAGER"

.field public static final whitelist ACTIVITY_EMBEDDING:Ljava/lang/String; = "android.permission.ACTIVITY_EMBEDDING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTIVITY_RECOGNITION:Ljava/lang/String; = "android.permission.ACTIVITY_RECOGNITION"

.field public static final blacklist ACT_AS_PACKAGE_FOR_ACCESSIBILITY:Ljava/lang/String; = "android.permission.ACT_AS_PACKAGE_FOR_ACCESSIBILITY"

.field public static final whitelist ADAPTIVE_BRIGHTNESS_PERMISSION:Ljava/lang/String; = "com.samsung.adaptivebrightnessgo.permission.ADAPTIVE_BRIGHTNESS_PERMISSION"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ADD_ALWAYS_UNLOCKED_DISPLAY:Ljava/lang/String; = "android.permission.ADD_ALWAYS_UNLOCKED_DISPLAY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADD_TRUSTED_DISPLAY:Ljava/lang/String; = "android.permission.ADD_TRUSTED_DISPLAY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADD_VOICEMAIL:Ljava/lang/String; = "com.android.voicemail.permission.ADD_VOICEMAIL"

.field public static final whitelist ADJUST_RUNTIME_PERMISSIONS_POLICY:Ljava/lang/String; = "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ALLOCATE_AGGRESSIVE:Ljava/lang/String; = "android.permission.ALLOCATE_AGGRESSIVE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ALLOW_ANY_CODEC_FOR_PLAYBACK:Ljava/lang/String; = "android.permission.ALLOW_ANY_CODEC_FOR_PLAYBACK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ALLOW_PLACE_IN_MULTI_PANE_SETTINGS:Ljava/lang/String; = "android.permission.ALLOW_PLACE_IN_MULTI_PANE_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ALLOW_SLIPPERY_TOUCHES:Ljava/lang/String; = "android.permission.ALLOW_SLIPPERY_TOUCHES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AMBIENT_WALLPAPER:Ljava/lang/String; = "android.permission.AMBIENT_WALLPAPER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ANSWER_PHONE_CALLS:Ljava/lang/String; = "android.permission.ANSWER_PHONE_CALLS"

.field public static final blacklist API_ACCESS:Ljava/lang/String; = "com.verizon.ptt.API_ACCESS"

.field public static final whitelist APPROVE_INCIDENT_REPORTS:Ljava/lang/String; = "android.permission.APPROVE_INCIDENT_REPORTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ASEC_ACCESS:Ljava/lang/String; = "android.permission.ASEC_ACCESS"

.field public static final greylist-max-o ASEC_CREATE:Ljava/lang/String; = "android.permission.ASEC_CREATE"

.field public static final greylist-max-o ASEC_DESTROY:Ljava/lang/String; = "android.permission.ASEC_DESTROY"

.field public static final greylist-max-o ASEC_MOUNT_UNMOUNT:Ljava/lang/String; = "android.permission.ASEC_MOUNT_UNMOUNT"

.field public static final greylist-max-o ASEC_RENAME:Ljava/lang/String; = "android.permission.ASEC_RENAME"

.field public static final whitelist ASSOCIATE_COMPANION_DEVICES:Ljava/lang/String; = "android.permission.ASSOCIATE_COMPANION_DEVICES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ASSOCIATE_INPUT_DEVICE_TO_DISPLAY:Ljava/lang/String; = "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

.field public static final greylist-max-o AUTHENTICATE_ACCOUNTS:Ljava/lang/String; = "android.permission.AUTHENTICATE_ACCOUNTS"

.field public static final whitelist BACKGROUND_CAMERA:Ljava/lang/String; = "android.permission.BACKGROUND_CAMERA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BACKUP:Ljava/lang/String; = "android.permission.BACKUP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist BARCODE_READ:Ljava/lang/String; = "com.samsung.permission.BARCODE_READ"

.field public static final blacklist BATTERY_INFO:Ljava/lang/String; = "com.samsung.android.permission.BATTERY_INFO"

.field public static final whitelist BATTERY_PREDICTION:Ljava/lang/String; = "android.permission.BATTERY_PREDICTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BATTERY_STATS:Ljava/lang/String; = "android.permission.BATTERY_STATS"

.field public static final whitelist BIND_ACCESSIBILITY_SERVICE:Ljava/lang/String; = "android.permission.BIND_ACCESSIBILITY_SERVICE"

.field public static final whitelist BIND_AMBIENT_CONTEXT_DETECTION_SERVICE:Ljava/lang/String; = "android.permission.BIND_AMBIENT_CONTEXT_DETECTION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_APPWIDGET:Ljava/lang/String; = "android.permission.BIND_APPWIDGET"

.field public static final whitelist BIND_ATTENTION_SERVICE:Ljava/lang/String; = "android.permission.BIND_ATTENTION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist BIND_ATTESTATION_VERIFICATION_SERVICE:Ljava/lang/String; = "android.permission.BIND_ATTESTATION_VERIFICATION_SERVICE"

.field public static final whitelist BIND_AUGMENTED_AUTOFILL_SERVICE:Ljava/lang/String; = "android.permission.BIND_AUGMENTED_AUTOFILL_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o BIND_AUTOFILL:Ljava/lang/String; = "android.permission.BIND_AUTOFILL"

.field public static final greylist-max-o BIND_AUTOFILL_FIELD_CLASSIFICATION_SERVICE:Ljava/lang/String; = "android.permission.BIND_AUTOFILL_FIELD_CLASSIFICATION_SERVICE"

.field public static final whitelist BIND_AUTOFILL_SERVICE:Ljava/lang/String; = "android.permission.BIND_AUTOFILL_SERVICE"

.field public static final greylist-max-o BIND_CACHE_QUOTA_SERVICE:Ljava/lang/String; = "android.permission.BIND_CACHE_QUOTA_SERVICE"

.field public static final whitelist BIND_CALL_DIAGNOSTIC_SERVICE:Ljava/lang/String; = "android.permission.BIND_CALL_DIAGNOSTIC_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_CALL_REDIRECTION_SERVICE:Ljava/lang/String; = "android.permission.BIND_CALL_REDIRECTION_SERVICE"

.field public static final whitelist BIND_CARRIER_MESSAGING_CLIENT_SERVICE:Ljava/lang/String; = "android.permission.BIND_CARRIER_MESSAGING_CLIENT_SERVICE"

.field public static final whitelist BIND_CARRIER_MESSAGING_SERVICE:Ljava/lang/String; = "android.permission.BIND_CARRIER_MESSAGING_SERVICE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BIND_CARRIER_SERVICES:Ljava/lang/String; = "android.permission.BIND_CARRIER_SERVICES"

.field public static final whitelist BIND_CELL_BROADCAST_SERVICE:Ljava/lang/String; = "android.permission.BIND_CELL_BROADCAST_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_CHOOSER_TARGET_SERVICE:Ljava/lang/String; = "android.permission.BIND_CHOOSER_TARGET_SERVICE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o BIND_COMPANION_DEVICE_MANAGER_SERVICE:Ljava/lang/String; = "android.permission.BIND_COMPANION_DEVICE_MANAGER_SERVICE"

.field public static final whitelist BIND_COMPANION_DEVICE_SERVICE:Ljava/lang/String; = "android.permission.BIND_COMPANION_DEVICE_SERVICE"

.field public static final whitelist BIND_CONDITION_PROVIDER_SERVICE:Ljava/lang/String; = "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

.field public static final whitelist BIND_CONNECTION_SERVICE:Ljava/lang/String; = "android.permission.BIND_CONNECTION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BIND_CONTENT_CAPTURE_SERVICE:Ljava/lang/String; = "android.permission.BIND_CONTENT_CAPTURE_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_CONTENT_SUGGESTIONS_SERVICE:Ljava/lang/String; = "android.permission.BIND_CONTENT_SUGGESTIONS_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_CONTROLS:Ljava/lang/String; = "android.permission.BIND_CONTROLS"

.field public static final blacklist BIND_DESKTOP_MODE_UI_SERVICE:Ljava/lang/String; = "com.samsung.android.desktopmode.permission.BIND_DESKTOP_MODE_UI_SERVICE"

.field public static final whitelist BIND_DEVICE_ADMIN:Ljava/lang/String; = "android.permission.BIND_DEVICE_ADMIN"

.field public static final whitelist BIND_DIRECTORY_SEARCH:Ljava/lang/String; = "android.permission.BIND_DIRECTORY_SEARCH"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_DISPLAY_HASHING_SERVICE:Ljava/lang/String; = "android.permission.BIND_DISPLAY_HASHING_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_DOMAIN_VERIFICATION_AGENT:Ljava/lang/String; = "android.permission.BIND_DOMAIN_VERIFICATION_AGENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_DREAM_SERVICE:Ljava/lang/String; = "android.permission.BIND_DREAM_SERVICE"

.field public static final whitelist BIND_EUICC_SERVICE:Ljava/lang/String; = "android.permission.BIND_EUICC_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist BIND_EXPLICIT_HEALTH_CHECK_SERVICE:Ljava/lang/String; = "android.permission.BIND_EXPLICIT_HEALTH_CHECK_SERVICE"

.field public static final whitelist BIND_EXTERNAL_STORAGE_SERVICE:Ljava/lang/String; = "android.permission.BIND_EXTERNAL_STORAGE_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist BIND_GAME_SERVICE:Ljava/lang/String; = "android.permission.BIND_GAME_SERVICE"

.field public static final whitelist BIND_GBA_SERVICE:Ljava/lang/String; = "android.permission.BIND_GBA_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_HOTWORD_DETECTION_SERVICE:Ljava/lang/String; = "android.permission.BIND_HOTWORD_DETECTION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_IMS_SERVICE:Ljava/lang/String; = "android.permission.BIND_IMS_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_INCALL_SERVICE:Ljava/lang/String; = "android.permission.BIND_INCALL_SERVICE"

.field public static final blacklist BIND_INLINE_SUGGESTION_RENDER_SERVICE:Ljava/lang/String; = "android.permission.BIND_INLINE_SUGGESTION_RENDER_SERVICE"

.field public static final whitelist BIND_INPUT_METHOD:Ljava/lang/String; = "android.permission.BIND_INPUT_METHOD"

.field public static final greylist-max-o BIND_INTENT_FILTER_VERIFIER:Ljava/lang/String; = "android.permission.BIND_INTENT_FILTER_VERIFIER"

.field public static final blacklist BIND_IQI_MANAGER:Ljava/lang/String; = "com.att.iqi.permission.BIND_IQI_MANAGER"

.field public static final greylist-max-o BIND_JOB_SERVICE:Ljava/lang/String; = "android.permission.BIND_JOB_SERVICE"

.field public static final whitelist BIND_KEYGUARD_APPWIDGET:Ljava/lang/String; = "android.permission.BIND_KEYGUARD_APPWIDGET"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_MIDI_DEVICE_SERVICE:Ljava/lang/String; = "android.permission.BIND_MIDI_DEVICE_SERVICE"

.field public static final whitelist BIND_MUSIC_RECOGNITION_SERVICE:Ljava/lang/String; = "android.permission.BIND_MUSIC_RECOGNITION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_NETWORK_RECOMMENDATION_SERVICE:Ljava/lang/String; = "android.permission.BIND_NETWORK_RECOMMENDATION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_NFC_SERVICE:Ljava/lang/String; = "android.permission.BIND_NFC_SERVICE"

.field public static final whitelist BIND_NOTIFICATION_ASSISTANT_SERVICE:Ljava/lang/String; = "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_NOTIFICATION_LISTENER_SERVICE:Ljava/lang/String; = "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

.field public static final greylist-max-o BIND_PACKAGE_VERIFIER:Ljava/lang/String; = "android.permission.BIND_PACKAGE_VERIFIER"

.field public static final blacklist BIND_PACKAGE_VERIFIER2:Ljava/lang/String; = "com.samsung.android.permission.BIND_PACKAGE_VERIFIER2"

.field public static final whitelist BIND_PHONE_ACCOUNT_SUGGESTION_SERVICE:Ljava/lang/String; = "android.permission.BIND_PHONE_ACCOUNT_SUGGESTION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_PRINT_RECOMMENDATION_SERVICE:Ljava/lang/String; = "android.permission.BIND_PRINT_RECOMMENDATION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_PRINT_SERVICE:Ljava/lang/String; = "android.permission.BIND_PRINT_SERVICE"

.field public static final greylist-max-o BIND_PRINT_SPOOLER_SERVICE:Ljava/lang/String; = "android.permission.BIND_PRINT_SPOOLER_SERVICE"

.field public static final whitelist BIND_QUICK_ACCESS_WALLET_SERVICE:Ljava/lang/String; = "android.permission.BIND_QUICK_ACCESS_WALLET_SERVICE"

.field public static final whitelist BIND_QUICK_SETTINGS_TILE:Ljava/lang/String; = "android.permission.BIND_QUICK_SETTINGS_TILE"

.field public static final whitelist BIND_REMOTEVIEWS:Ljava/lang/String; = "android.permission.BIND_REMOTEVIEWS"

.field public static final greylist-max-o BIND_REMOTE_DISPLAY:Ljava/lang/String; = "android.permission.BIND_REMOTE_DISPLAY"

.field public static final whitelist BIND_RESOLVER_RANKER_SERVICE:Ljava/lang/String; = "android.permission.BIND_RESOLVER_RANKER_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_RESUME_ON_REBOOT_SERVICE:Ljava/lang/String; = "android.permission.BIND_RESUME_ON_REBOOT_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_ROTATION_RESOLVER_SERVICE:Ljava/lang/String; = "android.permission.BIND_ROTATION_RESOLVER_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o BIND_ROUTE_PROVIDER:Ljava/lang/String; = "android.permission.BIND_ROUTE_PROVIDER"

.field public static final whitelist BIND_RUNTIME_PERMISSION_PRESENTER_SERVICE:Ljava/lang/String; = "android.permission.BIND_RUNTIME_PERMISSION_PRESENTER_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_SCREENING_SERVICE:Ljava/lang/String; = "android.permission.BIND_SCREENING_SERVICE"

.field public static final blacklist BIND_SELECTION_TOOLBAR_RENDER_SERVICE:Ljava/lang/String; = "android.permission.BIND_SELECTION_TOOLBAR_RENDER_SERVICE"

.field public static final whitelist BIND_SESETTINGS_SERVICES:Ljava/lang/String; = "com.nttdocomo.android.offhostcontrol.BIND_SESETTINGS_SERVICES"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BIND_SETTINGS_SUGGESTIONS_SERVICE:Ljava/lang/String; = "android.permission.BIND_SETTINGS_SUGGESTIONS_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_SOUND_TRIGGER_DETECTION_SERVICE:Ljava/lang/String; = "android.permission.BIND_SOUND_TRIGGER_DETECTION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_TELECOM_CONNECTION_SERVICE:Ljava/lang/String; = "android.permission.BIND_TELECOM_CONNECTION_SERVICE"

.field public static final whitelist BIND_TELEPHONY_DATA_SERVICE:Ljava/lang/String; = "android.permission.BIND_TELEPHONY_DATA_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_TELEPHONY_NETWORK_SERVICE:Ljava/lang/String; = "android.permission.BIND_TELEPHONY_NETWORK_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_TEXTCLASSIFIER_SERVICE:Ljava/lang/String; = "android.permission.BIND_TEXTCLASSIFIER_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_TEXT_SERVICE:Ljava/lang/String; = "android.permission.BIND_TEXT_SERVICE"

.field public static final whitelist BIND_TIME_ZONE_PROVIDER_SERVICE:Ljava/lang/String; = "android.permission.BIND_TIME_ZONE_PROVIDER_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_TRACE_REPORT_SERVICE:Ljava/lang/String; = "android.permission.BIND_TRACE_REPORT_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_TRANSLATION_SERVICE:Ljava/lang/String; = "android.permission.BIND_TRANSLATION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_TRUST_AGENT:Ljava/lang/String; = "android.permission.BIND_TRUST_AGENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_TV_INPUT:Ljava/lang/String; = "android.permission.BIND_TV_INPUT"

.field public static final whitelist BIND_TV_INTERACTIVE_APP:Ljava/lang/String; = "android.permission.BIND_TV_INTERACTIVE_APP"

.field public static final whitelist BIND_TV_REMOTE_SERVICE:Ljava/lang/String; = "android.permission.BIND_TV_REMOTE_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_VISUAL_VOICEMAIL_SERVICE:Ljava/lang/String; = "android.permission.BIND_VISUAL_VOICEMAIL_SERVICE"

.field public static final whitelist BIND_VOICE_INTERACTION:Ljava/lang/String; = "android.permission.BIND_VOICE_INTERACTION"

.field public static final whitelist BIND_VPN_SERVICE:Ljava/lang/String; = "android.permission.BIND_VPN_SERVICE"

.field public static final whitelist BIND_VR_LISTENER_SERVICE:Ljava/lang/String; = "android.permission.BIND_VR_LISTENER_SERVICE"

.field public static final whitelist BIND_WALLPAPER:Ljava/lang/String; = "android.permission.BIND_WALLPAPER"

.field public static final whitelist BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE:Ljava/lang/String; = "android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist BIOMETRICS_PRIVILEGED:Ljava/lang/String; = "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

.field public static final blacklist BLE_PRIVILEGED:Ljava/lang/String; = "com.samsung.android.permission.BLE_PRIVILEGED"

.field public static final whitelist BLUETOOTH:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final whitelist BLUETOOTH_ADMIN:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final whitelist BLUETOOTH_ADVERTISE:Ljava/lang/String; = "android.permission.BLUETOOTH_ADVERTISE"

.field public static final whitelist BLUETOOTH_CONNECT:Ljava/lang/String; = "android.permission.BLUETOOTH_CONNECT"

.field public static final whitelist BLUETOOTH_DEBUG:Ljava/lang/String; = "com.sec.permission.BLUETOOTH_DEBUG"

.field public static final whitelist BLUETOOTH_MAP:Ljava/lang/String; = "android.permission.BLUETOOTH_MAP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BLUETOOTH_PRIVILEGED:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field public static final whitelist BLUETOOTH_SCAN:Ljava/lang/String; = "android.permission.BLUETOOTH_SCAN"

.field public static final greylist-max-o BLUETOOTH_STACK:Ljava/lang/String; = "android.permission.BLUETOOTH_STACK"

.field public static final whitelist BODY_SENSORS:Ljava/lang/String; = "android.permission.BODY_SENSORS"

.field public static final whitelist BODY_SENSORS_BACKGROUND:Ljava/lang/String; = "android.permission.BODY_SENSORS_BACKGROUND"

.field public static final whitelist BRICK:Ljava/lang/String; = "android.permission.BRICK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BRIGHTNESS_SLIDER_USAGE:Ljava/lang/String; = "android.permission.BRIGHTNESS_SLIDER_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BROADCAST_CLOSE_SYSTEM_DIALOGS:Ljava/lang/String; = "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BROADCAST_NETWORK_PRIVILEGED:Ljava/lang/String; = "android.permission.BROADCAST_NETWORK_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BROADCAST_PACKAGE_REMOVED:Ljava/lang/String; = "android.permission.BROADCAST_PACKAGE_REMOVED"

.field public static final blacklist BROADCAST_PMM_CRITICAL_TRIGGER:Ljava/lang/String; = "com.samsung.android.permission.BROADCAST_PMM_CRITICAL_TRIGGER"

.field public static final blacklist BROADCAST_QUICKACCESS:Ljava/lang/String; = "com.samsung.android.permission.BROADCAST_QUICKACCESS"

.field public static final blacklist BROADCAST_RECEIVER:Ljava/lang/String; = "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

.field public static final whitelist BROADCAST_SMS:Ljava/lang/String; = "android.permission.BROADCAST_SMS"

.field public static final whitelist BROADCAST_STICKY:Ljava/lang/String; = "android.permission.BROADCAST_STICKY"

.field public static final whitelist BROADCAST_WAP_PUSH:Ljava/lang/String; = "android.permission.BROADCAST_WAP_PUSH"

.field public static final whitelist BYPASS_ROLE_QUALIFICATION:Ljava/lang/String; = "android.permission.BYPASS_ROLE_QUALIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o C2D_MESSAGE:Ljava/lang/String; = "android.intent.category.MASTER_CLEAR.permission.C2D_MESSAGE"

.field public static final greylist-max-o CACHE_CONTENT:Ljava/lang/String; = "android.permission.CACHE_CONTENT"

.field public static final whitelist CALL_AUDIO_INTERCEPTION:Ljava/lang/String; = "android.permission.CALL_AUDIO_INTERCEPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_COMPANION_APP:Ljava/lang/String; = "android.permission.CALL_COMPANION_APP"

.field public static final whitelist CALL_PHONE:Ljava/lang/String; = "android.permission.CALL_PHONE"

.field public static final whitelist CALL_PRIVILEGED:Ljava/lang/String; = "android.permission.CALL_PRIVILEGED"

.field public static final whitelist CAMERA:Ljava/lang/String; = "android.permission.CAMERA"

.field public static final whitelist CAMERA_DISABLE_TRANSMIT_LED:Ljava/lang/String; = "android.permission.CAMERA_DISABLE_TRANSMIT_LED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CAMERA_INJECT_EXTERNAL_CAMERA:Ljava/lang/String; = "android.permission.CAMERA_INJECT_EXTERNAL_CAMERA"

.field public static final whitelist CAMERA_OPEN_CLOSE_LISTENER:Ljava/lang/String; = "android.permission.CAMERA_OPEN_CLOSE_LISTENER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o CAMERA_SEND_SYSTEM_EVENTS:Ljava/lang/String; = "android.permission.CAMERA_SEND_SYSTEM_EVENTS"

.field public static final blacklist CAPTURE:Ljava/lang/String; = "com.samsung.permission.CAPTURE"

.field public static final whitelist CAPTURE_AUDIO_HOTWORD:Ljava/lang/String; = "android.permission.CAPTURE_AUDIO_HOTWORD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPTURE_AUDIO_OUTPUT:Ljava/lang/String; = "android.permission.CAPTURE_AUDIO_OUTPUT"

.field public static final blacklist CAPTURE_BLACKOUT_CONTENT:Ljava/lang/String; = "android.permission.CAPTURE_BLACKOUT_CONTENT"

.field public static final whitelist CAPTURE_MEDIA_OUTPUT:Ljava/lang/String; = "android.permission.CAPTURE_MEDIA_OUTPUT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-r CAPTURE_SECURE_VIDEO_OUTPUT:Ljava/lang/String; = "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

.field public static final whitelist CAPTURE_TUNER_AUDIO_INPUT:Ljava/lang/String; = "android.permission.CAPTURE_TUNER_AUDIO_INPUT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPTURE_TV_INPUT:Ljava/lang/String; = "android.permission.CAPTURE_TV_INPUT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-r CAPTURE_VIDEO_OUTPUT:Ljava/lang/String; = "android.permission.CAPTURE_VIDEO_OUTPUT"

.field public static final whitelist CAPTURE_VOICE_COMMUNICATION_OUTPUT:Ljava/lang/String; = "android.permission.CAPTURE_VOICE_COMMUNICATION_OUTPUT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o CARRIER_FILTER_SMS:Ljava/lang/String; = "android.permission.CARRIER_FILTER_SMS"

.field public static final greylist-max-o CHANGE_ACCESSIBILITY_VOLUME:Ljava/lang/String; = "android.permission.CHANGE_ACCESSIBILITY_VOLUME"

.field public static final whitelist CHANGE_APP_IDLE_STATE:Ljava/lang/String; = "android.permission.CHANGE_APP_IDLE_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CHANGE_APP_LAUNCH_TIME_ESTIMATE:Ljava/lang/String; = "android.permission.CHANGE_APP_LAUNCH_TIME_ESTIMATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o CHANGE_BACKGROUND_DATA_SETTING:Ljava/lang/String; = "android.permission.CHANGE_BACKGROUND_DATA_SETTING"

.field public static final whitelist CHANGE_COMPONENT_ENABLED_STATE:Ljava/lang/String; = "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

.field public static final whitelist CHANGE_CONFIGURATION:Ljava/lang/String; = "android.permission.CHANGE_CONFIGURATION"

.field public static final whitelist CHANGE_DEVICE_IDLE_TEMP_WHITELIST:Ljava/lang/String; = "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CHANGE_DISPLAY_COLOR:Ljava/lang/String; = "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

.field public static final greylist-max-o CHANGE_HDMI_CEC_ACTIVE_SOURCE:Ljava/lang/String; = "android.permission.CHANGE_HDMI_CEC_ACTIVE_SOURCE"

.field public static final greylist-max-o CHANGE_LOWPAN_STATE:Ljava/lang/String; = "android.permission.CHANGE_LOWPAN_STATE"

.field public static final whitelist CHANGE_NETWORK_STATE:Ljava/lang/String; = "android.permission.CHANGE_NETWORK_STATE"

.field public static final greylist-max-o CHANGE_OVERLAY_PACKAGES:Ljava/lang/String; = "android.permission.CHANGE_OVERLAY_PACKAGES"

.field public static final blacklist CHANGE_SPEN_THEME:Ljava/lang/String; = "com.samsung.android.permission.CHANGE_SPEN_THEME"

.field public static final whitelist CHANGE_WIFI_MULTICAST_STATE:Ljava/lang/String; = "android.permission.CHANGE_WIFI_MULTICAST_STATE"

.field public static final whitelist CHANGE_WIFI_STATE:Ljava/lang/String; = "android.permission.CHANGE_WIFI_STATE"

.field public static final blacklist CHIMERA_PREFERENCE:Ljava/lang/String; = "com.samsung.android.permission.CHIMERA_PREFERENCE"

.field public static final whitelist CLEAR_APP_CACHE:Ljava/lang/String; = "android.permission.CLEAR_APP_CACHE"

.field public static final greylist-max-o CLEAR_APP_GRANTED_URI_PERMISSIONS:Ljava/lang/String; = "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

.field public static final whitelist CLEAR_APP_USER_DATA:Ljava/lang/String; = "android.permission.CLEAR_APP_USER_DATA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CLEAR_FREEZE_PERIOD:Ljava/lang/String; = "android.permission.CLEAR_FREEZE_PERIOD"

.field public static final whitelist COMPANION_APPROVE_WIFI_CONNECTIONS:Ljava/lang/String; = "android.permission.COMPANION_APPROVE_WIFI_CONNECTIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONFIGURE_DISPLAY_BRIGHTNESS:Ljava/lang/String; = "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o CONFIGURE_DISPLAY_COLOR_MODE:Ljava/lang/String; = "android.permission.CONFIGURE_DISPLAY_COLOR_MODE"

.field public static final whitelist CONFIGURE_INTERACT_ACROSS_PROFILES:Ljava/lang/String; = "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONFIGURE_WIFI_DISPLAY:Ljava/lang/String; = "android.permission.CONFIGURE_WIFI_DISPLAY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o CONFIRM_FULL_BACKUP:Ljava/lang/String; = "android.permission.CONFIRM_FULL_BACKUP"

.field public static final whitelist CONNECTIVITY_INTERNAL:Ljava/lang/String; = "android.permission.CONNECTIVITY_INTERNAL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONNECTIVITY_USE_RESTRICTED_NETWORKS:Ljava/lang/String; = "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CONTAINER_BROADCAST:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CONTAINER_BROADCAST"

.field public static final blacklist CONTROL_ALWAYS_ON_VPN:Ljava/lang/String; = "android.permission.CONTROL_ALWAYS_ON_VPN"

.field public static final blacklist CONTROL_AUTOMOTIVE_GNSS:Ljava/lang/String; = "android.permission.CONTROL_AUTOMOTIVE_GNSS"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist CONTROL_DEVICE_LIGHTS:Ljava/lang/String; = "android.permission.CONTROL_DEVICE_LIGHTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CONTROL_DEVICE_STATE:Ljava/lang/String; = "android.permission.CONTROL_DEVICE_STATE"

.field public static final greylist-max-o CONTROL_DISPLAY_BRIGHTNESS:Ljava/lang/String; = "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

.field public static final whitelist CONTROL_DISPLAY_COLOR_TRANSFORMS:Ljava/lang/String; = "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONTROL_DISPLAY_SATURATION:Ljava/lang/String; = "android.permission.CONTROL_DISPLAY_SATURATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONTROL_INCALL_EXPERIENCE:Ljava/lang/String; = "android.permission.CONTROL_INCALL_EXPERIENCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o CONTROL_KEYGUARD:Ljava/lang/String; = "android.permission.CONTROL_KEYGUARD"

.field public static final whitelist CONTROL_KEYGUARD_SECURE_NOTIFICATIONS:Ljava/lang/String; = "android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONTROL_LOCATION_UPDATES:Ljava/lang/String; = "android.permission.CONTROL_LOCATION_UPDATES"

.field public static final whitelist CONTROL_OEM_PAID_NETWORK_PREFERENCE:Ljava/lang/String; = "android.permission.CONTROL_OEM_PAID_NETWORK_PREFERENCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS:Ljava/lang/String; = "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

.field public static final blacklist CONTROL_UI_TRACING:Ljava/lang/String; = "android.permission.CONTROL_UI_TRACING"

.field public static final whitelist CONTROL_VPN:Ljava/lang/String; = "android.permission.CONTROL_VPN"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o CONTROL_WIFI_DISPLAY:Ljava/lang/String; = "android.permission.CONTROL_WIFI_DISPLAY"

.field public static final greylist-max-o COPY_PROTECTED_DATA:Ljava/lang/String; = "android.permission.COPY_PROTECTED_DATA"

.field public static final whitelist CREATE_USERS:Ljava/lang/String; = "android.permission.CREATE_USERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CREATE_VIRTUAL_DEVICE:Ljava/lang/String; = "android.permission.CREATE_VIRTUAL_DEVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CRYPT_KEEPER:Ljava/lang/String; = "android.permission.CRYPT_KEEPER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CUSTOM_SEALEDMODE:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CUSTOM_SETTING:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SETTING"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CUSTOM_SYSTEM:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DELETE_CACHE_FILES:Ljava/lang/String; = "android.permission.DELETE_CACHE_FILES"

.field public static final whitelist DELETE_PACKAGES:Ljava/lang/String; = "android.permission.DELETE_PACKAGES"

.field public static final whitelist DELIVER_COMPANION_MESSAGES:Ljava/lang/String; = "android.permission.DELIVER_COMPANION_MESSAGES"

.field public static final whitelist DEVICE_POWER:Ljava/lang/String; = "android.permission.DEVICE_POWER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DIAGMON:Ljava/lang/String; = "com.sec.android.diagmonagent.permission.DIAGMON"

.field public static final whitelist DIAGMON_SURVEY:Ljava/lang/String; = "com.sec.android.diagmonagent.permission.DIAGMON_SURVEY"

.field public static final whitelist DIAGNOSTIC:Ljava/lang/String; = "android.permission.DIAGNOSTIC"

.field public static final greylist-max-o DISABLE_HIDDEN_API_CHECKS:Ljava/lang/String; = "android.permission.DISABLE_HIDDEN_API_CHECKS"

.field public static final greylist-max-o DISABLE_INPUT_DEVICE:Ljava/lang/String; = "android.permission.DISABLE_INPUT_DEVICE"

.field public static final whitelist DISABLE_KEYGUARD:Ljava/lang/String; = "android.permission.DISABLE_KEYGUARD"

.field public static final whitelist DISABLE_SYSTEM_SOUND_EFFECTS:Ljava/lang/String; = "android.permission.DISABLE_SYSTEM_SOUND_EFFECTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o DISPATCH_NFC_MESSAGE:Ljava/lang/String; = "android.permission.DISPATCH_NFC_MESSAGE"

.field public static final whitelist DISPATCH_PROVISIONING_MESSAGE:Ljava/lang/String; = "android.permission.DISPATCH_PROVISIONING_MESSAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DOMAIN_VERIFICATION_AGENT:Ljava/lang/String; = "android.permission.DOMAIN_VERIFICATION_AGENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.permisson.DOUBLE_CLICK"

.field public static final whitelist DUMP:Ljava/lang/String; = "android.permission.DUMP"

.field public static final greylist-max-o DVB_DEVICE:Ljava/lang/String; = "android.permission.DVB_DEVICE"

.field public static final blacklist ENABLE_TEST_HARNESS_MODE:Ljava/lang/String; = "android.permission.ENABLE_TEST_HARNESS_MODE"

.field public static final whitelist ENTER_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.permission.ENTER_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXEMPT_FROM_AUDIO_RECORD_RESTRICTIONS:Ljava/lang/String; = "android.permission.EXEMPT_FROM_AUDIO_RECORD_RESTRICTIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXPAND_STATUS_BAR:Ljava/lang/String; = "android.permission.EXPAND_STATUS_BAR"

.field public static final blacklist EXTRACT_SMARTCLIP_DATA:Ljava/lang/String; = "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

.field public static final whitelist FACTORY_TEST:Ljava/lang/String; = "android.permission.FACTORY_TEST"

.field public static final greylist-max-o FILTER_EVENTS:Ljava/lang/String; = "android.permission.FILTER_EVENTS"

.field public static final blacklist FINGERPRINT_PRIVILEGED:Ljava/lang/String; = "com.samsung.android.permission.FINGERPRINT_PRIVILEGED"

.field public static final greylist-max-o FLASHLIGHT:Ljava/lang/String; = "android.permission.FLASHLIGHT"

.field public static final whitelist FORCE_BACK:Ljava/lang/String; = "android.permission.FORCE_BACK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FORCE_DEVICE_POLICY_MANAGER_LOGS:Ljava/lang/String; = "android.permission.FORCE_DEVICE_POLICY_MANAGER_LOGS"

.field public static final greylist-max-o FORCE_PERSISTABLE_URI_PERMISSIONS:Ljava/lang/String; = "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

.field public static final whitelist FORCE_STOP_PACKAGES:Ljava/lang/String; = "android.permission.FORCE_STOP_PACKAGES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE:Ljava/lang/String; = "android.permission.FOREGROUND_SERVICE"

.field public static final whitelist FOTA:Ljava/lang/String; = "com.sec.android.fotaclient.permission.FOTA"

.field public static final greylist-max-o FRAME_STATS:Ljava/lang/String; = "android.permission.FRAME_STATS"

.field public static final greylist-max-o FREEZE_SCREEN:Ljava/lang/String; = "android.permission.FREEZE_SCREEN"

.field public static final whitelist GET_ACCOUNTS:Ljava/lang/String; = "android.permission.GET_ACCOUNTS"

.field public static final whitelist GET_ACCOUNTS_PRIVILEGED:Ljava/lang/String; = "android.permission.GET_ACCOUNTS_PRIVILEGED"

.field public static final greylist-max-o GET_APP_GRANTED_URI_PERMISSIONS:Ljava/lang/String; = "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

.field public static final whitelist GET_APP_OPS_STATS:Ljava/lang/String; = "android.permission.GET_APP_OPS_STATS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o GET_DETAILED_TASKS:Ljava/lang/String; = "android.permission.GET_DETAILED_TASKS"

.field public static final whitelist GET_HISTORICAL_APP_OPS_STATS:Ljava/lang/String; = "android.permission.GET_HISTORICAL_APP_OPS_STATS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o GET_INTENT_SENDER_INTENT:Ljava/lang/String; = "android.permission.GET_INTENT_SENDER_INTENT"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist GET_PACKAGE_SIZE:Ljava/lang/String; = "android.permission.GET_PACKAGE_SIZE"

.field public static final greylist-max-o GET_PASSWORD:Ljava/lang/String; = "android.permission.GET_PASSWORD"

.field public static final blacklist GET_PEOPLE_TILE_PREVIEW:Ljava/lang/String; = "android.permission.GET_PEOPLE_TILE_PREVIEW"

.field public static final whitelist GET_PROCESS_STATE_AND_OOM_SCORE:Ljava/lang/String; = "android.permission.GET_PROCESS_STATE_AND_OOM_SCORE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GET_RUNTIME_PERMISSIONS:Ljava/lang/String; = "android.permission.GET_RUNTIME_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GET_TASKS:Ljava/lang/String; = "android.permission.GET_TASKS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_TOP_ACTIVITY_INFO:Ljava/lang/String; = "android.permission.GET_TOP_ACTIVITY_INFO"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GLOBAL_SEARCH:Ljava/lang/String; = "android.permission.GLOBAL_SEARCH"

.field public static final greylist-max-o GLOBAL_SEARCH_CONTROL:Ljava/lang/String; = "android.permission.GLOBAL_SEARCH_CONTROL"

.field public static final whitelist GRANT_PROFILE_OWNER_DEVICE_IDS_ACCESS:Ljava/lang/String; = "android.permission.GRANT_PROFILE_OWNER_DEVICE_IDS_ACCESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GRANT_RUNTIME_PERMISSIONS:Ljava/lang/String; = "android.permission.GRANT_RUNTIME_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GRANT_RUNTIME_PERMISSIONS_TO_TELEPHONY_DEFAULTS:Ljava/lang/String; = "android.permission.GRANT_RUNTIME_PERMISSIONS_TO_TELEPHONY_DEFAULTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HANDLE_CAR_MODE_CHANGES:Ljava/lang/String; = "android.permission.HANDLE_CAR_MODE_CHANGES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HARDWARE_TEST:Ljava/lang/String; = "android.permission.HARDWARE_TEST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HDMI_CEC:Ljava/lang/String; = "android.permission.HDMI_CEC"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HIDE_NON_SYSTEM_OVERLAY_WINDOWS:Ljava/lang/String; = "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist HIDE_OVERLAY_WINDOWS:Ljava/lang/String; = "android.permission.HIDE_OVERLAY_WINDOWS"

.field public static final whitelist HIGH_SAMPLING_RATE_SENSORS:Ljava/lang/String; = "android.permission.HIGH_SAMPLING_RATE_SENSORS"

.field public static final blacklist HQM_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

.field public static final whitelist INJECT_EVENTS:Ljava/lang/String; = "android.permission.INJECT_EVENTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INPUT_CONSUMER:Ljava/lang/String; = "android.permission.INPUT_CONSUMER"

.field public static final whitelist INSTALL_DPC_PACKAGES:Ljava/lang/String; = "android.permission.INSTALL_DPC_PACKAGES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_DYNAMIC_SYSTEM:Ljava/lang/String; = "android.permission.INSTALL_DYNAMIC_SYSTEM"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_EXISTING_PACKAGES:Ljava/lang/String; = "com.android.permission.INSTALL_EXISTING_PACKAGES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_GRANT_RUNTIME_PERMISSIONS:Ljava/lang/String; = "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field public static final whitelist INSTALL_LOCATION_TIME_ZONE_PROVIDER_SERVICE:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_TIME_ZONE_PROVIDER_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PACKAGES:Ljava/lang/String; = "android.permission.INSTALL_PACKAGES"

.field public static final whitelist INSTALL_PACKAGE_UPDATES:Ljava/lang/String; = "android.permission.INSTALL_PACKAGE_UPDATES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_PF:Ljava/lang/String; = "com.samsung.android.spay.permission.INSTALL_PF"

.field public static final whitelist INSTALL_SELF_UPDATES:Ljava/lang/String; = "android.permission.INSTALL_SELF_UPDATES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.permission.INSTALL_SHORTCUT"

.field public static final blacklist INSTALL_TEST_ONLY_PACKAGE:Ljava/lang/String; = "android.permission.INSTALL_TEST_ONLY_PACKAGE"

.field public static final whitelist INSTANT_APP_FOREGROUND_SERVICE:Ljava/lang/String; = "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

.field public static final whitelist INTENT_FILTER_VERIFICATION_AGENT:Ljava/lang/String; = "android.permission.INTENT_FILTER_VERIFICATION_AGENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INTERACT_ACROSS_PROFILES:Ljava/lang/String; = "android.permission.INTERACT_ACROSS_PROFILES"

.field public static final whitelist INTERACT_ACROSS_USERS:Ljava/lang/String; = "android.permission.INTERACT_ACROSS_USERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INTERACT_ACROSS_USERS_FULL:Ljava/lang/String; = "android.permission.INTERACT_ACROSS_USERS_FULL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INTERNAL_DELETE_CACHE_FILES:Ljava/lang/String; = "android.permission.INTERNAL_DELETE_CACHE_FILES"

.field public static final whitelist INTERNAL_SYSTEM_WINDOW:Ljava/lang/String; = "android.permission.INTERNAL_SYSTEM_WINDOW"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INTERNET:Ljava/lang/String; = "android.permission.INTERNET"

.field public static final whitelist INVOKE_CARRIER_SETUP:Ljava/lang/String; = "android.permission.INVOKE_CARRIER_SETUP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist IN_APP_SOUND:Ljava/lang/String; = "com.sec.android.permission.IN_APP_SOUND"

.field public static final blacklist KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "android.permission.KEEP_UNINSTALLED_PACKAGES"

.field public static final blacklist KEYGUARD_SERVICE:Ljava/lang/String; = "com.sec.knox.permission.KEYGUARD_SERVICE"

.field public static final blacklist KEYPHRASE_ENROLLMENT_APPLICATION:Ljava/lang/String; = "android.permission.KEYPHRASE_ENROLLMENT_APPLICATION"

.field public static final whitelist KILL_BACKGROUND_PROCESSES:Ljava/lang/String; = "android.permission.KILL_BACKGROUND_PROCESSES"

.field public static final whitelist KILL_UID:Ljava/lang/String; = "android.permission.KILL_UID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

.field public static final blacklist KNOX_ADVANCED_APP_MGMT:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

.field public static final blacklist KNOX_ADVANCED_RESTRICTION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

.field public static final blacklist KNOX_ADVANCED_SECURITY:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

.field public static final blacklist KNOX_ANALYTICS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ANALYTICS_INTERNAL"

.field public static final blacklist KNOX_APN:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APN"

.field public static final blacklist KNOX_APP_MGMT:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_MGMT"

.field public static final blacklist KNOX_APP_PERMISSION_MGMT:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_PERMISSION_MGMT"

.field public static final blacklist KNOX_APP_SEPARATION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

.field public static final whitelist KNOX_ATTESTATION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_ATTESTATION"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist KNOX_AUDIT_LOG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

.field public static final blacklist KNOX_BLUETOOTH:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

.field public static final blacklist KNOX_BLUETOOTH_SECUREMODE:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

.field public static final blacklist KNOX_BLUETOOTH_SECUREMODE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE_INTERNAL"

.field public static final blacklist KNOX_BROWSER_PROXY:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

.field public static final blacklist KNOX_BROWSER_SETTINGS:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

.field public static final whitelist KNOX_CCM:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CCM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist KNOX_CCM_KEYSTORE:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

.field public static final whitelist KNOX_CERTENROLL:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

.field public static final blacklist KNOX_CERTENROLL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CERTENROLL_INTERNAL"

.field public static final blacklist KNOX_CERTIFICATE:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

.field public static final blacklist KNOX_CERTIFICATE_ENROLLMENT:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

.field public static final blacklist KNOX_CERT_PROVISIONING:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

.field public static final blacklist KNOX_CLIPBOARD:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

.field public static final blacklist KNOX_CONTAINER:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER"

.field public static final blacklist KNOX_CONTAINER_RCP:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

.field public static final blacklist KNOX_CUSTOM_DEX:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

.field public static final blacklist KNOX_CUSTOM_PROKIOSK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

.field public static final blacklist KNOX_CUSTOM_SEALEDMODE:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

.field public static final blacklist KNOX_CUSTOM_SETTING:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

.field public static final blacklist KNOX_CUSTOM_SYSTEM:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

.field public static final blacklist KNOX_DATE_TIME:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DATE_TIME"

.field public static final blacklist KNOX_DEACTIVATE_LICENSE:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

.field public static final blacklist KNOX_DEVICE_CONFIGURATION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

.field public static final blacklist KNOX_DEVICE_REGISTRATION_REQUEST_INTENT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DEVICE_REGISTRATION_REQUEST_INTENT_INTERNAL"

.field public static final blacklist KNOX_DEX:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DEX"

.field public static final blacklist KNOX_DKS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DKS_INTERNAL"

.field public static final blacklist KNOX_DUAL_DAR:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

.field public static final blacklist KNOX_DUAL_DAR_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DUAL_DAR_INTERNAL"

.field public static final blacklist KNOX_DUAL_SIM:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DUAL_SIM"

.field public static final blacklist KNOX_EBILLING:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EBILLING"

.field public static final blacklist KNOX_EMAIL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EMAIL"

.field public static final blacklist KNOX_ENHANCED_ATTESTATION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

.field public static final blacklist KNOX_ENTERPRISE_DEVICE_ADMIN:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

.field public static final blacklist KNOX_EXCHANGE:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EXCHANGE"

.field public static final blacklist KNOX_FIREWALL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_FIREWALL"

.field public static final blacklist KNOX_GEOFENCING:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_GEOFENCING"

.field public static final blacklist KNOX_GLOBALPROXY:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

.field public static final blacklist KNOX_HDM:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_HDM"

.field public static final blacklist KNOX_HW_CONTROL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

.field public static final blacklist KNOX_INTERNAL_EXCEPTION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

.field public static final blacklist KNOX_INVENTORY:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_INVENTORY"

.field public static final blacklist KNOX_KES_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

.field public static final whitelist KNOX_KEYSTORE:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist KNOX_KIOSK_MODE:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

.field public static final blacklist KNOX_KIOSK_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KIOSK_MODE_INTERNAL"

.field public static final blacklist KNOX_KPECORE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KPECORE_INTERNAL"

.field public static final blacklist KNOX_KPU_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

.field public static final blacklist KNOX_LDAP:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LDAP"

.field public static final blacklist KNOX_LDAP_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LDAP_INTERNAL"

.field public static final blacklist KNOX_LICENSE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

.field public static final blacklist KNOX_LICENSE_LOG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

.field public static final blacklist KNOX_LOCATION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LOCATION"

.field public static final blacklist KNOX_LOCKSCREEN:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

.field public static final blacklist KNOX_MOBILE_THREAT_DEFENSE:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

.field public static final blacklist KNOX_MPOS:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MPOS"

.field public static final blacklist KNOX_MTP_DISABLED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MTP_DISABLED_INTERNAL"

.field public static final blacklist KNOX_MULTI_USER_MGMT:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

.field public static final blacklist KNOX_NDA_AI:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_AI"

.field public static final blacklist KNOX_NDA_DATA_ANALYTICS:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_DATA_ANALYTICS"

.field public static final blacklist KNOX_NDA_DEVICE_SETTINGS:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_DEVICE_SETTINGS"

.field public static final blacklist KNOX_NDA_PERIPHERAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_PERIPHERAL"

.field public static final blacklist KNOX_NETWORK_TRAFFIC_AGENT:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NETWORK_TRAFFIC_AGENT"

.field public static final blacklist KNOX_NOTIFY_ICCID_AVAILABLE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NOTIFY_ICCID_AVAILABLE_INTERNAL"

.field public static final blacklist KNOX_NPA:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NPA"

.field public static final blacklist KNOX_PHONE_RESTRICTION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

.field public static final blacklist KNOX_PROXY_ADMIN_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

.field public static final whitelist KNOX_RCP_SYNC_MGMT:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist KNOX_RECEIVE_BLOCKED_SMS_MMS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_RECEIVE_BLOCKED_SMS_MMS_INTERNAL"

.field public static final blacklist KNOX_REFRESH_CREDENTIAL_UI_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_REFRESH_CREDENTIAL_UI_INTERNAL"

.field public static final blacklist KNOX_REMOTE_CONTROL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

.field public static final blacklist KNOX_RESTRICTION_MGMT:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

.field public static final blacklist KNOX_ROAMING:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ROAMING"

.field public static final whitelist KNOX_SEAMS:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_SEAMS"

.field public static final blacklist KNOX_SEAMS_MGMT:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

.field public static final whitelist KNOX_SEAMS_SEPOLICY:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

.field public static final blacklist KNOX_SEAMS_SEPOLICY_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SEAMS_SEPOLICY_INTERNAL"

.field public static final blacklist KNOX_SECURITY:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SECURITY"

.field public static final blacklist KNOX_SENSITIVE_DATA_PROTECTION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

.field public static final blacklist KNOX_SET_PROXY_CREDENTIAL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SET_PROXY_CREDENTIAL_INTERNAL"

.field public static final blacklist KNOX_SILENT_ACTIVATION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SILENT_ACTIVATION_INTERNAL"

.field public static final blacklist KNOX_SIM_RESTRICTION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

.field public static final blacklist KNOX_SMARTCARD:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SMARTCARD"

.field public static final blacklist KNOX_SOLUTION_SDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SOLUTION_SDK"

.field public static final blacklist KNOX_SPDCONTROL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SPDCONTROL"

.field public static final blacklist KNOX_SSO:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SSO"

.field public static final blacklist KNOX_TIMA_KEYSTORE:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

.field public static final blacklist KNOX_TIMA_KEYSTORE_PER_APP:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

.field public static final blacklist KNOX_UCM_BIND_PLUGIN_SERVICE:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_BIND_PLUGIN_SERVICE"

.field public static final blacklist KNOX_UCM_ESE_MGMT:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

.field public static final blacklist KNOX_UCM_MGMT:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

.field public static final blacklist KNOX_UCM_OTHER_MGMT:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

.field public static final blacklist KNOX_UCM_PLUGIN_SERVICE:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

.field public static final blacklist KNOX_UCM_PRIVILEGED_MGMT:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

.field public static final blacklist KNOX_VPN:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN"

.field public static final blacklist KNOX_VPN_CONTAINER:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

.field public static final blacklist KNOX_VPN_GENERIC:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

.field public static final blacklist KNOX_VPN_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_INTERNAL"

.field public static final blacklist KNOX_VPN_SOLUTION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_SOLUTION"

.field public static final blacklist KNOX_WIFI:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_WIFI"

.field public static final blacklist KPM_OPERATION_REQUEST_INFORM_ACTION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KPM_OPERATION_REQUEST_INFORM_ACTION_INTERNAL"

.field public static final whitelist LAUNCH_DEVICE_MANAGER_SETUP:Ljava/lang/String; = "android.permission.LAUNCH_DEVICE_MANAGER_SETUP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LAUNCH_MULTI_PANE_SETTINGS_DEEP_LINK:Ljava/lang/String; = "android.permission.LAUNCH_MULTI_PANE_SETTINGS_DEEP_LINK"

.field public static final blacklist LAUNCH_SOFTWARE_UPDATE:Ljava/lang/String; = "com.samsung.permission.LAUNCH_SOFTWARE_UPDATE"

.field public static final greylist-max-o LAUNCH_TRUST_AGENT_SETTINGS:Ljava/lang/String; = "android.permission.LAUNCH_TRUST_AGENT_SETTINGS"

.field public static final blacklist LID_STATE:Ljava/lang/String; = "com.samsung.android.permission.LID_STATE"

.field public static final blacklist LISTEN_ALWAYS_REPORTED_SIGNAL_STRENGTH:Ljava/lang/String; = "android.permission.LISTEN_ALWAYS_REPORTED_SIGNAL_STRENGTH"

.field public static final whitelist LOADER_USAGE_STATS:Ljava/lang/String; = "android.permission.LOADER_USAGE_STATS"

.field public static final whitelist LOCAL_MAC_ADDRESS:Ljava/lang/String; = "android.permission.LOCAL_MAC_ADDRESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LOCATION_BYPASS:Ljava/lang/String; = "android.permission.LOCATION_BYPASS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LOCATION_HARDWARE:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field public static final whitelist LOCK_DEVICE:Ljava/lang/String; = "android.permission.LOCK_DEVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist LOCK_SECURITY_MONITOR:Ljava/lang/String; = "com.samsung.android.permission.LOCK_SECURITY_MONITOR"

.field public static final blacklist LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.permission.LOCK_TASK_MODE"

.field public static final blacklist LOG_COMPAT_CHANGE:Ljava/lang/String; = "android.permission.LOG_COMPAT_CHANGE"

.field public static final whitelist LOOP_RADIO:Ljava/lang/String; = "android.permission.LOOP_RADIO"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MAKE_UID_VISIBLE:Ljava/lang/String; = "android.permission.MAKE_UID_VISIBLE"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist MANAGE_ACCESSIBILITY:Ljava/lang/String; = "android.permission.MANAGE_ACCESSIBILITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MANAGE_ACCOUNTS:Ljava/lang/String; = "android.permission.MANAGE_ACCOUNTS"

.field public static final whitelist MANAGE_ACTIVITY_STACKS:Ljava/lang/String; = "android.permission.MANAGE_ACTIVITY_STACKS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MANAGE_ACTIVITY_TASKS:Ljava/lang/String; = "android.permission.MANAGE_ACTIVITY_TASKS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MANAGE_APPOPS:Ljava/lang/String; = "android.permission.MANAGE_APPOPS"

.field public static final whitelist MANAGE_APP_HIBERNATION:Ljava/lang/String; = "android.permission.MANAGE_APP_HIBERNATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MANAGE_APP_OPS_MODES:Ljava/lang/String; = "android.permission.MANAGE_APP_OPS_MODES"

.field public static final whitelist MANAGE_APP_OPS_RESTRICTIONS:Ljava/lang/String; = "android.permission.MANAGE_APP_OPS_RESTRICTIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_APP_PREDICTIONS:Ljava/lang/String; = "android.permission.MANAGE_APP_PREDICTIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_APP_TOKENS:Ljava/lang/String; = "android.permission.MANAGE_APP_TOKENS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MANAGE_AUDIO_POLICY:Ljava/lang/String; = "android.permission.MANAGE_AUDIO_POLICY"

.field public static final whitelist MANAGE_AUTO_FILL:Ljava/lang/String; = "android.permission.MANAGE_AUTO_FILL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MANAGE_BIND_INSTANT_SERVICE:Ljava/lang/String; = "android.permission.MANAGE_BIND_INSTANT_SERVICE"

.field public static final blacklist MANAGE_BIOMETRIC:Ljava/lang/String; = "android.permission.MANAGE_BIOMETRIC"

.field public static final blacklist MANAGE_BIOMETRIC_DIALOG:Ljava/lang/String; = "android.permission.MANAGE_BIOMETRIC_DIALOG"

.field public static final whitelist MANAGE_BLUETOOTH_WHEN_WIRELESS_CONSENT_REQUIRED:Ljava/lang/String; = "android.permission.MANAGE_BLUETOOTH_WHEN_WIRELESS_CONSENT_REQUIRED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MANAGE_CAMERA:Ljava/lang/String; = "android.permission.MANAGE_CAMERA"

.field public static final whitelist MANAGE_CARRIER_OEM_UNLOCK_STATE:Ljava/lang/String; = "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_CA_CERTIFICATES:Ljava/lang/String; = "android.permission.MANAGE_CA_CERTIFICATES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_CLOUDSEARCH:Ljava/lang/String; = "android.permission.MANAGE_CLOUDSEARCH"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MANAGE_COMPANION_DEVICES:Ljava/lang/String; = "android.permission.MANAGE_COMPANION_DEVICES"

.field public static final whitelist MANAGE_CONTENT_CAPTURE:Ljava/lang/String; = "android.permission.MANAGE_CONTENT_CAPTURE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_CONTENT_SUGGESTIONS:Ljava/lang/String; = "android.permission.MANAGE_CONTENT_SUGGESTIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MANAGE_CPA:Ljava/lang/String; = "com.kddi.android.permission.MANAGE_CPA"

.field public static final blacklist MANAGE_CRATES:Ljava/lang/String; = "android.permission.MANAGE_CRATES"

.field public static final blacklist MANAGE_CREDENTIAL_MANAGEMENT_APP:Ljava/lang/String; = "android.permission.MANAGE_CREDENTIAL_MANAGEMENT_APP"

.field public static final whitelist MANAGE_DEBUGGING:Ljava/lang/String; = "android.permission.MANAGE_DEBUGGING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_DEVICE_ADMINS:Ljava/lang/String; = "android.permission.MANAGE_DEVICE_ADMINS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_DOCUMENTS:Ljava/lang/String; = "android.permission.MANAGE_DOCUMENTS"

.field public static final blacklist MANAGE_DYNAMIC_SYSTEM:Ljava/lang/String; = "android.permission.MANAGE_DYNAMIC_SYSTEM"

.field public static final whitelist MANAGE_ETHERNET_NETWORKS:Ljava/lang/String; = "android.permission.MANAGE_ETHERNET_NETWORKS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.MANAGE_EXTERNAL_STORAGE"

.field public static final blacklist MANAGE_FACE:Ljava/lang/String; = "com.samsung.android.bio.face.permission.MANAGE_FACE"

.field public static final whitelist MANAGE_FACTORY_RESET_PROTECTION:Ljava/lang/String; = "android.permission.MANAGE_FACTORY_RESET_PROTECTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MANAGE_FINGERPRINT:Ljava/lang/String; = "android.permission.MANAGE_FINGERPRINT"

.field public static final whitelist MANAGE_GAME_ACTIVITY:Ljava/lang/String; = "android.permission.MANAGE_GAME_ACTIVITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_GAME_MODE:Ljava/lang/String; = "android.permission.MANAGE_GAME_MODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_HOTWORD_DETECTION:Ljava/lang/String; = "android.permission.MANAGE_HOTWORD_DETECTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_IPSEC_TUNNELS:Ljava/lang/String; = "android.permission.MANAGE_IPSEC_TUNNELS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MANAGE_LOWPAN_INTERFACES:Ljava/lang/String; = "android.permission.MANAGE_LOWPAN_INTERFACES"

.field public static final whitelist MANAGE_LOW_POWER_STANDBY:Ljava/lang/String; = "android.permission.MANAGE_LOW_POWER_STANDBY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_MEDIA:Ljava/lang/String; = "android.permission.MANAGE_MEDIA"

.field public static final greylist-max-o MANAGE_MEDIA_PROJECTION:Ljava/lang/String; = "android.permission.MANAGE_MEDIA_PROJECTION"

.field public static final whitelist MANAGE_MUSIC_RECOGNITION:Ljava/lang/String; = "android.permission.MANAGE_MUSIC_RECOGNITION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MANAGE_NETWORK_POLICY:Ljava/lang/String; = "android.permission.MANAGE_NETWORK_POLICY"

.field public static final greylist-max-o MANAGE_NOTIFICATIONS:Ljava/lang/String; = "android.permission.MANAGE_NOTIFICATIONS"

.field public static final whitelist MANAGE_NOTIFICATION_LISTENERS:Ljava/lang/String; = "android.permission.MANAGE_NOTIFICATION_LISTENERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_ONE_TIME_PERMISSION_SESSIONS:Ljava/lang/String; = "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_ONGOING_CALLS:Ljava/lang/String; = "android.permission.MANAGE_ONGOING_CALLS"

.field public static final whitelist MANAGE_OWN_CALLS:Ljava/lang/String; = "android.permission.MANAGE_OWN_CALLS"

.field public static final whitelist MANAGE_PROFILE_AND_DEVICE_OWNERS:Ljava/lang/String; = "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_ROLE_HOLDERS:Ljava/lang/String; = "android.permission.MANAGE_ROLE_HOLDERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_ROLLBACKS:Ljava/lang/String; = "android.permission.MANAGE_ROLLBACKS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_ROTATION_RESOLVER:Ljava/lang/String; = "android.permission.MANAGE_ROTATION_RESOLVER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_SAFETY_CENTER:Ljava/lang/String; = "android.permission.MANAGE_SAFETY_CENTER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MANAGE_SCOPED_ACCESS_DIRECTORY_PERMISSIONS:Ljava/lang/String; = "android.permission.MANAGE_SCOPED_ACCESS_DIRECTORY_PERMISSIONS"

.field public static final whitelist MANAGE_SEARCH_UI:Ljava/lang/String; = "android.permission.MANAGE_SEARCH_UI"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MANAGE_SENSORS:Ljava/lang/String; = "android.permission.MANAGE_SENSORS"

.field public static final whitelist MANAGE_SENSOR_PRIVACY:Ljava/lang/String; = "android.permission.MANAGE_SENSOR_PRIVACY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MANAGE_SLICE_PERMISSIONS:Ljava/lang/String; = "android.permission.MANAGE_SLICE_PERMISSIONS"

.field public static final whitelist MANAGE_SMARTSPACE:Ljava/lang/String; = "android.permission.MANAGE_SMARTSPACE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_SOUND_TRIGGER:Ljava/lang/String; = "android.permission.MANAGE_SOUND_TRIGGER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_SPEECH_RECOGNITION:Ljava/lang/String; = "android.permission.MANAGE_SPEECH_RECOGNITION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.permission.MANAGE_SUBSCRIPTION_PLANS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_TEST_NETWORKS:Ljava/lang/String; = "android.permission.MANAGE_TEST_NETWORKS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_TIME_AND_ZONE_DETECTION:Ljava/lang/String; = "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MANAGE_TOAST_RATE_LIMITING:Ljava/lang/String; = "android.permission.MANAGE_TOAST_RATE_LIMITING"

.field public static final whitelist MANAGE_UI_TRANSLATION:Ljava/lang/String; = "android.permission.MANAGE_UI_TRANSLATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_USB:Ljava/lang/String; = "android.permission.MANAGE_USB"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_USERS:Ljava/lang/String; = "android.permission.MANAGE_USERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_USER_OEM_UNLOCK_STATE:Ljava/lang/String; = "android.permission.MANAGE_USER_OEM_UNLOCK_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MANAGE_VOICE_KEYPHRASES:Ljava/lang/String; = "android.permission.MANAGE_VOICE_KEYPHRASES"

.field public static final whitelist MANAGE_WALLPAPER_EFFECTS_GENERATION:Ljava/lang/String; = "android.permission.MANAGE_WALLPAPER_EFFECTS_GENERATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_WEAK_ESCROW_TOKEN:Ljava/lang/String; = "android.permission.MANAGE_WEAK_ESCROW_TOKEN"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_WIFI_COUNTRY_CODE:Ljava/lang/String; = "android.permission.MANAGE_WIFI_COUNTRY_CODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MANAGE_WIFI_INTERFACES:Ljava/lang/String; = "android.permission.MANAGE_WIFI_INTERFACES"

.field public static final whitelist MANAGE_WIFI_NETWORK_SELECTION:Ljava/lang/String; = "android.permission.MANAGE_WIFI_NETWORK_SELECTION"

.field public static final whitelist MARK_DEVICE_ORGANIZATION_OWNED:Ljava/lang/String; = "android.permission.MARK_DEVICE_ORGANIZATION_OWNED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MASTER_CLEAR:Ljava/lang/String; = "android.permission.MASTER_CLEAR"

.field public static final blacklist MDM_CONTENT_PROVIDER:Ljava/lang/String; = "com.sec.enterprise.knox.MDM_CONTENT_PROVIDER"

.field public static final whitelist MDM_ENTERPRISE_TIMA_NOTIFICATION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field public static final blacklist MDM_SILENT_ACTIVATION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

.field public static final whitelist MDM_SSO:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SSO"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MEDIA_CONTENT_CONTROL:Ljava/lang/String; = "android.permission.MEDIA_CONTENT_CONTROL"

.field public static final blacklist MEDIA_RESOURCE_OVERRIDE_PID:Ljava/lang/String; = "android.permission.MEDIA_RESOURCE_OVERRIDE_PID"

.field public static final greylist-max-o MODIFY_ACCESSIBILITY_DATA:Ljava/lang/String; = "android.permission.MODIFY_ACCESSIBILITY_DATA"

.field public static final whitelist MODIFY_APPWIDGET_BIND_PERMISSIONS:Ljava/lang/String; = "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODIFY_AUDIO_ROUTING:Ljava/lang/String; = "android.permission.MODIFY_AUDIO_ROUTING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODIFY_AUDIO_SETTINGS:Ljava/lang/String; = "android.permission.MODIFY_AUDIO_SETTINGS"

.field public static final whitelist MODIFY_CELL_BROADCASTS:Ljava/lang/String; = "android.permission.MODIFY_CELL_BROADCASTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODIFY_DAY_NIGHT_MODE:Ljava/lang/String; = "android.permission.MODIFY_DAY_NIGHT_MODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MODIFY_DEFAULT_AUDIO_EFFECTS:Ljava/lang/String; = "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

.field public static final whitelist MODIFY_NETWORK_ACCOUNTING:Ljava/lang/String; = "android.permission.MODIFY_NETWORK_ACCOUNTING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODIFY_PARENTAL_CONTROLS:Ljava/lang/String; = "android.permission.MODIFY_PARENTAL_CONTROLS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODIFY_PHONE_STATE:Ljava/lang/String; = "android.permission.MODIFY_PHONE_STATE"

.field public static final whitelist MODIFY_QUIET_MODE:Ljava/lang/String; = "android.permission.MODIFY_QUIET_MODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MODIFY_REFRESH_RATE_SWITCHING_TYPE:Ljava/lang/String; = "android.permission.MODIFY_REFRESH_RATE_SWITCHING_TYPE"

.field public static final whitelist MODIFY_SETTINGS_OVERRIDEABLE_BY_RESTORE:Ljava/lang/String; = "android.permission.MODIFY_SETTINGS_OVERRIDEABLE_BY_RESTORE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MODIFY_THEME:Ljava/lang/String; = "com.samsung.android.permission.MODIFY_THEME"

.field public static final greylist-max-o MODIFY_THEME_OVERLAY:Ljava/lang/String; = "android.permission.MODIFY_THEME_OVERLAY"

.field public static final blacklist MODIFY_TOUCH_MODE_STATE:Ljava/lang/String; = "android.permission.MODIFY_TOUCH_MODE_STATE"

.field public static final blacklist MODIFY_USER_PREFERRED_DISPLAY_MODE:Ljava/lang/String; = "android.permission.MODIFY_USER_PREFERRED_DISPLAY_MODE"

.field public static final blacklist MONITOR_DEFAULT_SMS_PACKAGE:Ljava/lang/String; = "android.permission.MONITOR_DEFAULT_SMS_PACKAGE"

.field public static final blacklist MONITOR_DEVICE_CONFIG_ACCESS:Ljava/lang/String; = "android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

.field public static final blacklist MONITOR_INPUT:Ljava/lang/String; = "android.permission.MONITOR_INPUT"

.field public static final whitelist MOUNT_FORMAT_FILESYSTEMS:Ljava/lang/String; = "android.permission.MOUNT_FORMAT_FILESYSTEMS"

.field public static final whitelist MOUNT_UNMOUNT_FILESYSTEMS:Ljava/lang/String; = "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

.field public static final whitelist MOVE_PACKAGE:Ljava/lang/String; = "android.permission.MOVE_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MTP_DISABLED:Ljava/lang/String; = "com.sec.restriction.permission.MTP_DISABLED"

.field public static final blacklist MULTI_CONTROL_RECEIVER_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.MULTI_CONTROL_RECEIVER_PERMISSION"

.field public static final blacklist MULTI_WINDOW_MONITOR:Ljava/lang/String; = "com.samsung.android.permission.MULTI_WINDOW_MONITOR"

.field public static final whitelist NEARBY_WIFI_DEVICES:Ljava/lang/String; = "android.permission.NEARBY_WIFI_DEVICES"

.field public static final whitelist NETWORK_AIRPLANE_MODE:Ljava/lang/String; = "android.permission.NETWORK_AIRPLANE_MODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o NETWORK_BYPASS_PRIVATE_DNS:Ljava/lang/String; = "android.permission.NETWORK_BYPASS_PRIVATE_DNS"

.field public static final whitelist NETWORK_CARRIER_PROVISIONING:Ljava/lang/String; = "android.permission.NETWORK_CARRIER_PROVISIONING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NETWORK_FACTORY:Ljava/lang/String; = "android.permission.NETWORK_FACTORY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NETWORK_MANAGED_PROVISIONING:Ljava/lang/String; = "android.permission.NETWORK_MANAGED_PROVISIONING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NETWORK_SCAN:Ljava/lang/String; = "android.permission.NETWORK_SCAN"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NETWORK_SETTINGS:Ljava/lang/String; = "android.permission.NETWORK_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NETWORK_SETUP_WIZARD:Ljava/lang/String; = "android.permission.NETWORK_SETUP_WIZARD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NETWORK_SIGNAL_STRENGTH_WAKEUP:Ljava/lang/String; = "android.permission.NETWORK_SIGNAL_STRENGTH_WAKEUP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NETWORK_STACK:Ljava/lang/String; = "android.permission.NETWORK_STACK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NETWORK_STATS_PROVIDER:Ljava/lang/String; = "android.permission.NETWORK_STATS_PROVIDER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o NET_ADMIN:Ljava/lang/String; = "android.permission.NET_ADMIN"

.field public static final greylist-max-o NET_TUNNELING:Ljava/lang/String; = "android.permission.NET_TUNNELING"

.field public static final whitelist NFC:Ljava/lang/String; = "android.permission.NFC"

.field public static final greylist-max-o NFC_HANDOVER_STATUS:Ljava/lang/String; = "android.permission.NFC_HANDOVER_STATUS"

.field public static final whitelist NFC_PREFERRED_PAYMENT_INFO:Ljava/lang/String; = "android.permission.NFC_PREFERRED_PAYMENT_INFO"

.field public static final whitelist NFC_SET_CONTROLLER_ALWAYS_ON:Ljava/lang/String; = "android.permission.NFC_SET_CONTROLLER_ALWAYS_ON"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NFC_TRANSACTION_EVENT:Ljava/lang/String; = "android.permission.NFC_TRANSACTION_EVENT"

.field public static final whitelist NOTIFICATION_DURING_SETUP:Ljava/lang/String; = "android.permission.NOTIFICATION_DURING_SETUP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o NOTIFY_PENDING_SYSTEM_UPDATE:Ljava/lang/String; = "android.permission.NOTIFY_PENDING_SYSTEM_UPDATE"

.field public static final whitelist NOTIFY_TV_INPUTS:Ljava/lang/String; = "android.permission.NOTIFY_TV_INPUTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OBSERVER:Ljava/lang/String; = "com.samsung.container.OBSERVER"

.field public static final whitelist OBSERVE_APP_USAGE:Ljava/lang/String; = "android.permission.OBSERVE_APP_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o OBSERVE_GRANT_REVOKE_PERMISSIONS:Ljava/lang/String; = "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

.field public static final whitelist OBSERVE_NETWORK_POLICY:Ljava/lang/String; = "android.permission.OBSERVE_NETWORK_POLICY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OBSERVE_ROLE_HOLDERS:Ljava/lang/String; = "android.permission.OBSERVE_ROLE_HOLDERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OBSERVE_SENSOR_PRIVACY:Ljava/lang/String; = "android.permission.OBSERVE_SENSOR_PRIVACY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o OEM_UNLOCK_STATE:Ljava/lang/String; = "android.permission.OEM_UNLOCK_STATE"

.field public static final whitelist OPEN_ACCESSIBILITY_DETAILS_SETTINGS:Ljava/lang/String; = "android.permission.OPEN_ACCESSIBILITY_DETAILS_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OTG_CHARGE_BLOCK:Ljava/lang/String; = "com.sec.permission.OTG_CHARGE_BLOCK"

.field public static final blacklist OVERRIDE_COMPAT_CHANGE_CONFIG:Ljava/lang/String; = "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

.field public static final whitelist OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD:Ljava/lang/String; = "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OVERRIDE_DISPLAY_MODE_REQUESTS:Ljava/lang/String; = "android.permission.OVERRIDE_DISPLAY_MODE_REQUESTS"

.field public static final whitelist OVERRIDE_WIFI_CONFIG:Ljava/lang/String; = "android.permission.OVERRIDE_WIFI_CONFIG"

.field public static final blacklist PACKAGE_ROLLBACK_AGENT:Ljava/lang/String; = "android.permission.PACKAGE_ROLLBACK_AGENT"

.field public static final whitelist PACKAGE_USAGE_STATS:Ljava/lang/String; = "android.permission.PACKAGE_USAGE_STATS"

.field public static final whitelist PACKAGE_VERIFICATION_AGENT:Ljava/lang/String; = "android.permission.PACKAGE_VERIFICATION_AGENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PACKAGE_VERIFICATION_AGENT2:Ljava/lang/String; = "com.samsung.android.permission.PACKAGE_VERIFICATION_AGENT2"

.field public static final whitelist PACKET_KEEPALIVE_OFFLOAD:Ljava/lang/String; = "android.permission.PACKET_KEEPALIVE_OFFLOAD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PAGEBOOST:Ljava/lang/String; = "com.android.server.am.permission.PAGEBOOST"

.field public static final blacklist PALM_MOTION:Ljava/lang/String; = "com.samsung.permission.PALM_MOTION"

.field public static final blacklist PEEK_DROPBOX_DATA:Ljava/lang/String; = "android.permission.PEEK_DROPBOX_DATA"

.field public static final whitelist PEERS_MAC_ADDRESS:Ljava/lang/String; = "android.permission.PEERS_MAC_ADDRESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERFORM_CDMA_PROVISIONING:Ljava/lang/String; = "android.permission.PERFORM_CDMA_PROVISIONING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERFORM_IMS_SINGLE_REGISTRATION:Ljava/lang/String; = "android.permission.PERFORM_IMS_SINGLE_REGISTRATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERFORM_SIM_ACTIVATION:Ljava/lang/String; = "android.permission.PERFORM_SIM_ACTIVATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_ACTIVITY:Ljava/lang/String; = "android.permission.PERSISTENT_ACTIVITY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist PLM_SERVICE_ACCESS:Ljava/lang/String; = "com.android.server.enterprise.plm.permission.PLM_SERVICE_ACCESS"

.field public static final whitelist POST_NOTIFICATIONS:Ljava/lang/String; = "android.permission.POST_NOTIFICATIONS"

.field public static final whitelist POWER_SAVER:Ljava/lang/String; = "android.permission.POWER_SAVER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROCESS_OUTGOING_CALLS:Ljava/lang/String; = "android.permission.PROCESS_OUTGOING_CALLS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist PROVIDER:Ljava/lang/String; = "com.sec.android.diagmonagent.permission.PROVIDER"

.field public static final whitelist PROVIDE_RESOLVER_RANKER_SERVICE:Ljava/lang/String; = "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROVIDE_TRUST_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROVISION_DEMO_DEVICE:Ljava/lang/String; = "android.permission.PROVISION_DEMO_DEVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PROVISION_HOTSPOT_TRIGGER:Ljava/lang/String; = "com.samsung.unifiedtp.permission.PROVISION_HOTSPOT_TRIGGER"

.field public static final whitelist PUSH:Ljava/lang/String; = "com.sec.android.fota.permission.PUSH"

.field public static final whitelist QUERY_ADMIN_POLICY:Ljava/lang/String; = "android.permission.QUERY_ADMIN_POLICY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUERY_ALL_PACKAGES:Ljava/lang/String; = "android.permission.QUERY_ALL_PACKAGES"

.field public static final blacklist QUERY_AUDIO_STATE:Ljava/lang/String; = "android.permission.QUERY_AUDIO_STATE"

.field public static final greylist-max-o QUERY_DO_NOT_ASK_CREDENTIALS_ON_BOOT:Ljava/lang/String; = "android.permission.QUERY_DO_NOT_ASK_CREDENTIALS_ON_BOOT"

.field public static final whitelist QUERY_TIME_ZONE_RULES:Ljava/lang/String; = "android.permission.QUERY_TIME_ZONE_RULES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUERY_USERS:Ljava/lang/String; = "android.permission.QUERY_USERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_SCAN_WITHOUT_LOCATION:Ljava/lang/String; = "android.permission.RADIO_SCAN_WITHOUT_LOCATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_ACTIVE_EMERGENCY_SESSION:Ljava/lang/String; = "android.permission.READ_ACTIVE_EMERGENCY_SESSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_APP_SPECIFIC_LOCALES:Ljava/lang/String; = "android.permission.READ_APP_SPECIFIC_LOCALES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_ASSISTANT_APP_SEARCH_DATA:Ljava/lang/String; = "android.permission.READ_ASSISTANT_APP_SEARCH_DATA"

.field public static final whitelist READ_BASIC_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_BASIC_PHONE_STATE"

.field public static final greylist-max-o READ_BLOCKED_NUMBERS:Ljava/lang/String; = "android.permission.READ_BLOCKED_NUMBERS"

.field public static final whitelist READ_CALENDAR:Ljava/lang/String; = "android.permission.READ_CALENDAR"

.field public static final whitelist READ_CALL_LOG:Ljava/lang/String; = "android.permission.READ_CALL_LOG"

.field public static final whitelist READ_CARRIER_APP_INFO:Ljava/lang/String; = "android.permission.READ_CARRIER_APP_INFO"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_CELL_BROADCASTS:Ljava/lang/String; = "android.permission.READ_CELL_BROADCASTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_CLIPBOARD_IN_BACKGROUND:Ljava/lang/String; = "android.permission.READ_CLIPBOARD_IN_BACKGROUND"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist READ_COMPAT_CHANGE_CONFIG:Ljava/lang/String; = "android.permission.READ_COMPAT_CHANGE_CONFIG"

.field public static final whitelist READ_CONTACTS:Ljava/lang/String; = "android.permission.READ_CONTACTS"

.field public static final whitelist READ_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.permission.READ_CONTENT_RATING_SYSTEMS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_DATABASES:Ljava/lang/String; = "com.samsung.android.fota.permission.READ_DATABASES"

.field public static final whitelist READ_DEVICE_CONFIG:Ljava/lang/String; = "android.permission.READ_DEVICE_CONFIG"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_DREAM_STATE:Ljava/lang/String; = "android.permission.READ_DREAM_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist READ_DREAM_SUPPRESSION:Ljava/lang/String; = "android.permission.READ_DREAM_SUPPRESSION"

.field public static final whitelist READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"

.field public static final greylist-max-r READ_FRAME_BUFFER:Ljava/lang/String; = "android.permission.READ_FRAME_BUFFER"

.field public static final blacklist READ_FRAME_BUFFER_IGNORE_POLICY:Ljava/lang/String; = "com.samsung.android.permission.READ_FRAME_BUFFER_IGNORE_POLICY"

.field public static final whitelist READ_GLOBAL_APP_SEARCH_DATA:Ljava/lang/String; = "android.permission.READ_GLOBAL_APP_SEARCH_DATA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o READ_HISTORY_BOOKMARKS:Ljava/lang/String; = "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

.field public static final whitelist READ_HOME_APP_SEARCH_DATA:Ljava/lang/String; = "android.permission.READ_HOME_APP_SEARCH_DATA"

.field public static final whitelist READ_INPUT_STATE:Ljava/lang/String; = "android.permission.READ_INPUT_STATE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist READ_INSTALL_SESSIONS:Ljava/lang/String; = "android.permission.READ_INSTALL_SESSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist READ_KNOX_NOTIFICATION:Ljava/lang/String; = "com.samsung.permission.READ_KNOX_NOTIFICATION"

.field public static final whitelist READ_LOGS:Ljava/lang/String; = "android.permission.READ_LOGS"

.field public static final greylist-max-o READ_LOWPAN_CREDENTIAL:Ljava/lang/String; = "android.permission.READ_LOWPAN_CREDENTIAL"

.field public static final whitelist READ_MEDIA_AUDIO:Ljava/lang/String; = "android.permission.READ_MEDIA_AUDIO"

.field public static final whitelist READ_MEDIA_IMAGES:Ljava/lang/String; = "android.permission.READ_MEDIA_IMAGES"

.field public static final whitelist READ_MEDIA_VIDEO:Ljava/lang/String; = "android.permission.READ_MEDIA_VIDEO"

.field public static final whitelist READ_NEARBY_STREAMING_POLICY:Ljava/lang/String; = "android.permission.READ_NEARBY_STREAMING_POLICY"

.field public static final whitelist READ_NETWORK_USAGE_HISTORY:Ljava/lang/String; = "android.permission.READ_NETWORK_USAGE_HISTORY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_OEM_UNLOCK_STATE:Ljava/lang/String; = "android.permission.READ_OEM_UNLOCK_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist READ_OMC_CONFIG:Ljava/lang/String; = "com.samsung.android.sdm.config.provider.READ_OMC_CONFIG"

.field public static final whitelist READ_PEOPLE_DATA:Ljava/lang/String; = "android.permission.READ_PEOPLE_DATA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_PHONE_NUMBERS:Ljava/lang/String; = "android.permission.READ_PHONE_NUMBERS"

.field public static final whitelist READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field public static final whitelist READ_PRECISE_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PRECISE_PHONE_STATE"

.field public static final whitelist READ_PRINT_SERVICES:Ljava/lang/String; = "android.permission.READ_PRINT_SERVICES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_PRINT_SERVICE_RECOMMENDATIONS:Ljava/lang/String; = "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PRIVILEGED_PHONE_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o READ_PROFILE:Ljava/lang/String; = "android.permission.READ_PROFILE"

.field public static final whitelist READ_PROJECTION_STATE:Ljava/lang/String; = "android.permission.READ_PROJECTION_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_RUNTIME_PROFILES:Ljava/lang/String; = "android.permission.READ_RUNTIME_PROFILES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_SAFETY_CENTER_STATUS:Ljava/lang/String; = "android.permission.READ_SAFETY_CENTER_STATUS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_SEARCH_INDEXABLES:Ljava/lang/String; = "android.permission.READ_SEARCH_INDEXABLES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_SMS:Ljava/lang/String; = "android.permission.READ_SMS"

.field public static final greylist-max-o READ_SOCIAL_STREAM:Ljava/lang/String; = "android.permission.READ_SOCIAL_STREAM"

.field public static final whitelist READ_SYNC_SETTINGS:Ljava/lang/String; = "android.permission.READ_SYNC_SETTINGS"

.field public static final whitelist READ_SYNC_STATS:Ljava/lang/String; = "android.permission.READ_SYNC_STATS"

.field public static final whitelist READ_SYSTEM_UPDATE_INFO:Ljava/lang/String; = "android.permission.READ_SYSTEM_UPDATE_INFO"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o READ_USER_DICTIONARY:Ljava/lang/String; = "android.permission.READ_USER_DICTIONARY"

.field public static final whitelist READ_VOICEMAIL:Ljava/lang/String; = "com.android.voicemail.permission.READ_VOICEMAIL"

.field public static final whitelist READ_WALLPAPER_INTERNAL:Ljava/lang/String; = "android.permission.READ_WALLPAPER_INTERNAL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist READ_WIFI_CREDENTIAL:Ljava/lang/String; = "android.permission.READ_WIFI_CREDENTIAL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REAL_GET_TASKS:Ljava/lang/String; = "android.permission.REAL_GET_TASKS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REBOOT:Ljava/lang/String; = "android.permission.REBOOT"

.field public static final whitelist RECEIVE_BLUETOOTH_MAP:Ljava/lang/String; = "android.permission.RECEIVE_BLUETOOTH_MAP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECEIVE_BOOT_COMPLETED:Ljava/lang/String; = "android.permission.RECEIVE_BOOT_COMPLETED"

.field public static final blacklist RECEIVE_CHANGE_UNLOCK_KEYCODE:Ljava/lang/String; = "com.att.iqi.permission.RECEIVE_CHANGE_UNLOCK_KEYCODE"

.field public static final blacklist RECEIVE_CONFIG_CHANGED:Ljava/lang/String; = "com.samsung.android.sdm.config.permission.RECEIVE_CONFIG_CHANGED"

.field public static final whitelist RECEIVE_DATA_ACTIVITY_CHANGE:Ljava/lang/String; = "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECEIVE_DEVICE_CUSTOMIZATION_READY:Ljava/lang/String; = "android.permission.RECEIVE_DEVICE_CUSTOMIZATION_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECEIVE_EMERGENCY_BROADCAST:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o RECEIVE_MEDIA_RESOURCE_USAGE:Ljava/lang/String; = "android.permission.RECEIVE_MEDIA_RESOURCE_USAGE"

.field public static final whitelist RECEIVE_MMS:Ljava/lang/String; = "android.permission.RECEIVE_MMS"

.field public static final whitelist RECEIVE_SMS:Ljava/lang/String; = "android.permission.RECEIVE_SMS"

.field public static final greylist-max-o RECEIVE_STK_COMMANDS:Ljava/lang/String; = "android.permission.RECEIVE_STK_COMMANDS"

.field public static final whitelist RECEIVE_WAP_PUSH:Ljava/lang/String; = "android.permission.RECEIVE_WAP_PUSH"

.field public static final whitelist RECEIVE_WIFI_CREDENTIAL_CHANGE:Ljava/lang/String; = "android.permission.RECEIVE_WIFI_CREDENTIAL_CHANGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECORD_AUDIO:Ljava/lang/String; = "android.permission.RECORD_AUDIO"

.field public static final whitelist RECORD_BACKGROUND_AUDIO:Ljava/lang/String; = "android.permission.RECORD_BACKGROUND_AUDIO"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECOVERY:Ljava/lang/String; = "android.permission.RECOVERY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECOVER_KEYSTORE:Ljava/lang/String; = "android.permission.RECOVER_KEYSTORE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTER_CALL_PROVIDER:Ljava/lang/String; = "android.permission.REGISTER_CALL_PROVIDER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTER_CONNECTION_MANAGER:Ljava/lang/String; = "android.permission.REGISTER_CONNECTION_MANAGER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REGISTER_MEDIA_RESOURCE_OBSERVER:Ljava/lang/String; = "android.permission.REGISTER_MEDIA_RESOURCE_OBSERVER"

.field public static final whitelist REGISTER_SIM_SUBSCRIPTION:Ljava/lang/String; = "android.permission.REGISTER_SIM_SUBSCRIPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTER_STATS_PULL_ATOM:Ljava/lang/String; = "android.permission.REGISTER_STATS_PULL_ATOM"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o REGISTER_WINDOW_MANAGER_LISTENERS:Ljava/lang/String; = "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

.field public static final greylist-max-o REMOTE_AUDIO_PLAYBACK:Ljava/lang/String; = "android.permission.REMOTE_AUDIO_PLAYBACK"

.field public static final whitelist REMOTE_DISPLAY_PROVIDER:Ljava/lang/String; = "android.permission.REMOTE_DISPLAY_PROVIDER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_DRM_CERTIFICATES:Ljava/lang/String; = "android.permission.REMOVE_DRM_CERTIFICATES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_TASKS:Ljava/lang/String; = "android.permission.REMOVE_TASKS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RENOUNCE_PERMISSIONS:Ljava/lang/String; = "android.permission.RENOUNCE_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REORDER_TASKS:Ljava/lang/String; = "android.permission.REORDER_TASKS"

.field public static final blacklist REQUEST_AUTHNR_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

.field public static final whitelist REQUEST_COMPANION_PROFILE_APP_STREAMING:Ljava/lang/String; = "android.permission.REQUEST_COMPANION_PROFILE_APP_STREAMING"

.field public static final whitelist REQUEST_COMPANION_PROFILE_AUTOMOTIVE_PROJECTION:Ljava/lang/String; = "android.permission.REQUEST_COMPANION_PROFILE_AUTOMOTIVE_PROJECTION"

.field public static final whitelist REQUEST_COMPANION_PROFILE_COMPUTER:Ljava/lang/String; = "android.permission.REQUEST_COMPANION_PROFILE_COMPUTER"

.field public static final whitelist REQUEST_COMPANION_PROFILE_WATCH:Ljava/lang/String; = "android.permission.REQUEST_COMPANION_PROFILE_WATCH"

.field public static final whitelist REQUEST_COMPANION_RUN_IN_BACKGROUND:Ljava/lang/String; = "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

.field public static final whitelist REQUEST_COMPANION_SELF_MANAGED:Ljava/lang/String; = "android.permission.REQUEST_COMPANION_SELF_MANAGED"

.field public static final whitelist REQUEST_COMPANION_START_FOREGROUND_SERVICES_FROM_BACKGROUND:Ljava/lang/String; = "android.permission.REQUEST_COMPANION_START_FOREGROUND_SERVICES_FROM_BACKGROUND"

.field public static final whitelist REQUEST_COMPANION_USE_DATA_IN_BACKGROUND:Ljava/lang/String; = "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

.field public static final whitelist REQUEST_DELETE_PACKAGES:Ljava/lang/String; = "android.permission.REQUEST_DELETE_PACKAGES"

.field public static final whitelist REQUEST_IGNORE_BATTERY_OPTIMIZATIONS:Ljava/lang/String; = "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

.field public static final blacklist REQUEST_INCIDENT_REPORT_APPROVAL:Ljava/lang/String; = "android.permission.REQUEST_INCIDENT_REPORT_APPROVAL"

.field public static final whitelist REQUEST_INSTALL_PACKAGES:Ljava/lang/String; = "android.permission.REQUEST_INSTALL_PACKAGES"

.field public static final whitelist REQUEST_NETWORK_SCORES:Ljava/lang/String; = "android.permission.REQUEST_NETWORK_SCORES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist REQUEST_NOTIFICATION_ASSISTANT_SERVICE:Ljava/lang/String; = "android.permission.REQUEST_NOTIFICATION_ASSISTANT_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE:Ljava/lang/String; = "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

.field public static final whitelist REQUEST_PASSWORD_COMPLEXITY:Ljava/lang/String; = "android.permission.REQUEST_PASSWORD_COMPLEXITY"

.field public static final blacklist REQUEST_PROCESS_FIDO:Ljava/lang/String; = "com.samsung.android.permission.REQUEST_PROCESS_FIDO"

.field public static final blacklist REQUEST_UNIQUE_ID_ATTESTATION:Ljava/lang/String; = "android.permission.REQUEST_UNIQUE_ID_ATTESTATION"

.field public static final blacklist RESET_APP_ERRORS:Ljava/lang/String; = "android.permission.RESET_APP_ERRORS"

.field public static final blacklist RESET_FACE_LOCKOUT:Ljava/lang/String; = "com.samsung.android.bio.face.permission.RESET_FACE_LOCKOUT"

.field public static final greylist-max-o RESET_FINGERPRINT_LOCKOUT:Ljava/lang/String; = "android.permission.RESET_FINGERPRINT_LOCKOUT"

.field public static final blacklist RESET_INTELLIGENT_SCAN_LOCKOUT:Ljava/lang/String; = "com.samsung.android.biometrics.permission.RESET_INTELLIGENT_SCAN_LOCKOUT"

.field public static final whitelist RESET_PASSWORD:Ljava/lang/String; = "android.permission.RESET_PASSWORD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o RESET_SHORTCUT_MANAGER_THROTTLING:Ljava/lang/String; = "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING"

.field public static final whitelist RESTART_PACKAGES:Ljava/lang/String; = "android.permission.RESTART_PACKAGES"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RESTART_WIFI_SUBSYSTEM:Ljava/lang/String; = "android.permission.RESTART_WIFI_SUBSYSTEM"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTORE_RUNTIME_PERMISSIONS:Ljava/lang/String; = "android.permission.RESTORE_RUNTIME_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTED_VR_ACCESS:Ljava/lang/String; = "android.permission.RESTRICTED_VR_ACCESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RETRIEVE_WINDOW_CONTENT:Ljava/lang/String; = "android.permission.RETRIEVE_WINDOW_CONTENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o RETRIEVE_WINDOW_TOKEN:Ljava/lang/String; = "android.permission.RETRIEVE_WINDOW_TOKEN"

.field public static final whitelist REVIEW_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "android.permission.REVIEW_ACCESSIBILITY_SERVICES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REVOKE_POST_NOTIFICATIONS_WITHOUT_KILL:Ljava/lang/String; = "android.permission.REVOKE_POST_NOTIFICATIONS_WITHOUT_KILL"

.field public static final whitelist REVOKE_RUNTIME_PERMISSIONS:Ljava/lang/String; = "android.permission.REVOKE_RUNTIME_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATE_SURFACE_FLINGER:Ljava/lang/String; = "android.permission.ROTATE_SURFACE_FLINGER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RUN_DISK_DEFRAGMENTATION:Ljava/lang/String; = "com.samsung.android.permission.RUN_DISK_DEFRAGMENTATION"

.field public static final greylist-max-o RUN_IN_BACKGROUND:Ljava/lang/String; = "android.permission.RUN_IN_BACKGROUND"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SAMSUNG_KEYSTORE_PERMISSION:Ljava/lang/String; = "com.samsung.android.security.permission.SAMSUNG_KEYSTORE_PERMISSION"

.field public static final blacklist SAMSUNG_OVERLAY_COMPONENT:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

.field public static final blacklist SAMSUNG_OVERLAY_THEME:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

.field public static final whitelist SCHEDULE_EXACT_ALARM:Ljava/lang/String; = "android.permission.SCHEDULE_EXACT_ALARM"

.field public static final whitelist SCHEDULE_PRIORITIZED_ALARM:Ljava/lang/String; = "android.permission.SCHEDULE_PRIORITIZED_ALARM"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SCORE_NETWORKS:Ljava/lang/String; = "android.permission.SCORE_NETWORKS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SCREEN_ROTATION_ANIMATION_STARTED:Ljava/lang/String; = "com.samsung.android.permisson.SCREEN_ROTATION_ANIMATION_STARTED"

.field public static final whitelist SECURE_ELEMENT_PRIVILEGED_OPERATION:Ljava/lang/String; = "android.permission.SECURE_ELEMENT_PRIVILEGED_OPERATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEM_ACCESS_WIFI_SECURED_INFO:Ljava/lang/String; = "com.samsung.permission.SEM_ACCESS_WIFI_SECURED_INFO"

.field public static final whitelist SEM_ADAPTIVE_BRIGHTNESS:Ljava/lang/String; = "com.samsung.adaptivebrightnessgo.permission.SEM_ADAPTIVE_BRIGHTNESS"

.field public static final whitelist SEM_APP_RESTRICTION:Ljava/lang/String; = "com.samsung.android.permission.SEM_APP_RESTRICTION"

.field public static final blacklist SEM_AUTO_BIND_NOTIFICATION_LISTENER_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.SEM_AUTO_BIND_NOTIFICATION_LISTENER_SERVICE"

.field public static final whitelist SEM_CMC_PUSH:Ljava/lang/String; = "com.samsung.android.mdecservice.nms.SEM_CMC_PUSH"

.field public static final whitelist SEM_CONTROL_DISPLAY_COLOR_TRANSFORMS:Ljava/lang/String; = "com.samsung.android.permission.SEM_CONTROL_DISPLAY_COLOR_TRANSFORMS"

.field public static final whitelist SEM_MEDIA_CONTENTS:Ljava/lang/String; = "com.samsung.android.permission.SEM_MEDIA_CONTENTS"

.field public static final blacklist SEM_SET_DEVICE_BLOCK:Ljava/lang/String; = "com.samsung.android.permission.SEM_SET_DEVICE_BLOCK"

.field public static final blacklist SEM_UPDATE_NOTIFICATION_CHANNELS:Ljava/lang/String; = "com.samsung.android.permission.SEM_UPDATE_NOTIFICATION_CHANNELS"

.field public static final blacklist SEM_VOLD_DATA_MOVE:Ljava/lang/String; = "com.samsung.android.permission.SEM_VOLD_DATA_MOVE"

.field public static final whitelist SEM_WRITE_CAPTURED_URL:Ljava/lang/String; = "com.samsung.android.permission.SEM_WRITE_CAPTURED_URL"

.field public static final whitelist SEND_CATEGORY_CAR_NOTIFICATIONS:Ljava/lang/String; = "android.permission.SEND_CATEGORY_CAR_NOTIFICATIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEND_DEVICE_CUSTOMIZATION_READY:Ljava/lang/String; = "android.permission.SEND_DEVICE_CUSTOMIZATION_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o SEND_EMBMS_INTENTS:Ljava/lang/String; = "android.permission.SEND_EMBMS_INTENTS"

.field public static final blacklist SEND_MESSAGE:Ljava/lang/String; = "com.samsung.android.dsms.permission.SEND_MESSAGE"

.field public static final whitelist SEND_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.permission.SEND_RESPOND_VIA_MESSAGE"

.field public static final whitelist SEND_SAFETY_CENTER_UPDATE:Ljava/lang/String; = "android.permission.SEND_SAFETY_CENTER_UPDATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEND_SHOW_SUSPENDED_APP_DETAILS:Ljava/lang/String; = "android.permission.SEND_SHOW_SUSPENDED_APP_DETAILS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEND_SMS:Ljava/lang/String; = "android.permission.SEND_SMS"

.field public static final whitelist SEND_SMS_NO_CONFIRMATION:Ljava/lang/String; = "android.permission.SEND_SMS_NO_CONFIRMATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SENSORHUB_RESET:Ljava/lang/String; = "com.samsung.permission.SENSORHUB_RESET"

.field public static final whitelist SERIAL_PORT:Ljava/lang/String; = "android.permission.SERIAL_PORT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_ACTIVITY_WATCHER:Ljava/lang/String; = "android.permission.SET_ACTIVITY_WATCHER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_ALARM:Ljava/lang/String; = "com.android.alarm.permission.SET_ALARM"

.field public static final whitelist SET_ALWAYS_FINISH:Ljava/lang/String; = "android.permission.SET_ALWAYS_FINISH"

.field public static final blacklist SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS:Ljava/lang/String; = "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

.field public static final whitelist SET_ANIMATION_SCALE:Ljava/lang/String; = "android.permission.SET_ANIMATION_SCALE"

.field public static final whitelist SET_CLIP_SOURCE:Ljava/lang/String; = "android.permission.SET_CLIP_SOURCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_DEBUG_APP:Ljava/lang/String; = "android.permission.SET_DEBUG_APP"

.field public static final whitelist SET_DEFAULT_ACCOUNT_FOR_CONTACTS:Ljava/lang/String; = "android.permission.SET_DEFAULT_ACCOUNT_FOR_CONTACTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o SET_DISPLAY_OFFSET:Ljava/lang/String; = "android.permission.SET_DISPLAY_OFFSET"

.field public static final blacklist SET_GAME_SERVICE:Ljava/lang/String; = "android.permission.SET_GAME_SERVICE"

.field public static final whitelist SET_HARMFUL_APP_WARNINGS:Ljava/lang/String; = "android.permission.SET_HARMFUL_APP_WARNINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SET_INITIAL_LOCK:Ljava/lang/String; = "android.permission.SET_INITIAL_LOCK"

.field public static final greylist-max-o SET_INPUT_CALIBRATION:Ljava/lang/String; = "android.permission.SET_INPUT_CALIBRATION"

.field public static final greylist-max-o SET_KEYBOARD_LAYOUT:Ljava/lang/String; = "android.permission.SET_KEYBOARD_LAYOUT"

.field public static final whitelist SET_MEDIA_KEY_LISTENER:Ljava/lang/String; = "android.permission.SET_MEDIA_KEY_LISTENER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_ORIENTATION:Ljava/lang/String; = "android.permission.SET_ORIENTATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_POINTER_SPEED:Ljava/lang/String; = "android.permission.SET_POINTER_SPEED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_PREFERRED_APPLICATIONS:Ljava/lang/String; = "android.permission.SET_PREFERRED_APPLICATIONS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SET_PROCESS_LIMIT:Ljava/lang/String; = "android.permission.SET_PROCESS_LIMIT"

.field public static final whitelist SET_SCREEN_COMPATIBILITY:Ljava/lang/String; = "android.permission.SET_SCREEN_COMPATIBILITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SYSTEM_AUDIO_CAPTION:Ljava/lang/String; = "android.permission.SET_SYSTEM_AUDIO_CAPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_TIME:Ljava/lang/String; = "android.permission.SET_TIME"

.field public static final whitelist SET_TIME_ZONE:Ljava/lang/String; = "android.permission.SET_TIME_ZONE"

.field public static final whitelist SET_UNRESTRICTED_KEEP_CLEAR_AREAS:Ljava/lang/String; = "android.permission.SET_UNRESTRICTED_KEEP_CLEAR_AREAS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_VOLUME_KEY_LONG_PRESS_LISTENER:Ljava/lang/String; = "android.permission.SET_VOLUME_KEY_LONG_PRESS_LISTENER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_WALLPAPER:Ljava/lang/String; = "android.permission.SET_WALLPAPER"

.field public static final whitelist SET_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.permission.SET_WALLPAPER_COMPONENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_WALLPAPER_DIM_AMOUNT:Ljava/lang/String; = "android.permission.SET_WALLPAPER_DIM_AMOUNT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_WALLPAPER_HINTS:Ljava/lang/String; = "android.permission.SET_WALLPAPER_HINTS"

.field public static final whitelist SHOW_KEYGUARD_MESSAGE:Ljava/lang/String; = "android.permission.SHOW_KEYGUARD_MESSAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SHUTDOWN:Ljava/lang/String; = "android.permission.SHUTDOWN"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIGNAL_PERSISTENT_PROCESSES:Ljava/lang/String; = "android.permission.SIGNAL_PERSISTENT_PROCESSES"

.field public static final whitelist SIGNAL_REBOOT_READINESS:Ljava/lang/String; = "android.permission.SIGNAL_REBOOT_READINESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SIMPLE_PAY:Ljava/lang/String; = "com.samsung.android.spay.permission.SIMPLE_PAY"

.field public static final blacklist SMART_SCAN:Ljava/lang/String; = "com.samsung.android.knox.permission.SMART_SCAN"

.field public static final blacklist SMART_SCAN_ADVANCED:Ljava/lang/String; = "com.samsung.android.knox.permission.SMART_SCAN_ADVANCED"

.field public static final blacklist SMART_SCAN_BASIC:Ljava/lang/String; = "com.samsung.android.knox.permission.SMART_SCAN_BASIC"

.field public static final blacklist SMIME_CERTIFICATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

.field public static final whitelist SMS_FINANCIAL_TRANSACTIONS:Ljava/lang/String; = "android.permission.SMS_FINANCIAL_TRANSACTIONS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SOUNDTRIGGER_DELEGATE_IDENTITY:Ljava/lang/String; = "android.permission.SOUNDTRIGGER_DELEGATE_IDENTITY"

.field public static final whitelist SOUND_TRIGGER_RUN_IN_BATTERY_SAVER:Ljava/lang/String; = "android.permission.SOUND_TRIGGER_RUN_IN_BATTERY_SAVER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SSENSOR:Ljava/lang/String; = "com.samsung.permission.SSENSOR"

.field public static final whitelist SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

.field public static final whitelist START_ACTIVITIES_FROM_BACKGROUND:Ljava/lang/String; = "android.permission.START_ACTIVITIES_FROM_BACKGROUND"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist START_ACTIVITY_AS_CALLER:Ljava/lang/String; = "android.permission.START_ACTIVITY_AS_CALLER"

.field public static final greylist-max-o START_ANY_ACTIVITY:Ljava/lang/String; = "android.permission.START_ANY_ACTIVITY"

.field public static final whitelist START_CROSS_PROFILE_ACTIVITIES:Ljava/lang/String; = "android.permission.START_CROSS_PROFILE_ACTIVITIES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist START_DOCK_OR_HOME:Ljava/lang/String; = "com.samsung.android.permisson.START_DOCK_OR_HOME"

.field public static final whitelist START_FOREGROUND_SERVICES_FROM_BACKGROUND:Ljava/lang/String; = "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

.field public static final whitelist START_REVIEW_PERMISSION_DECISIONS:Ljava/lang/String; = "android.permission.START_REVIEW_PERMISSION_DECISIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o START_TASKS_FROM_RECENTS:Ljava/lang/String; = "android.permission.START_TASKS_FROM_RECENTS"

.field public static final whitelist START_VIEW_APP_FEATURES:Ljava/lang/String; = "android.permission.START_VIEW_APP_FEATURES"

.field public static final whitelist START_VIEW_PERMISSION_USAGE:Ljava/lang/String; = "android.permission.START_VIEW_PERMISSION_USAGE"

.field public static final greylist-max-o STATSCOMPANION:Ljava/lang/String; = "android.permission.STATSCOMPANION"

.field public static final blacklist STATUS:Ljava/lang/String; = "com.samsung.android.knoxguard.STATUS"

.field public static final whitelist STATUS_BAR:Ljava/lang/String; = "android.permission.STATUS_BAR"

.field public static final whitelist STATUS_BAR_SERVICE:Ljava/lang/String; = "android.permission.STATUS_BAR_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_APP_SWITCHES:Ljava/lang/String; = "android.permission.STOP_APP_SWITCHES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o STORAGE_INTERNAL:Ljava/lang/String; = "android.permission.STORAGE_INTERNAL"

.field public static final greylist-max-o SUBSCRIBED_FEEDS_READ:Ljava/lang/String; = "android.permission.SUBSCRIBED_FEEDS_READ"

.field public static final greylist-max-o SUBSCRIBED_FEEDS_WRITE:Ljava/lang/String; = "android.permission.SUBSCRIBED_FEEDS_WRITE"

.field public static final whitelist SUBSCRIBE_TO_KEYGUARD_LOCKED_STATE:Ljava/lang/String; = "android.permission.SUBSCRIBE_TO_KEYGUARD_LOCKED_STATE"

.field public static final whitelist SUBSTITUTE_NOTIFICATION_APP_NAME:Ljava/lang/String; = "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUBSTITUTE_SHARE_TARGET_APP_NAME_AND_ICON:Ljava/lang/String; = "android.permission.SUBSTITUTE_SHARE_TARGET_APP_NAME_AND_ICON"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUGGEST_EXTERNAL_TIME:Ljava/lang/String; = "android.permission.SUGGEST_EXTERNAL_TIME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SUGGEST_MANUAL_TIME_AND_ZONE:Ljava/lang/String; = "android.permission.SUGGEST_MANUAL_TIME_AND_ZONE"

.field public static final blacklist SUGGEST_TELEPHONY_TIME_AND_ZONE:Ljava/lang/String; = "android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE"

.field public static final blacklist SUPPRESS_CLIPBOARD_ACCESS_NOTIFICATION:Ljava/lang/String; = "android.permission.SUPPRESS_CLIPBOARD_ACCESS_NOTIFICATION"

.field public static final whitelist SUSPEND_APPS:Ljava/lang/String; = "android.permission.SUSPEND_APPS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android.permission.SYSTEM_ALERT_WINDOW"

.field public static final whitelist SYSTEM_APPLICATION_OVERLAY:Ljava/lang/String; = "android.permission.SYSTEM_APPLICATION_OVERLAY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_CAMERA:Ljava/lang/String; = "android.permission.SYSTEM_CAMERA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o TABLET_MODE:Ljava/lang/String; = "android.permission.TABLET_MODE"

.field public static final greylist-max-o TEMPORARY_ENABLE_ACCESSIBILITY:Ljava/lang/String; = "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY"

.field public static final blacklist TEST_BIOMETRIC:Ljava/lang/String; = "android.permission.TEST_BIOMETRIC"

.field public static final greylist-max-o TEST_BLACKLISTED_PASSWORD:Ljava/lang/String; = "android.permission.TEST_BLACKLISTED_PASSWORD"

.field public static final blacklist TEST_MANAGE_ROLLBACKS:Ljava/lang/String; = "android.permission.TEST_MANAGE_ROLLBACKS"

.field public static final whitelist TETHER_PRIVILEGED:Ljava/lang/String; = "android.permission.TETHER_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TIS_EXTENSION_INTERFACE:Ljava/lang/String; = "android.permission.TIS_EXTENSION_INTERFACE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TOGGLE_AUTOMOTIVE_PROJECTION:Ljava/lang/String; = "android.permission.TOGGLE_AUTOMOTIVE_PROJECTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TRANSMIT_IR:Ljava/lang/String; = "android.permission.TRANSMIT_IR"

.field public static final whitelist TRIGGER_LOST_MODE:Ljava/lang/String; = "android.permission.TRIGGER_LOST_MODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist TRIGGER_SHELL_BUGREPORT:Ljava/lang/String; = "android.permission.TRIGGER_SHELL_BUGREPORT"

.field public static final blacklist TRIGGER_SHELL_PROFCOLLECT_UPLOAD:Ljava/lang/String; = "android.permission.TRIGGER_SHELL_PROFCOLLECT_UPLOAD"

.field public static final greylist-max-o TRIGGER_TIME_ZONE_RULES_CHECK:Ljava/lang/String; = "android.permission.TRIGGER_TIME_ZONE_RULES_CHECK"

.field public static final greylist-max-o TRUST_LISTENER:Ljava/lang/String; = "android.permission.TRUST_LISTENER"

.field public static final blacklist TUNER_RESOURCE_ACCESS:Ljava/lang/String; = "android.permission.TUNER_RESOURCE_ACCESS"

.field public static final whitelist TV_INPUT_HARDWARE:Ljava/lang/String; = "android.permission.TV_INPUT_HARDWARE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TV_VIRTUAL_REMOTE_CONTROLLER:Ljava/lang/String; = "android.permission.TV_VIRTUAL_REMOTE_CONTROLLER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.permission.UNINSTALL_SHORTCUT"

.field public static final whitelist UNLIMITED_SHORTCUTS_API_CALLS:Ljava/lang/String; = "android.permission.UNLIMITED_SHORTCUTS_API_CALLS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist UNLIMITED_TOASTS:Ljava/lang/String; = "android.permission.UNLIMITED_TOASTS"

.field public static final whitelist UPDATE_APP_OPS_STATS:Ljava/lang/String; = "android.permission.UPDATE_APP_OPS_STATS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o UPDATE_CONFIG:Ljava/lang/String; = "android.permission.UPDATE_CONFIG"

.field public static final whitelist UPDATE_DEVICE_MANAGEMENT_RESOURCES:Ljava/lang/String; = "android.permission.UPDATE_DEVICE_MANAGEMENT_RESOURCES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UPDATE_DEVICE_STATS:Ljava/lang/String; = "android.permission.UPDATE_DEVICE_STATS"

.field public static final whitelist UPDATE_DOMAIN_VERIFICATION_USER_SELECTION:Ljava/lang/String; = "android.permission.UPDATE_DOMAIN_VERIFICATION_USER_SELECTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UPDATE_FONTS:Ljava/lang/String; = "android.permission.UPDATE_FONTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UPDATE_LOCK:Ljava/lang/String; = "android.permission.UPDATE_LOCK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o UPDATE_LOCK_TASK_PACKAGES:Ljava/lang/String; = "android.permission.UPDATE_LOCK_TASK_PACKAGES"

.field public static final whitelist UPDATE_PACKAGES_WITHOUT_USER_ACTION:Ljava/lang/String; = "android.permission.UPDATE_PACKAGES_WITHOUT_USER_ACTION"

.field public static final whitelist UPDATE_TIME_ZONE_RULES:Ljava/lang/String; = "android.permission.UPDATE_TIME_ZONE_RULES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UPGRADE_RUNTIME_PERMISSIONS:Ljava/lang/String; = "android.permission.UPGRADE_RUNTIME_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_ACTIVITY:Ljava/lang/String; = "android.permission.USER_ACTIVITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USE_ATTESTATION_VERIFICATION_SERVICE:Ljava/lang/String; = "android.permission.USE_ATTESTATION_VERIFICATION_SERVICE"

.field public static final whitelist USE_BIOMETRIC:Ljava/lang/String; = "android.permission.USE_BIOMETRIC"

.field public static final blacklist USE_BIOMETRIC_INTERNAL:Ljava/lang/String; = "android.permission.USE_BIOMETRIC_INTERNAL"

.field public static final whitelist USE_COLORIZED_NOTIFICATIONS:Ljava/lang/String; = "android.permission.USE_COLORIZED_NOTIFICATIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o USE_CREDENTIALS:Ljava/lang/String; = "android.permission.USE_CREDENTIALS"

.field public static final greylist-max-o USE_DATA_IN_BACKGROUND:Ljava/lang/String; = "android.permission.USE_DATA_IN_BACKGROUND"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USE_EXACT_ALARM:Ljava/lang/String; = "android.permission.USE_EXACT_ALARM"

.field public static final blacklist USE_F2FS_FLUSH:Ljava/lang/String; = "com.samsung.android.permission.USE_F2FS_FLUSH"

.field public static final blacklist USE_FACE:Ljava/lang/String; = "com.samsung.android.bio.face.permission.USE_FACE"

.field public static final whitelist USE_FINGERPRINT:Ljava/lang/String; = "android.permission.USE_FINGERPRINT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USE_FULL_SCREEN_INTENT:Ljava/lang/String; = "android.permission.USE_FULL_SCREEN_INTENT"

.field public static final whitelist USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER:Ljava/lang/String; = "android.permission.USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

.field public static final blacklist USE_INSTALLER_V2:Ljava/lang/String; = "com.android.permission.USE_INSTALLER_V2"

.field public static final blacklist USE_LINK_TO_WINDOWS_REMOTE_APP_MODE:Ljava/lang/String; = "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

.field public static final blacklist USE_MULTI_CONTROL_MANAGER:Ljava/lang/String; = "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

.field public static final whitelist USE_RESERVED_DISK:Ljava/lang/String; = "android.permission.USE_RESERVED_DISK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USE_SIP:Ljava/lang/String; = "android.permission.USE_SIP"

.field public static final blacklist USE_SYSTEM_DATA_LOADERS:Ljava/lang/String; = "com.android.permission.USE_SYSTEM_DATA_LOADERS"

.field public static final whitelist UWB_PRIVILEGED:Ljava/lang/String; = "android.permission.UWB_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UWB_RANGING:Ljava/lang/String; = "android.permission.UWB_RANGING"

.field public static final blacklist UWB_SYSTEM_PROTECTION:Ljava/lang/String; = "com.samsung.permission.UWB_SYSTEM_PROTECTION"

.field public static final blacklist VERIFY_ATTESTATION:Ljava/lang/String; = "android.permission.VERIFY_ATTESTATION"

.field public static final whitelist VIBRATE:Ljava/lang/String; = "android.permission.VIBRATE"

.field public static final blacklist VIBRATE_ALWAYS_ON:Ljava/lang/String; = "android.permission.VIBRATE_ALWAYS_ON"

.field public static final greylist-max-o VIEW_INSTANT_APPS:Ljava/lang/String; = "android.permission.VIEW_INSTANT_APPS"

.field public static final blacklist VIRTUAL_INPUT_DEVICE:Ljava/lang/String; = "android.permission.VIRTUAL_INPUT_DEVICE"

.field public static final whitelist WAKE_LOCK:Ljava/lang/String; = "android.permission.WAKE_LOCK"

.field public static final greylist-max-o WATCH_APPOPS:Ljava/lang/String; = "android.permission.WATCH_APPOPS"

.field public static final whitelist WHITELIST_AUTO_REVOKE_PERMISSIONS:Ljava/lang/String; = "android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WHITELIST_RESTRICTED_PERMISSIONS:Ljava/lang/String; = "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_ACCESS_COEX_UNSAFE_CHANNELS:Ljava/lang/String; = "android.permission.WIFI_ACCESS_COEX_UNSAFE_CHANNELS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist WIFI_DIAGNOSTICS_PROVIDER:Ljava/lang/String; = "com.samsung.permission.WIFI_DIAGNOSTICS_PROVIDER"

.field public static final blacklist WIFI_FACTORY_TEST:Ljava/lang/String; = "com.samsung.permission.WIFI_FACTORY_TEST"

.field public static final whitelist WIFI_SET_DEVICE_MOBILITY_STATE:Ljava/lang/String; = "android.permission.WIFI_SET_DEVICE_MOBILITY_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_UPDATE_COEX_UNSAFE_CHANNELS:Ljava/lang/String; = "android.permission.WIFI_UPDATE_COEX_UNSAFE_CHANNELS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_UPDATE_USABILITY_STATS_SCORE:Ljava/lang/String; = "android.permission.WIFI_UPDATE_USABILITY_STATS_SCORE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist WIFI_WIPS:Ljava/lang/String; = "com.samsung.permission.WIFI_WIPS"

.field public static final whitelist WRITE_APN_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_APN_SETTINGS"

.field public static final greylist-max-o WRITE_BLOCKED_NUMBERS:Ljava/lang/String; = "android.permission.WRITE_BLOCKED_NUMBERS"

.field public static final whitelist WRITE_CALENDAR:Ljava/lang/String; = "android.permission.WRITE_CALENDAR"

.field public static final whitelist WRITE_CALL_LOG:Ljava/lang/String; = "android.permission.WRITE_CALL_LOG"

.field public static final whitelist WRITE_CAPTURED_URL:Ljava/lang/String; = "com.samsung.android.permission.WRITE_CAPTURED_URL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WRITE_CONTACTS:Ljava/lang/String; = "android.permission.WRITE_CONTACTS"

.field public static final whitelist WRITE_DATABASES:Ljava/lang/String; = "com.samsung.android.fota.permission.WRITE_DATABASES"

.field public static final whitelist WRITE_DEVICE_CONFIG:Ljava/lang/String; = "android.permission.WRITE_DEVICE_CONFIG"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WRITE_DREAM_STATE:Ljava/lang/String; = "android.permission.WRITE_DREAM_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WRITE_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field public static final whitelist WRITE_GSERVICES:Ljava/lang/String; = "android.permission.WRITE_GSERVICES"

.field public static final greylist-max-o WRITE_HISTORY_BOOKMARKS:Ljava/lang/String; = "com.android.browser.permission.WRITE_HISTORY_BOOKMARKS"

.field public static final whitelist WRITE_MEDIA_STORAGE:Ljava/lang/String; = "android.permission.WRITE_MEDIA_STORAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WRITE_OBB:Ljava/lang/String; = "android.permission.WRITE_OBB"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o WRITE_PROFILE:Ljava/lang/String; = "android.permission.WRITE_PROFILE"

.field public static final whitelist WRITE_SECURE_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"

.field public static final whitelist WRITE_SECURITY_LOG:Ljava/lang/String; = "android.permission.WRITE_SECURITY_LOG"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WRITE_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_SETTINGS"

.field public static final blacklist WRITE_SETTINGS_HOMEPAGE_DATA:Ljava/lang/String; = "android.permission.WRITE_SETTINGS_HOMEPAGE_DATA"

.field public static final whitelist WRITE_SMS:Ljava/lang/String; = "android.permission.WRITE_SMS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o WRITE_SOCIAL_STREAM:Ljava/lang/String; = "android.permission.WRITE_SOCIAL_STREAM"

.field public static final whitelist WRITE_SYNC_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_SYNC_SETTINGS"

.field public static final greylist-max-o WRITE_USER_DICTIONARY:Ljava/lang/String; = "android.permission.WRITE_USER_DICTIONARY"

.field public static final whitelist WRITE_VOICEMAIL:Ljava/lang/String; = "com.android.voicemail.permission.WRITE_VOICEMAIL"

.field public static final blacklist preconfig:Ljava/lang/String; = "com.sec.permission.preconfig"

.field public static final blacklist receiveDetailedApplicationState:Ljava/lang/String; = "diagandroid.app.receiveDetailedApplicationState"

.field public static final blacklist receiveDetailedCallState:Ljava/lang/String; = "diagandroid.phone.receiveDetailedCallState"

.field public static final blacklist receivePDPContextState:Ljava/lang/String; = "diagandroid.data.receivePDPContextState"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
