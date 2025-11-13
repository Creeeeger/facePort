.class public abstract Landroid/content/pm/PackageManager;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManager$NameNotFoundException;,
        Landroid/content/pm/PackageManager$ApplicationInfoFlags;,
        Landroid/content/pm/PackageManager$ResolveInfoFlags;,
        Landroid/content/pm/PackageManager$ComponentInfoFlags;,
        Landroid/content/pm/PackageManager$PackageInfoFlags;,
        Landroid/content/pm/PackageManager$ApplicationInfoQuery;,
        Landroid/content/pm/PackageManager$PackageInfoQuery;,
        Landroid/content/pm/PackageManager$SemPackageDataObserver;,
        Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;,
        Landroid/content/pm/PackageManager$OnChecksumsReadyListener;,
        Landroid/content/pm/PackageManager$CertificateInputType;,
        Landroid/content/pm/PackageManager$DexModuleRegisterCallback;,
        Landroid/content/pm/PackageManager$UninstallCompleteCallback;,
        Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;,
        Landroid/content/pm/PackageManager$MoveCallback;,
        Landroid/content/pm/PackageManager$DistractionRestriction;,
        Landroid/content/pm/PackageManager$PermissionFlags;,
        Landroid/content/pm/PackageManager$Flags;,
        Landroid/content/pm/PackageManager$SystemAppState;,
        Landroid/content/pm/PackageManager$NotifyReason;,
        Landroid/content/pm/PackageManager$PermissionWhitelistFlags;,
        Landroid/content/pm/PackageManager$AppMetadataSource;,
        Landroid/content/pm/PackageManager$DeleteFlags;,
        Landroid/content/pm/PackageManager$UserMinAspectRatio;,
        Landroid/content/pm/PackageManager$UninstallReason;,
        Landroid/content/pm/PackageManager$InstallScenario;,
        Landroid/content/pm/PackageManager$InstallReason;,
        Landroid/content/pm/PackageManager$SuspendedFlags;,
        Landroid/content/pm/PackageManager$EnabledFlags;,
        Landroid/content/pm/PackageManager$DevelopmentInstallFlags;,
        Landroid/content/pm/PackageManager$InstallFlags;,
        Landroid/content/pm/PackageManager$RollbackImpactLevel;,
        Landroid/content/pm/PackageManager$RollbackDataPolicy;,
        Landroid/content/pm/PackageManager$EnabledState;,
        Landroid/content/pm/PackageManager$SignatureResult;,
        Landroid/content/pm/PackageManager$PermissionResult;,
        Landroid/content/pm/PackageManager$ModuleInfoFlags;,
        Landroid/content/pm/PackageManager$InstrumentationInfoFlags;,
        Landroid/content/pm/PackageManager$PermissionGroupInfoFlags;,
        Landroid/content/pm/PackageManager$PermissionInfoFlags;,
        Landroid/content/pm/PackageManager$InstalledModulesFlags;,
        Landroid/content/pm/PackageManager$ResolveInfoFlagsBits;,
        Landroid/content/pm/PackageManager$ComponentInfoFlagsBits;,
        Landroid/content/pm/PackageManager$ApplicationInfoFlagsBits;,
        Landroid/content/pm/PackageManager$PackageInfoFlagsBits;,
        Landroid/content/pm/PackageManager$PropertyLocation;,
        Landroid/content/pm/PackageManager$ComponentType;,
        Landroid/content/pm/PackageManager$OnPermissionsChangedListener;,
        Landroid/content/pm/PackageManager$ComponentEnabledSetting;,
        Landroid/content/pm/PackageManager$Property;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_REQUEST_PERMISSIONS:Ljava/lang/String; = "android.content.pm.action.REQUEST_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REQUEST_PERMISSIONS_FOR_OTHER:Ljava/lang/String; = "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o APPLY_DEFAULT_TO_DEVICE_PROTECTED_STORAGE:Z = true

.field public static final blacklist APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

.field public static final blacklist APP_ENUMERATION_ENABLED_BY_DEFAULT:Z = true

.field public static final whitelist APP_METADATA_SOURCE_APK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_METADATA_SOURCE_INSTALLER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_METADATA_SOURCE_SYSTEM_IMAGE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_METADATA_SOURCE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CERT_INPUT_RAW_X509:I = 0x0

.field public static final whitelist CERT_INPUT_SHA256:I = 0x1

.field public static final whitelist COMPONENT_ENABLED_STATE_DEFAULT:I = 0x0

.field public static final whitelist COMPONENT_ENABLED_STATE_DISABLED:I = 0x2

.field public static final whitelist COMPONENT_ENABLED_STATE_DISABLED_UNTIL_USED:I = 0x4

.field public static final whitelist COMPONENT_ENABLED_STATE_DISABLED_USER:I = 0x3

.field public static final whitelist COMPONENT_ENABLED_STATE_ENABLED:I = 0x1

.field public static final whitelist DELETE_ALL_USERS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DELETE_APP_SEPARATION_ONE_USER_APP:I = 0x10000000

.field public static final whitelist DELETE_ARCHIVE:I = 0x10

.field public static final greylist-max-o DELETE_CHATTY:I = -0x80000000

.field public static final greylist-max-o DELETE_DONT_KILL_APP:I = 0x8

.field public static final whitelist DELETE_FAILED_ABORTED:I = -0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DELETE_FAILED_APP_PINNED:I = -0x7

.field public static final whitelist DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DELETE_FAILED_FOR_CHILD_PROFILE:I = -0x8

.field public static final whitelist DELETE_FAILED_INTERNAL_ERROR:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DELETE_FAILED_OWNER_BLOCKED:I = -0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o DELETE_FAILED_USED_SHARED_LIBRARY:I = -0x6

.field public static final greylist-max-o DELETE_FAILED_USER_RESTRICTED:I = -0x3

.field public static final whitelist DELETE_KEEP_DATA:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DELETE_SUCCEEDED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o DELETE_SYSTEM_APP:I = 0x4

.field public static final blacklist DISABLED_APP_CALLER_AUTO_DISABLER:Ljava/lang/String; = "auto_disabler"

.field public static final whitelist DONT_KILL_APP:I = 0x1

.field public static final blacklist ENABLE_SHARED_UID_MIGRATION:Z = true

.field public static final greylist-max-o EXTRA_FAILURE_EXISTING_PACKAGE:Ljava/lang/String; = "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

.field public static final greylist-max-o EXTRA_FAILURE_EXISTING_PERMISSION:Ljava/lang/String; = "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

.field public static final greylist-max-o EXTRA_INTENT_FILTER_VERIFICATION_HOSTS:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_INTENT_FILTER_VERIFICATION_ID:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_INTENT_FILTER_VERIFICATION_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_INTENT_FILTER_VERIFICATION_URI_SCHEME:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_KNOX_GET_ONLY_PREFERRED:I = 0x20000

.field public static final greylist-max-o EXTRA_MOVE_ID:Ljava/lang/String; = "android.content.pm.extra.MOVE_ID"

.field public static final blacklist EXTRA_PACKAGE_MONITOR_CALLBACK_RESULT:Ljava/lang/String; = "android.content.pm.extra.EXTRA_PACKAGE_MONITOR_CALLBACK_RESULT"

.field public static final whitelist EXTRA_REQUEST_PERMISSIONS_DEVICE_ID:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_DEVICE_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_REQUEST_PERMISSIONS_LEGACY_ACCESS_PERMISSION_NAMES:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_LEGACY_ACCESS_PERMISSION_NAMES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_REQUEST_PERMISSIONS_NAMES:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_REQUEST_PERMISSIONS_RESULTS:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_USER_ACTION_REQUIRED:Ljava/lang/String; = "android.content.pm.extra.USER_ACTION_REQUIRED"

.field public static final whitelist EXTRA_VERIFICATION_ID:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_ID"

.field public static final greylist-max-o EXTRA_VERIFICATION_INSTALLER_PACKAGE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

.field public static final greylist-max-o EXTRA_VERIFICATION_INSTALLER_UID:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

.field public static final greylist-max-o EXTRA_VERIFICATION_INSTALL_FLAGS:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

.field public static final greylist-max-o EXTRA_VERIFICATION_LONG_VERSION_CODE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

.field public static final greylist-max-o EXTRA_VERIFICATION_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

.field public static final whitelist EXTRA_VERIFICATION_RESULT:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_RESULT"

.field public static final blacklist EXTRA_VERIFICATION_ROOT_HASH:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_ROOT_HASH"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_VERIFICATION_URI:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_URI"

.field public static final greylist-max-o EXTRA_VERIFICATION_VERSION_CODE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_VERSION_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_ACTIVITIES_ON_SECONDARY_DISPLAYS:Ljava/lang/String; = "android.software.activities_on_secondary_displays"

.field public static final blacklist FEATURE_ADOPTABLE_STORAGE:Ljava/lang/String; = "android.software.adoptable_storage"

.field public static final blacklist FEATURE_APP_COMPAT_OVERRIDES:Ljava/lang/String; = "android.software.app_compat_overrides"

.field public static final blacklist FEATURE_APP_ENUMERATION:Ljava/lang/String; = "android.software.app_enumeration"

.field public static final whitelist FEATURE_APP_WIDGETS:Ljava/lang/String; = "android.software.app_widgets"

.field public static final greylist-max-o FEATURE_ASSIST_GESTURE:Ljava/lang/String; = "android.hardware.sensor.assist"

.field public static final whitelist FEATURE_AUDIO_LOW_LATENCY:Ljava/lang/String; = "android.hardware.audio.low_latency"

.field public static final whitelist FEATURE_AUDIO_OUTPUT:Ljava/lang/String; = "android.hardware.audio.output"

.field public static final whitelist FEATURE_AUDIO_PRO:Ljava/lang/String; = "android.hardware.audio.pro"

.field public static final blacklist FEATURE_AUDIO_SPATIAL_HEADTRACKING_LOW_LATENCY:Ljava/lang/String; = "android.hardware.audio.spatial.headtracking.low_latency"

.field public static final whitelist FEATURE_AUTOFILL:Ljava/lang/String; = "android.software.autofill"

.field public static final whitelist FEATURE_AUTOMOTIVE:Ljava/lang/String; = "android.hardware.type.automotive"

.field public static final whitelist FEATURE_BACKUP:Ljava/lang/String; = "android.software.backup"

.field public static final blacklist FEATURE_BARCODE_EMULATOR:Ljava/lang/String; = "com.sec.feature.barcode_emulator"

.field public static final whitelist FEATURE_BLUETOOTH:Ljava/lang/String; = "android.hardware.bluetooth"

.field public static final whitelist FEATURE_BLUETOOTH_LE:Ljava/lang/String; = "android.hardware.bluetooth_le"

.field public static final whitelist FEATURE_BROADCAST_RADIO:Ljava/lang/String; = "android.hardware.broadcastradio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_CAMERA:Ljava/lang/String; = "android.hardware.camera"

.field public static final whitelist FEATURE_CAMERA_ANY:Ljava/lang/String; = "android.hardware.camera.any"

.field public static final whitelist FEATURE_CAMERA_AR:Ljava/lang/String; = "android.hardware.camera.ar"

.field public static final whitelist FEATURE_CAMERA_AUTOFOCUS:Ljava/lang/String; = "android.hardware.camera.autofocus"

.field public static final whitelist FEATURE_CAMERA_CAPABILITY_MANUAL_POST_PROCESSING:Ljava/lang/String; = "android.hardware.camera.capability.manual_post_processing"

.field public static final whitelist FEATURE_CAMERA_CAPABILITY_MANUAL_SENSOR:Ljava/lang/String; = "android.hardware.camera.capability.manual_sensor"

.field public static final whitelist FEATURE_CAMERA_CAPABILITY_RAW:Ljava/lang/String; = "android.hardware.camera.capability.raw"

.field public static final whitelist FEATURE_CAMERA_CONCURRENT:Ljava/lang/String; = "android.hardware.camera.concurrent"

.field public static final whitelist FEATURE_CAMERA_EXTERNAL:Ljava/lang/String; = "android.hardware.camera.external"

.field public static final whitelist FEATURE_CAMERA_FLASH:Ljava/lang/String; = "android.hardware.camera.flash"

.field public static final whitelist FEATURE_CAMERA_FRONT:Ljava/lang/String; = "android.hardware.camera.front"

.field public static final whitelist FEATURE_CAMERA_LEVEL_FULL:Ljava/lang/String; = "android.hardware.camera.level.full"

.field public static final whitelist FEATURE_CANT_SAVE_STATE:Ljava/lang/String; = "android.software.cant_save_state"

.field public static final blacklist FEATURE_CAR_DISPLAY_COMPATIBILITY:Ljava/lang/String; = "android.software.car.display_compatibility"

.field public static final blacklist FEATURE_CAR_SPLITSCREEN_MULTITASKING:Ljava/lang/String; = "android.software.car.splitscreen_multitasking"

.field public static final blacklist FEATURE_CAR_TEMPLATES_HOST:Ljava/lang/String; = "android.software.car.templates_host"

.field public static final blacklist FEATURE_COMMUNAL_MODE:Ljava/lang/String; = "android.software.communal_mode"

.field public static final whitelist FEATURE_COMPANION_DEVICE_SETUP:Ljava/lang/String; = "android.software.companion_device_setup"

.field public static final whitelist FEATURE_CONNECTION_SERVICE:Ljava/lang/String; = "android.software.connectionservice"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_CONSUMER_IR:Ljava/lang/String; = "android.hardware.consumerir"

.field public static final blacklist FEATURE_CONTEXTUAL_SEARCH_HELPER:Ljava/lang/String; = "android.software.contextualsearch"

.field public static final whitelist FEATURE_CONTEXT_HUB:Ljava/lang/String; = "android.hardware.context_hub"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_CONTROLS:Ljava/lang/String; = "android.software.controls"

.field public static final blacklist FEATURE_COVER:Ljava/lang/String; = "com.sec.feature.cover"

.field public static final blacklist FEATURE_COVER_CLEAR:Ljava/lang/String; = "com.sec.feature.cover.clearcover"

.field public static final blacklist FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field public static final blacklist FEATURE_COVER_NFCLED:Ljava/lang/String; = "com.sec.feature.cover.nfcledcover"

.field public static final blacklist FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field public static final whitelist FEATURE_CREDENTIALS:Ljava/lang/String; = "android.software.credentials"

.field public static final greylist-max-o FEATURE_CTS:Ljava/lang/String; = "android.software.cts"

.field public static final whitelist FEATURE_DEVICE_ADMIN:Ljava/lang/String; = "android.software.device_admin"

.field public static final greylist-max-o FEATURE_DEVICE_ID_ATTESTATION:Ljava/lang/String; = "android.software.device_id_attestation"

.field public static final whitelist FEATURE_DEVICE_LOCK:Ljava/lang/String; = "android.software.device_lock"

.field public static final blacklist FEATURE_DEVICE_UNIQUE_ATTESTATION:Ljava/lang/String; = "android.hardware.device_unique_attestation"

.field public static final blacklist FEATURE_DREAM_OVERLAY:Ljava/lang/String; = "android.software.dream_overlay"

.field public static final whitelist FEATURE_EMBEDDED:Ljava/lang/String; = "android.hardware.type.embedded"

.field public static final whitelist FEATURE_EROFS:Ljava/lang/String; = "android.software.erofs"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_EROFS_LEGACY:Ljava/lang/String; = "android.software.erofs_legacy"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ETHERNET:Ljava/lang/String; = "android.hardware.ethernet"

.field public static final whitelist FEATURE_EXPANDED_PICTURE_IN_PICTURE:Ljava/lang/String; = "android.software.expanded_picture_in_picture"

.field public static final whitelist FEATURE_FACE:Ljava/lang/String; = "android.hardware.biometrics.face"

.field public static final whitelist FEATURE_FAKETOUCH:Ljava/lang/String; = "android.hardware.faketouch"

.field public static final whitelist FEATURE_FAKETOUCH_MULTITOUCH_DISTINCT:Ljava/lang/String; = "android.hardware.faketouch.multitouch.distinct"

.field public static final whitelist FEATURE_FAKETOUCH_MULTITOUCH_JAZZHAND:Ljava/lang/String; = "android.hardware.faketouch.multitouch.jazzhand"

.field public static final blacklist FEATURE_FELICA:Ljava/lang/String; = "android.hardware.felica"

.field public static final blacklist FEATURE_FILE_BASED_ENCRYPTION:Ljava/lang/String; = "android.software.file_based_encryption"

.field public static final whitelist FEATURE_FINGERPRINT:Ljava/lang/String; = "android.hardware.fingerprint"

.field public static final whitelist FEATURE_FREEFORM_WINDOW_MANAGEMENT:Ljava/lang/String; = "android.software.freeform_window_management"

.field public static final whitelist FEATURE_GAMEPAD:Ljava/lang/String; = "android.hardware.gamepad"

.field public static final whitelist FEATURE_GAME_SERVICE:Ljava/lang/String; = "android.software.game_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_HARDWARE_KEYSTORE:Ljava/lang/String; = "android.hardware.hardware_keystore"

.field public static final greylist-max-o FEATURE_HDMI_CEC:Ljava/lang/String; = "android.hardware.hdmi.cec"

.field public static final whitelist FEATURE_HIFI_SENSORS:Ljava/lang/String; = "android.hardware.sensor.hifi_sensors"

.field public static final whitelist FEATURE_HOME_SCREEN:Ljava/lang/String; = "android.software.home_screen"

.field public static final whitelist FEATURE_IDENTITY_CREDENTIAL_HARDWARE:Ljava/lang/String; = "android.hardware.identity_credential"

.field public static final whitelist FEATURE_IDENTITY_CREDENTIAL_HARDWARE_DIRECT_ACCESS:Ljava/lang/String; = "android.hardware.identity_credential_direct_access"

.field public static final whitelist FEATURE_INCREMENTAL_DELIVERY:Ljava/lang/String; = "android.software.incremental_delivery"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_INPUT_METHODS:Ljava/lang/String; = "android.software.input_methods"

.field public static final whitelist FEATURE_IPSEC_TUNNELS:Ljava/lang/String; = "android.software.ipsec_tunnels"

.field public static final whitelist FEATURE_IPSEC_TUNNEL_MIGRATION:Ljava/lang/String; = "android.software.ipsec_tunnel_migration"

.field public static final whitelist FEATURE_IRIS:Ljava/lang/String; = "android.hardware.biometrics.iris"

.field public static final whitelist FEATURE_KEYSTORE_APP_ATTEST_KEY:Ljava/lang/String; = "android.hardware.keystore.app_attest_key"

.field public static final whitelist FEATURE_KEYSTORE_LIMITED_USE_KEY:Ljava/lang/String; = "android.hardware.keystore.limited_use_key"

.field public static final whitelist FEATURE_KEYSTORE_SINGLE_USE_KEY:Ljava/lang/String; = "android.hardware.keystore.single_use_key"

.field public static final whitelist FEATURE_LEANBACK:Ljava/lang/String; = "android.software.leanback"

.field public static final whitelist FEATURE_LEANBACK_ONLY:Ljava/lang/String; = "android.software.leanback_only"

.field public static final whitelist FEATURE_LIVE_TV:Ljava/lang/String; = "android.software.live_tv"

.field public static final whitelist FEATURE_LIVE_WALLPAPER:Ljava/lang/String; = "android.software.live_wallpaper"

.field public static final whitelist FEATURE_LOCATION:Ljava/lang/String; = "android.hardware.location"

.field public static final whitelist FEATURE_LOCATION_GPS:Ljava/lang/String; = "android.hardware.location.gps"

.field public static final whitelist FEATURE_LOCATION_NETWORK:Ljava/lang/String; = "android.hardware.location.network"

.field public static final greylist-max-o FEATURE_LOWPAN:Ljava/lang/String; = "android.hardware.lowpan"

.field public static final greylist-max-o FEATURE_MANAGED_PROFILES:Ljava/lang/String; = "android.software.managed_users"

.field public static final whitelist FEATURE_MANAGED_USERS:Ljava/lang/String; = "android.software.managed_users"

.field public static final whitelist FEATURE_MICROPHONE:Ljava/lang/String; = "android.hardware.microphone"

.field public static final whitelist FEATURE_MIDI:Ljava/lang/String; = "android.software.midi"

.field public static final blacklist FEATURE_MOTIONRECOGNITION_SERVICE:Ljava/lang/String; = "com.sec.feature.motionrecognition_service"

.field public static final whitelist FEATURE_NFC:Ljava/lang/String; = "android.hardware.nfc"

.field public static final greylist-max-o FEATURE_NFC_ANY:Ljava/lang/String; = "android.hardware.nfc.any"

.field public static final whitelist FEATURE_NFC_BEAM:Ljava/lang/String; = "android.sofware.nfc.beam"

.field public static final blacklist FEATURE_NFC_CHARGING:Ljava/lang/String; = "android.hardware.nfc.charging"

.field public static final greylist-max-o FEATURE_NFC_HCE:Ljava/lang/String; = "android.hardware.nfc.hce"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_NFC_HOST_CARD_EMULATION:Ljava/lang/String; = "android.hardware.nfc.hce"

.field public static final whitelist FEATURE_NFC_HOST_CARD_EMULATION_NFCF:Ljava/lang/String; = "android.hardware.nfc.hcef"

.field public static final whitelist FEATURE_NFC_OFF_HOST_CARD_EMULATION_ESE:Ljava/lang/String; = "android.hardware.nfc.ese"

.field public static final whitelist FEATURE_NFC_OFF_HOST_CARD_EMULATION_UICC:Ljava/lang/String; = "android.hardware.nfc.uicc"

.field public static final whitelist FEATURE_OPENGLES_DEQP_LEVEL:Ljava/lang/String; = "android.software.opengles.deqp.level"

.field public static final whitelist FEATURE_OPENGLES_EXTENSION_PACK:Ljava/lang/String; = "android.hardware.opengles.aep"

.field public static final whitelist FEATURE_PC:Ljava/lang/String; = "android.hardware.type.pc"

.field public static final whitelist FEATURE_PICTURE_IN_PICTURE:Ljava/lang/String; = "android.software.picture_in_picture"

.field public static final whitelist FEATURE_PRINTING:Ljava/lang/String; = "android.software.print"

.field public static final whitelist FEATURE_RAM_LOW:Ljava/lang/String; = "android.hardware.ram.low"

.field public static final whitelist FEATURE_RAM_NORMAL:Ljava/lang/String; = "android.hardware.ram.normal"

.field public static final whitelist FEATURE_REBOOT_ESCROW:Ljava/lang/String; = "android.hardware.reboot_escrow"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FEATURE_ROTARY_ENCODER_LOW_RES:Ljava/lang/String; = "android.hardware.rotaryencoder.lowres"

.field public static final blacklist FEATURE_SCONTEXT_LITE:Ljava/lang/String; = "com.sec.feature.scontext_lite"

.field public static final whitelist FEATURE_SCREEN_LANDSCAPE:Ljava/lang/String; = "android.hardware.screen.landscape"

.field public static final whitelist FEATURE_SCREEN_PORTRAIT:Ljava/lang/String; = "android.hardware.screen.portrait"

.field public static final blacklist FEATURE_SDK_SANDBOX_WORK_PROFILE_INSTALL:Ljava/lang/String; = "android.software.sdksandbox.sdk_install_work_profile"

.field public static final whitelist FEATURE_SECURELY_REMOVES_USERS:Ljava/lang/String; = "android.software.securely_removes_users"

.field public static final whitelist FEATURE_SECURE_LOCK_SCREEN:Ljava/lang/String; = "android.software.secure_lock_screen"

.field public static final whitelist FEATURE_SECURITY_MODEL_COMPATIBLE:Ljava/lang/String; = "android.hardware.security.model.compatible"

.field public static final blacklist FEATURE_SENSORHUB:Ljava/lang/String; = "com.sec.feature.sensorhub"

.field public static final whitelist FEATURE_SENSOR_ACCELEROMETER:Ljava/lang/String; = "android.hardware.sensor.accelerometer"

.field public static final whitelist FEATURE_SENSOR_ACCELEROMETER_LIMITED_AXES:Ljava/lang/String; = "android.hardware.sensor.accelerometer_limited_axes"

.field public static final whitelist FEATURE_SENSOR_ACCELEROMETER_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.hardware.sensor.accelerometer_limited_axes_uncalibrated"

.field public static final whitelist FEATURE_SENSOR_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.hardware.sensor.ambient_temperature"

.field public static final whitelist FEATURE_SENSOR_BAROMETER:Ljava/lang/String; = "android.hardware.sensor.barometer"

.field public static final whitelist FEATURE_SENSOR_COMPASS:Ljava/lang/String; = "android.hardware.sensor.compass"

.field public static final whitelist FEATURE_SENSOR_DYNAMIC_HEAD_TRACKER:Ljava/lang/String; = "android.hardware.sensor.dynamic.head_tracker"

.field public static final whitelist FEATURE_SENSOR_GYROSCOPE:Ljava/lang/String; = "android.hardware.sensor.gyroscope"

.field public static final whitelist FEATURE_SENSOR_GYROSCOPE_LIMITED_AXES:Ljava/lang/String; = "android.hardware.sensor.gyroscope_limited_axes"

.field public static final whitelist FEATURE_SENSOR_GYROSCOPE_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.hardware.sensor.gyroscope_limited_axes_uncalibrated"

.field public static final whitelist FEATURE_SENSOR_HEADING:Ljava/lang/String; = "android.hardware.sensor.heading"

.field public static final whitelist FEATURE_SENSOR_HEART_RATE:Ljava/lang/String; = "android.hardware.sensor.heartrate"

.field public static final whitelist FEATURE_SENSOR_HEART_RATE_ECG:Ljava/lang/String; = "android.hardware.sensor.heartrate.ecg"

.field public static final whitelist FEATURE_SENSOR_HINGE_ANGLE:Ljava/lang/String; = "android.hardware.sensor.hinge_angle"

.field public static final whitelist FEATURE_SENSOR_LIGHT:Ljava/lang/String; = "android.hardware.sensor.light"

.field public static final whitelist FEATURE_SENSOR_PROXIMITY:Ljava/lang/String; = "android.hardware.sensor.proximity"

.field public static final whitelist FEATURE_SENSOR_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.hardware.sensor.relative_humidity"

.field public static final whitelist FEATURE_SENSOR_STEP_COUNTER:Ljava/lang/String; = "android.hardware.sensor.stepcounter"

.field public static final whitelist FEATURE_SENSOR_STEP_DETECTOR:Ljava/lang/String; = "android.hardware.sensor.stepdetector"

.field public static final whitelist FEATURE_SE_OMAPI_ESE:Ljava/lang/String; = "android.hardware.se.omapi.ese"

.field public static final whitelist FEATURE_SE_OMAPI_SD:Ljava/lang/String; = "android.hardware.se.omapi.sd"

.field public static final whitelist FEATURE_SE_OMAPI_UICC:Ljava/lang/String; = "android.hardware.se.omapi.uicc"

.field public static final whitelist FEATURE_SIP:Ljava/lang/String; = "android.software.sip"

.field public static final whitelist FEATURE_SIP_VOIP:Ljava/lang/String; = "android.software.sip.voip"

.field public static final blacklist FEATURE_SLICES_DISABLED:Ljava/lang/String; = "android.software.slices_disabled"

.field public static final whitelist FEATURE_STRONGBOX_KEYSTORE:Ljava/lang/String; = "android.hardware.strongbox_keystore"

.field public static final whitelist FEATURE_TELECOM:Ljava/lang/String; = "android.software.telecom"

.field public static final whitelist FEATURE_TELEPHONY:Ljava/lang/String; = "android.hardware.telephony"

.field public static final whitelist FEATURE_TELEPHONY_CALLING:Ljava/lang/String; = "android.hardware.telephony.calling"

.field public static final whitelist FEATURE_TELEPHONY_CARRIERLOCK:Ljava/lang/String; = "android.hardware.telephony.carrierlock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_TELEPHONY_CDMA:Ljava/lang/String; = "android.hardware.telephony.cdma"

.field public static final whitelist FEATURE_TELEPHONY_DATA:Ljava/lang/String; = "android.hardware.telephony.data"

.field public static final whitelist FEATURE_TELEPHONY_EUICC:Ljava/lang/String; = "android.hardware.telephony.euicc"

.field public static final whitelist FEATURE_TELEPHONY_EUICC_MEP:Ljava/lang/String; = "android.hardware.telephony.euicc.mep"

.field public static final whitelist FEATURE_TELEPHONY_GSM:Ljava/lang/String; = "android.hardware.telephony.gsm"

.field public static final whitelist FEATURE_TELEPHONY_IMS:Ljava/lang/String; = "android.hardware.telephony.ims"

.field public static final whitelist FEATURE_TELEPHONY_IMS_SINGLE_REGISTRATION:Ljava/lang/String; = "android.hardware.telephony.ims.singlereg"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_TELEPHONY_MBMS:Ljava/lang/String; = "android.hardware.telephony.mbms"

.field public static final whitelist FEATURE_TELEPHONY_MESSAGING:Ljava/lang/String; = "android.hardware.telephony.messaging"

.field public static final whitelist FEATURE_TELEPHONY_RADIO_ACCESS:Ljava/lang/String; = "android.hardware.telephony.radio.access"

.field public static final blacklist FEATURE_TELEPHONY_SATELLITE:Ljava/lang/String; = "android.hardware.telephony.satellite"

.field public static final whitelist FEATURE_TELEPHONY_SUBSCRIPTION:Ljava/lang/String; = "android.hardware.telephony.subscription"

.field public static final whitelist FEATURE_TELEVISION:Ljava/lang/String; = "android.hardware.type.television"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FEATURE_THREAD_NETWORK:Ljava/lang/String; = "android.hardware.thread_network"

.field public static final whitelist FEATURE_TOUCHSCREEN:Ljava/lang/String; = "android.hardware.touchscreen"

.field public static final whitelist FEATURE_TOUCHSCREEN_MULTITOUCH:Ljava/lang/String; = "android.hardware.touchscreen.multitouch"

.field public static final whitelist FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT:Ljava/lang/String; = "android.hardware.touchscreen.multitouch.distinct"

.field public static final whitelist FEATURE_TOUCHSCREEN_MULTITOUCH_JAZZHAND:Ljava/lang/String; = "android.hardware.touchscreen.multitouch.jazzhand"

.field public static final blacklist FEATURE_TUNER:Ljava/lang/String; = "android.hardware.tv.tuner"

.field public static final whitelist FEATURE_USB_ACCESSORY:Ljava/lang/String; = "android.hardware.usb.accessory"

.field public static final whitelist FEATURE_USB_HOST:Ljava/lang/String; = "android.hardware.usb.host"

.field public static final whitelist FEATURE_UWB:Ljava/lang/String; = "android.hardware.uwb"

.field public static final whitelist FEATURE_VERIFIED_BOOT:Ljava/lang/String; = "android.software.verified_boot"

.field public static final whitelist FEATURE_VIRTUALIZATION_FRAMEWORK:Ljava/lang/String; = "android.software.virtualization_framework"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o FEATURE_VOICE_RECOGNIZERS:Ljava/lang/String; = "android.software.voice_recognizers"

.field public static final whitelist FEATURE_VR_HEADTRACKING:Ljava/lang/String; = "android.hardware.vr.headtracking"

.field public static final whitelist FEATURE_VR_MODE:Ljava/lang/String; = "android.software.vr.mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_VR_MODE_HIGH_PERFORMANCE:Ljava/lang/String; = "android.hardware.vr.high_performance"

.field public static final whitelist FEATURE_VULKAN_DEQP_LEVEL:Ljava/lang/String; = "android.software.vulkan.deqp.level"

.field public static final whitelist FEATURE_VULKAN_HARDWARE_COMPUTE:Ljava/lang/String; = "android.hardware.vulkan.compute"

.field public static final whitelist FEATURE_VULKAN_HARDWARE_LEVEL:Ljava/lang/String; = "android.hardware.vulkan.level"

.field public static final whitelist FEATURE_VULKAN_HARDWARE_VERSION:Ljava/lang/String; = "android.hardware.vulkan.version"

.field public static final whitelist FEATURE_WALLET_LOCATION_BASED_SUGGESTIONS:Ljava/lang/String; = "android.software.wallet_location_based_suggestions"

.field public static final whitelist FEATURE_WATCH:Ljava/lang/String; = "android.hardware.type.watch"

.field public static final whitelist FEATURE_WEBVIEW:Ljava/lang/String; = "android.software.webview"

.field public static final whitelist FEATURE_WIFI:Ljava/lang/String; = "android.hardware.wifi"

.field public static final whitelist FEATURE_WIFI_AWARE:Ljava/lang/String; = "android.hardware.wifi.aware"

.field public static final whitelist FEATURE_WIFI_DIRECT:Ljava/lang/String; = "android.hardware.wifi.direct"

.field public static final whitelist FEATURE_WIFI_PASSPOINT:Ljava/lang/String; = "android.hardware.wifi.passpoint"

.field public static final whitelist FEATURE_WIFI_RTT:Ljava/lang/String; = "android.hardware.wifi.rtt"

.field public static final whitelist FEATURE_WINDOW_MAGNIFICATION:Ljava/lang/String; = "android.software.window_magnification"

.field public static final blacklist FILTER_APPLICATION_QUERY:J = 0x81452ebL

.field public static final whitelist FLAGS_PERMISSION_RESERVED_PERMISSION_CONTROLLER:I = -0x10000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FLAGS_PERMISSION_RESTRICTION_ANY_EXEMPT:I = 0x3800

.field public static final whitelist FLAG_PERMISSION_APPLY_RESTRICTION:I = 0x4000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_AUTO_REVOKED:I = 0x20000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_GRANTED_BY_DEFAULT:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_GRANTED_BY_ROLE:I = 0x8000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_ONE_TIME:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_POLICY_FIXED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_RESTRICTION_INSTALLER_EXEMPT:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_RESTRICTION_SYSTEM_EXEMPT:I = 0x1000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_RESTRICTION_UPGRADE_EXEMPT:I = 0x2000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_REVIEW_REQUIRED:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_REVOKED_COMPAT:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_REVOKE_ON_UPGRADE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_REVOKE_WHEN_REQUESTED:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_SELECTED_LOCATION_ACCURACY:I = 0x80000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_SYSTEM_FIXED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_USER_FIXED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_USER_SENSITIVE_WHEN_DENIED:I = 0x200
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_USER_SENSITIVE_WHEN_GRANTED:I = 0x100
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_USER_SET:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_WHITELIST_INSTALLER:I = 0x2

.field public static final whitelist FLAG_PERMISSION_WHITELIST_SYSTEM:I = 0x1

.field public static final whitelist FLAG_PERMISSION_WHITELIST_UPGRADE:I = 0x4

.field public static final blacklist FLAG_SUSPEND_QUARANTINED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GET_ACTIVITIES:I = 0x1

.field public static final blacklist GET_APP_LIST_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.GET_APP_LIST"

.field public static final whitelist GET_ATTRIBUTIONS:I = -0x80000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_ATTRIBUTIONS_LONG:J = 0x80000000L

.field public static final whitelist GET_CONFIGURATIONS:I = 0x4000

.field public static final whitelist GET_DISABLED_COMPONENTS:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_DISABLED_UNTIL_USED_COMPONENTS:I = 0x8000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_GIDS:I = 0x100

.field public static final whitelist GET_INSTRUMENTATION:I = 0x10

.field public static final whitelist GET_INTENT_FILTERS:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_META_DATA:I = 0x80

.field public static final whitelist GET_PERMISSIONS:I = 0x1000

.field public static final whitelist GET_PROVIDERS:I = 0x8

.field public static final whitelist GET_RECEIVERS:I = 0x2

.field public static final whitelist GET_RESOLVED_FILTER:I = 0x40

.field public static final whitelist GET_SERVICES:I = 0x4

.field public static final whitelist GET_SHARED_LIBRARY_FILES:I = 0x400

.field public static final whitelist GET_SIGNATURES:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_SIGNING_CERTIFICATES:I = 0x8000000

.field public static final whitelist GET_UNINSTALLED_PACKAGES:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_URI_PERMISSION_PATTERNS:I = 0x800

.field public static final blacklist ICON_TRAY_DEFAULT_MODE:I = 0x0

.field public static final blacklist ICON_TRAY_SQUICLE_MODE:I = 0x1

.field public static final blacklist INSTALLTOSDCARD_ENABLED_STATE:Ljava/lang/String; = "installToSdCardState"

.field public static final blacklist INSTALL_ACTIVATION_FAILED:I = -0x80

.field public static final greylist-max-o INSTALL_ALLOCATE_AGGRESSIVE:I = 0x8000

.field public static final greylist-max-o INSTALL_ALLOW_DOWNGRADE:I = 0x100000

.field public static final greylist-max-o INSTALL_ALLOW_TEST:I = 0x4

.field public static final greylist-max-o INSTALL_ALL_USERS:I = 0x40

.field public static final blacklist INSTALL_ALL_WHITELIST_RESTRICTED_PERMISSIONS:I = 0x400000

.field public static final blacklist INSTALL_APEX:I = 0x20000

.field public static final blacklist INSTALL_ARCHIVED:I = 0x8000000

.field public static final blacklist INSTALL_BYPASS_LOW_TARGET_SDK_BLOCK:I = 0x1000000

.field public static final blacklist INSTALL_DEVELOPMENT_FORCE_NON_STAGED_APEX_UPDATE:I = 0x1

.field public static final blacklist INSTALL_DIRECTLY:I = 0x2000000

.field public static final blacklist INSTALL_DISABLE_ALLOWED_APEX_UPDATE_CHECK:I = 0x800000

.field public static final blacklist INSTALL_DISABLE_VERIFICATION:I = 0x80000

.field public static final greylist-max-o INSTALL_DONT_KILL_APP:I = 0x1000

.field public static final blacklist INSTALL_ENABLE_ROLLBACK:I = 0x40000

.field public static final greylist INSTALL_EXTERNAL:I = 0x8

.field public static final greylist-max-o INSTALL_FAILED_ABORTED:I = -0x73

.field public static final blacklist INSTALL_FAILED_ADP_VERSION_LOCKED:I = -0xbbd

.field public static final whitelist INSTALL_FAILED_ALREADY_EXISTS:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_AUTH_ASKSTOKEN:I = -0xbbc

.field public static final greylist-max-o INSTALL_FAILED_BAD_DEX_METADATA:I = -0x75

.field public static final blacklist INSTALL_FAILED_BAD_PERMISSION_GROUP:I = -0x7f

.field public static final blacklist INSTALL_FAILED_BAD_SIGNATURE:I = -0x76

.field public static final blacklist INSTALL_FAILED_BLOCKED_CROSS_DOWN:I = -0xbbe

.field public static final whitelist INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_CONTAINER_ERROR:I = -0x12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_DEPRECATED_SDK_VERSION:I = -0x1d

.field public static final whitelist INSTALL_FAILED_DEXOPT:I = -0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INSTALL_FAILED_DUPLICATE_PERMISSION:I = -0x70

.field public static final blacklist INSTALL_FAILED_DUPLICATE_PERMISSION_GROUP:I = -0x7e

.field public static final whitelist INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_INVALID_APK:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_INVALID_URI:I = -0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_MISSING_ASKSTOKEN:I = -0xbbb

.field public static final blacklist INSTALL_FAILED_MISSING_CERTIFICATION:I = -0xbba

.field public static final whitelist INSTALL_FAILED_MISSING_FEATURE:I = -0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_MISSING_SPLIT:I = -0x1c

.field public static final blacklist INSTALL_FAILED_MULTIPACKAGE_INCONSISTENCY:I = -0x78

.field public static final blacklist INSTALL_FAILED_MULTI_ARCH_NOT_MATCH_ALL_NATIVE_ABIS:I = -0x83

.field public static final whitelist INSTALL_FAILED_NEWER_SDK:I = -0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INSTALL_FAILED_NO_MATCHING_ABIS:I = -0x71

.field public static final whitelist INSTALL_FAILED_NO_SHARED_USER:I = -0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_OLDER_SDK:I = -0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_OTHER_STAGED_SESSION_IN_PROGRESS:I = -0x77

.field public static final whitelist INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE:I = -0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_PRE_APPROVAL_NOT_AVAILABLE:I = -0x81

.field public static final blacklist INSTALL_FAILED_PROCESS_NOT_DEFINED:I = -0x7a

.field public static final blacklist INSTALL_FAILED_REJECTED_BY_BUILDTYPE:I = -0xbb9

.field public static final blacklist INSTALL_FAILED_REJECTED_BY_DATE:I = -0xbb8

.field public static final whitelist INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_SANDBOX_VERSION_DOWNGRADE:I = -0x1b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_SESSION_INVALID:I = -0x74

.field public static final blacklist INSTALL_FAILED_SHARED_LIBRARY_BAD_CERTIFICATE_DIGEST:I = -0x82

.field public static final whitelist INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_SIGNATURE_NOT_APPROVED_FOR_MDM:I = -0x33

.field public static final whitelist INSTALL_FAILED_TEST_ONLY:I = -0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final blacklist INSTALL_FAILED_UNKNOWN_SOURCES_FOR_MDM:I = -0x32

.field public static final whitelist INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INSTALL_FAILED_USER_RESTRICTED:I = -0x6f

.field public static final whitelist INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INSTALL_FAILED_VERSION_DOWNGRADE:I = -0x19

.field public static final blacklist INSTALL_FAILED_WRONG_INSTALLED_VERSION:I = -0x79

.field public static final greylist-max-o INSTALL_FORCE_PERMISSION_PROMPT:I = 0x400

.field public static final greylist-max-o INSTALL_FORCE_VOLUME_UUID:I = 0x200

.field public static final greylist-max-o INSTALL_FROM_ADB:I = 0x20

.field public static final blacklist INSTALL_FROM_MANAGED_USER_OR_PROFILE:I = 0x4000000

.field public static final greylist-max-o INSTALL_FULL_APP:I = 0x4000

.field public static final blacklist INSTALL_GRANT_ALL_REQUESTED_PERMISSIONS:I = 0x100

.field public static final blacklist INSTALL_IGNORE_DEXOPT_PROFILE:I = 0x10000000

.field public static final greylist-max-o INSTALL_INSTANT_APP:I = 0x800

.field public static final greylist-max-o INSTALL_INTERNAL:I = 0x10

.field public static final whitelist INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_NOT_APK:I = -0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_PARSE_FAILED_RESOURCES_ARSC_COMPRESSED:I = -0x7c

.field public static final blacklist INSTALL_PARSE_FAILED_SKIPPED:I = -0x7d

.field public static final whitelist INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_REASON_DEVICE_RESTORE:I = 0x2

.field public static final whitelist INSTALL_REASON_DEVICE_SETUP:I = 0x3

.field public static final whitelist INSTALL_REASON_POLICY:I = 0x1

.field public static final blacklist INSTALL_REASON_ROLLBACK:I = 0x5

.field public static final whitelist INSTALL_REASON_UNKNOWN:I = 0x0

.field public static final whitelist INSTALL_REASON_USER:I = 0x4

.field public static final greylist INSTALL_REPLACE_EXISTING:I = 0x2

.field public static final blacklist INSTALL_REQUEST_DOWNGRADE:I = 0x80

.field public static final blacklist INSTALL_REQUEST_UPDATE_OWNERSHIP:I = 0x2000000

.field public static final whitelist INSTALL_SCENARIO_BULK:I = 0x2

.field public static final whitelist INSTALL_SCENARIO_BULK_SECONDARY:I = 0x3

.field public static final whitelist INSTALL_SCENARIO_DEFAULT:I = 0x0

.field public static final whitelist INSTALL_SCENARIO_FAST:I = 0x1

.field public static final blacklist INSTALL_SKIP_DEXOPT:I = 0x4000000

.field public static final blacklist INSTALL_STAGED:I = 0x200000

.field public static final whitelist INSTALL_SUCCEEDED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_UNARCHIVE:I = 0x40000000

.field public static final blacklist INSTALL_UNARCHIVE_DRAFT:I = 0x20000000

.field public static final blacklist INSTALL_UNKNOWN:I = 0x0

.field public static final greylist-max-o INSTALL_VIRTUAL_PRELOAD:I = 0x10000

.field public static final whitelist INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_ALWAYS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_ALWAYS_ASK:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_ASK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_NEVER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_UNDEFINED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_FILTER_VERIFICATION_FAILURE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_FILTER_VERIFICATION_SUCCESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MASK_PERMISSION_FLAGS:I = 0xff
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MASK_PERMISSION_FLAGS_ALL:I = 0x3fbff

.field public static final whitelist MATCH_ALL:I = 0x20000

.field public static final whitelist MATCH_ANY_USER:I = 0x400000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MATCH_APEX:I = 0x40000000

.field public static final whitelist MATCH_ARCHIVED_PACKAGES:J = 0x100000000L

.field public static final whitelist MATCH_CLONE_PROFILE:I = 0x20000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MATCH_CLONE_PROFILE_LONG:J = 0x400000000L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MATCH_DEBUG_TRIAGED_MISSING:I = 0x10000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MATCH_DEFAULT_ONLY:I = 0x10000

.field public static final whitelist MATCH_DIRECT_BOOT_AUTO:I = 0x10000000

.field public static final whitelist MATCH_DIRECT_BOOT_AWARE:I = 0x80000

.field public static final whitelist MATCH_DIRECT_BOOT_UNAWARE:I = 0x40000

.field public static final blacklist MATCH_DISABLED_AUTOMATICALLY_COMPONENTS:I = 0x20000000

.field public static final whitelist MATCH_DISABLED_COMPONENTS:I = 0x200

.field public static final whitelist MATCH_DISABLED_UNTIL_USED_COMPONENTS:I = 0x8000

.field public static final greylist-max-o MATCH_EXPLICITLY_VISIBLE_ONLY:I = 0x2000000

.field public static final whitelist MATCH_FACTORY_ONLY:I = 0x200000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MATCH_HIDDEN_UNTIL_INSTALLED_COMPONENTS:I = 0x20000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MATCH_INSTANT:I = 0x800000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MATCH_KNOWN_PACKAGES:I = 0x402000

.field public static final blacklist MATCH_QUARANTINED_COMPONENTS:J = 0x200000000L

.field public static final blacklist MATCH_STATIC_SHARED_AND_SDK_LIBRARIES:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist MATCH_SYSTEM_ONLY:I = 0x100000

.field public static final whitelist MATCH_UNINSTALLED_PACKAGES:I = 0x2000

.field public static final greylist-max-o MATCH_VISIBLE_TO_INSTANT_APP_ONLY:I = 0x1000000

.field public static final whitelist MAXIMUM_VERIFICATION_TIMEOUT:J = 0x36ee80L

.field public static final whitelist MODULE_APEX_NAME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-r MOVE_EXTERNAL_MEDIA:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o MOVE_FAILED_3RD_PARTY_NOT_ALLOWED_ON_INTERNAL:I = -0x9

.field public static final greylist-max-o MOVE_FAILED_DEVICE_ADMIN:I = -0x8

.field public static final greylist-max-o MOVE_FAILED_DOESNT_EXIST:I = -0x2

.field public static final greylist-max-o MOVE_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final greylist-max-o MOVE_FAILED_INTERNAL_ERROR:I = -0x6

.field public static final greylist-max-o MOVE_FAILED_INVALID_LOCATION:I = -0x5

.field public static final greylist-max-o MOVE_FAILED_LOCKED_USER:I = -0xa

.field public static final greylist-max-o MOVE_FAILED_OPERATION_PENDING:I = -0x7

.field public static final greylist-max-o MOVE_FAILED_SYSTEM_PACKAGE:I = -0x3

.field public static final greylist-max-r MOVE_INTERNAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o MOVE_SUCCEEDED:I = -0x64

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_ACTIVITY:I = 0x0

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_BACKUP:I = 0x5

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_BROADCAST_RECEIVER:I = 0x3

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_CONTENT_PROVIDER:I = 0x4

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_CROSS_PACKAGE:I = 0x6

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_FOREGROUND_SERVICE:I = 0x2

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_INSTRUMENTATION:I = 0x7

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_REASONS_COUNT:I = 0x8

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_SERVICE:I = 0x1

.field public static final greylist NO_NATIVE_LIBRARIES:I = -0x72

.field public static final greylist-max-o ONLY_IF_NO_MATCH_FOUND:I = 0x4

.field public static final whitelist PERMISSION_DENIED:I = -0x1

.field public static final whitelist PERMISSION_GRANTED:I = 0x0

.field public static final blacklist PROPERTY_ALLOW_ADB_BACKUP:Ljava/lang/String; = "android.backup.ALLOW_ADB_BACKUP"

.field public static final blacklist PROPERTY_ANDROID_SAFETY_LABEL:Ljava/lang/String; = "android.content.PROPERTY_ANDROID_SAFETY_LABEL"

.field public static final whitelist PROPERTY_COMPAT_OVERRIDE_LANDSCAPE_TO_PORTRAIT:Ljava/lang/String; = "android.camera.PROPERTY_COMPAT_OVERRIDE_LANDSCAPE_TO_PORTRAIT"

.field public static final blacklist PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST:Ljava/lang/String; = "android.app.PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST"

.field public static final whitelist PROPERTY_MEDIA_CAPABILITIES:Ljava/lang/String; = "android.media.PROPERTY_MEDIA_CAPABILITIES"

.field public static final blacklist PROPERTY_NO_APP_DATA_STORAGE:Ljava/lang/String; = "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

.field public static final whitelist PROPERTY_SELF_CERTIFIED_NETWORK_CAPABILITIES:Ljava/lang/String; = "android.net.PROPERTY_SELF_CERTIFIED_NETWORK_CAPABILITIES"

.field public static final whitelist PROPERTY_SPECIAL_USE_FGS_SUBTYPE:Ljava/lang/String; = "android.app.PROPERTY_SPECIAL_USE_FGS_SUBTYPE"

.field public static final whitelist RESTRICTION_HIDE_FROM_SUGGESTIONS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_HIDE_NOTIFICATIONS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLLBACK_DATA_POLICY_RESTORE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLLBACK_DATA_POLICY_RETAIN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLLBACK_DATA_POLICY_WIPE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLLBACK_USER_IMPACT_HIGH:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLLBACK_USER_IMPACT_LOW:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLLBACK_USER_IMPACT_ONLY_MANUAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SEM_FEATURE_APPICON_ADAPTIVEICON_SHADOW:I = 0x2

.field public static final blacklist SEM_FEATURE_APPICON_COLOR_NO_ADAPTIVE:I = 0x4

.field public static final blacklist SEM_FEATURE_APPICON_COLOR_ONLY_BG:I = 0x8

.field public static final blacklist SEM_FEATURE_APPICON_HAS_ICON_CONTAINER:I = 0x1

.field public static final whitelist SEM_FEATURE_BARCODE_EMULATOR:Ljava/lang/String; = "com.sec.feature.barcode_emulator"

.field public static final whitelist SEM_FEATURE_COCKTAIL_PANEL:Ljava/lang/String; = "com.sec.feature.cocktailpanel"

.field public static final blacklist SEM_FEATURE_CONTEXT_LITE:Ljava/lang/String; = "com.sec.feature.scontext_lite"

.field public static final whitelist SEM_FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field public static final whitelist SEM_FEATURE_DEVICE_CATEGORY_PHONE:Ljava/lang/String; = "com.samsung.feature.device_category_phone"

.field public static final whitelist SEM_FEATURE_DEVICE_CATEGORY_PHONE_HIGH_END:Ljava/lang/String; = "com.samsung.feature.device_category_phone_high_end"

.field public static final whitelist SEM_FEATURE_DEVICE_CATEGORY_PHONE_LOW_END:Ljava/lang/String; = "com.samsung.feature.device_category_phone_low_end"

.field public static final whitelist SEM_FEATURE_DEVICE_CATEGORY_TABLET:Ljava/lang/String; = "com.samsung.feature.device_category_tablet"

.field public static final whitelist SEM_FEATURE_DEVICE_CATEGORY_TABLET_HIGH_END:Ljava/lang/String; = "com.samsung.feature.device_category_tablet_high_end"

.field public static final whitelist SEM_FEATURE_DEVICE_CATEGORY_TABLET_LOW_END:Ljava/lang/String; = "com.samsung.feature.device_category_tablet_low_end"

.field public static final whitelist SEM_FEATURE_DUAL_SCREEN:Ljava/lang/String; = "com.sec.feature.dual_lcd"

.field public static final whitelist SEM_FEATURE_FINDO:Ljava/lang/String; = "com.sec.feature.findo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_FEATURE_FOLDER_TYPE:Ljava/lang/String; = "com.sec.feature.folder_type"

.field public static final whitelist SEM_FEATURE_HOVERING_UI:Ljava/lang/String; = "com.sec.feature.hovering_ui"

.field public static final whitelist SEM_FEATURE_MIRRORLINK_FW:Ljava/lang/String; = "com.samsung.feature.mirrorlink_fw"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation
.end field

.field public static final whitelist SEM_FEATURE_MOTION_RECOGNITION_SERVICE:Ljava/lang/String; = "com.sec.feature.motionrecognition_service"

.field public static final whitelist SEM_FEATURE_MST:Ljava/lang/String; = "com.sec.feature.support_mst"

.field public static final whitelist SEM_FEATURE_SAMSUNG_EXPERIENCE_MOBILE:Ljava/lang/String; = "com.samsung.feature.samsung_experience_mobile"

.field public static final whitelist SEM_FEATURE_SAMSUNG_EXPERIENCE_MOBILE_LITE:Ljava/lang/String; = "com.samsung.feature.samsung_experience_mobile_lite"

.field public static final whitelist SEM_FEATURE_SENSOR_HUB:Ljava/lang/String; = "com.sec.feature.sensorhub"

.field public static final whitelist SEM_FEATURE_SPEN:Ljava/lang/String; = "com.sec.feature.spen_usp"

.field public static final whitelist SEM_FEATURE_WIFI_DISPLAY:Ljava/lang/String; = "com.sec.feature.wfd_support"

.field public static final whitelist SEM_FLAG_PERMISSION_USER_FIXED:I = 0x2

.field public static final whitelist SEM_FLAG_PERMISSION_USER_SET:I = 0x1

.field public static final blacklist SEM_ICON_ARCHIVED:I = 0x200

.field public static final whitelist SEM_ICON_MASK_COLORTHEME:I = 0x20

.field public static final whitelist SEM_ICON_MASK_DAY:I = 0x40

.field public static final blacklist SEM_ICON_MASK_LOCKSCREEN_SHORTCUT:I = 0x100

.field public static final whitelist SEM_ICON_MASK_NIGHT:I = 0x80

.field public static final whitelist SEM_ICON_MASK_SQUIRCLE:I = 0x10

.field public static final whitelist SEM_ICON_TRAY_DEFAULT_MODE:I = 0x0

.field public static final whitelist SEM_ICON_TRAY_SQUIRCLE_MODE:I = 0x1

.field public static final whitelist SEM_ICON_TRAY_SQUIRCLE_MODE_IGNORE_THEME:I = 0x2

.field public static final whitelist SEM_INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final whitelist SEM_INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final whitelist SEM_INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final whitelist SEM_INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final whitelist SEM_INSTALL_REPLACE_EXISTING:I = 0x2

.field public static final whitelist SEM_INSTALL_SUCCEEDED:I = 0x1

.field public static final blacklist SEM_LIVEICON_DEFAULT:I = 0x0

.field public static final blacklist SEM_LIVEICON_LOCKSCREEN_SHORTCUT:I = 0x1

.field public static final whitelist SEM_MASK_PERMISSION_FLAGS:I = 0xff

.field public static final whitelist SIGNATURE_FIRST_NOT_SIGNED:I = -0x1

.field public static final whitelist SIGNATURE_MATCH:I = 0x0

.field public static final whitelist SIGNATURE_NEITHER_SIGNED:I = 0x1

.field public static final whitelist SIGNATURE_NO_MATCH:I = -0x3

.field public static final whitelist SIGNATURE_SECOND_NOT_SIGNED:I = -0x2

.field public static final whitelist SIGNATURE_UNKNOWN_PACKAGE:I = -0x4

.field public static final greylist-max-o SKIP_CURRENT_PROFILE:I = 0x2

.field public static final whitelist SYNCHRONOUS:I = 0x2

.field public static final whitelist SYSTEM_APP_STATE_HIDDEN_UNTIL_INSTALLED_HIDDEN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_APP_STATE_HIDDEN_UNTIL_INSTALLED_VISIBLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_APP_STATE_INSTALLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_APP_STATE_UNINSTALLED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-r SYSTEM_SHARED_LIBRARY_SERVICES:Ljava/lang/String; = "android.ext.services"

.field public static final greylist-max-r SYSTEM_SHARED_LIBRARY_SHARED:Ljava/lang/String; = "android.ext.shared"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PackageManager"

.field private static final blacklist TAG_SPEG:Ljava/lang/String; = "SPEG"

.field public static final whitelist TRUST_ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TRUST_NONE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_ACTIVITY:I = 0x1

.field public static final blacklist TYPE_APPLICATION:I = 0x5

.field public static final blacklist TYPE_PROVIDER:I = 0x4

.field public static final blacklist TYPE_RECEIVER:I = 0x2

.field public static final blacklist TYPE_SERVICE:I = 0x3

.field public static final blacklist TYPE_UNKNOWN:I = 0x0

.field public static final blacklist UNINSTALL_REASON_UNKNOWN:I = 0x0

.field public static final blacklist UNINSTALL_REASON_USER_TYPE:I = 0x1

.field public static final blacklist USER_MIN_ASPECT_RATIO_16_9:I = 0x4

.field public static final blacklist USER_MIN_ASPECT_RATIO_3_2:I = 0x5

.field public static final blacklist USER_MIN_ASPECT_RATIO_4_3:I = 0x3

.field public static final blacklist USER_MIN_ASPECT_RATIO_APP_DEFAULT:I = 0x7

.field public static final blacklist USER_MIN_ASPECT_RATIO_DISPLAY_SIZE:I = 0x2

.field public static final blacklist USER_MIN_ASPECT_RATIO_FULLSCREEN:I = 0x6

.field public static final blacklist USER_MIN_ASPECT_RATIO_SPLIT_SCREEN:I = 0x1

.field public static final blacklist USER_MIN_ASPECT_RATIO_UNSET:I = 0x0

.field public static final whitelist VERIFICATION_ALLOW:I = 0x1

.field public static final greylist-max-o VERIFICATION_ALLOW_WITHOUT_SUFFICIENT:I = 0x2

.field public static final whitelist VERIFICATION_REJECT:I = -0x1

.field public static final whitelist VERSION_CODE_HIGHEST:I = -0x1

.field private static final blacklist sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/content/pm/PackageManager$ApplicationInfoQuery;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCacheAutoCorker:Landroid/app/PropertyInvalidatedCache$AutoCorker;

.field private static final blacklist sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/content/pm/PackageManager$PackageInfoQuery;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetApplicationInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetPackageInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    const-class v0, Landroid/app/AppDetailsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/content/pm/PackageManager;->TRUST_ALL:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageManager;->TRUST_NONE:Ljava/util/List;

    new-instance v0, Landroid/content/pm/PackageManager$2;

    const-string v1, "getApplicationInfo"

    const/16 v2, 0x20

    const-string v3, "cache_key.package_info"

    invoke-direct {v0, v2, v3, v1}, Landroid/content/pm/PackageManager$2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageManager;->sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v0, Landroid/app/PropertyInvalidatedCache$AutoCorker;

    invoke-direct {v0, v3}, Landroid/app/PropertyInvalidatedCache$AutoCorker;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageManager;->sCacheAutoCorker:Landroid/app/PropertyInvalidatedCache$AutoCorker;

    new-instance v0, Landroid/content/pm/PackageManager$3;

    const/16 v1, 0x40

    const-string v2, "getPackageInfo"

    invoke-direct {v0, v1, v3, v2}, Landroid/content/pm/PackageManager$3;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist corkPackageInfoCache()V
    .locals 1

    const-string v0, "cache_key.package_info"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->corkInvalidations(Ljava/lang/String;)V

    return-void
.end method

.method public static greylist-max-o deleteStatusToPublicStatus(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v1

    :pswitch_4
    return v1

    :pswitch_5
    return v1

    :pswitch_6
    const/4 v0, 0x3

    return v0

    :pswitch_7
    const/4 v0, 0x5

    return v0

    :pswitch_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static greylist deleteStatusToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "DELETE_SUCCEEDED"

    return-object v0

    :pswitch_2
    const-string v0, "DELETE_FAILED_INTERNAL_ERROR"

    return-object v0

    :pswitch_3
    const-string v0, "DELETE_FAILED_DEVICE_POLICY_MANAGER"

    return-object v0

    :pswitch_4
    const-string v0, "DELETE_FAILED_USER_RESTRICTED"

    return-object v0

    :pswitch_5
    const-string v0, "DELETE_FAILED_OWNER_BLOCKED"

    return-object v0

    :pswitch_6
    const-string v0, "DELETE_FAILED_ABORTED"

    return-object v0

    :pswitch_7
    const-string v0, "DELETE_FAILED_USED_SHARED_LIBRARY"

    return-object v0

    :pswitch_8
    const-string v0, "DELETE_FAILED_APP_PINNED"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static greylist-max-o deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/content/pm/PackageManager;->deleteStatusToString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static blacklist disableApplicationInfoCache()V
    .locals 1

    sget-object v0, Landroid/content/pm/PackageManager;->sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public static blacklist disablePackageInfoCache()V
    .locals 1

    sget-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public static blacklist getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .locals 2

    sget-object v0, Landroid/content/pm/PackageManager;->sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/content/pm/PackageManager$ApplicationInfoQuery;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/pm/PackageManager$ApplicationInfoQuery;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method private static blacklist getApplicationInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getPackageInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .locals 2

    sget-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/content/pm/PackageManager$PackageInfoQuery;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/pm/PackageManager$PackageInfoQuery;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private static blacklist getPackageInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o installStatusToPublicStatus(I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x7

    const/4 v5, 0x4

    sparse-switch p0, :sswitch_data_0

    return v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_1
    return v3

    :sswitch_2
    return v5

    :sswitch_3
    return v5

    :sswitch_4
    return v2

    :sswitch_5
    return v3

    :sswitch_6
    return v3

    :sswitch_7
    return v3

    :sswitch_8
    return v3

    :sswitch_9
    return v4

    :sswitch_a
    return v3

    :sswitch_b
    return v5

    :sswitch_c
    return v4

    :sswitch_d
    return v3

    :sswitch_e
    return v4

    :sswitch_f
    return v5

    :sswitch_10
    return v4

    :sswitch_11
    return v4

    :sswitch_12
    return v2

    :sswitch_13
    return v2

    :sswitch_14
    return v2

    :sswitch_15
    return v1

    :sswitch_16
    return v1

    :sswitch_17
    return v5

    :sswitch_18
    return v5

    :sswitch_19
    return v5

    :sswitch_1a
    return v5

    :sswitch_1b
    return v4

    :sswitch_1c
    return v4

    :sswitch_1d
    return v5

    :sswitch_1e
    return v5

    :sswitch_1f
    return v5

    :sswitch_20
    return v5

    :sswitch_21
    return v5

    :sswitch_22
    return v5

    :sswitch_23
    return v5

    :sswitch_24
    return v5

    :sswitch_25
    return v5

    :sswitch_26
    return v5

    :sswitch_27
    return v0

    :sswitch_28
    return v4

    :sswitch_29
    return v3

    :sswitch_2a
    return v4

    :sswitch_2b
    return v1

    :sswitch_2c
    return v5

    :sswitch_2d
    return v5

    :sswitch_2e
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x81 -> :sswitch_2e
        -0x76 -> :sswitch_2d
        -0x75 -> :sswitch_2c
        -0x73 -> :sswitch_2b
        -0x71 -> :sswitch_2a
        -0x70 -> :sswitch_29
        -0x6f -> :sswitch_28
        -0x6e -> :sswitch_27
        -0x6d -> :sswitch_26
        -0x6c -> :sswitch_25
        -0x6b -> :sswitch_24
        -0x6a -> :sswitch_23
        -0x69 -> :sswitch_22
        -0x68 -> :sswitch_21
        -0x67 -> :sswitch_20
        -0x66 -> :sswitch_1f
        -0x65 -> :sswitch_1e
        -0x64 -> :sswitch_1d
        -0x1d -> :sswitch_1c
        -0x1c -> :sswitch_1b
        -0x1a -> :sswitch_1a
        -0x19 -> :sswitch_19
        -0x18 -> :sswitch_18
        -0x17 -> :sswitch_17
        -0x16 -> :sswitch_16
        -0x15 -> :sswitch_15
        -0x14 -> :sswitch_14
        -0x13 -> :sswitch_13
        -0x12 -> :sswitch_12
        -0x11 -> :sswitch_11
        -0x10 -> :sswitch_10
        -0xf -> :sswitch_f
        -0xe -> :sswitch_e
        -0xd -> :sswitch_d
        -0xc -> :sswitch_c
        -0xb -> :sswitch_b
        -0xa -> :sswitch_a
        -0x9 -> :sswitch_9
        -0x8 -> :sswitch_8
        -0x7 -> :sswitch_7
        -0x6 -> :sswitch_6
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist installStatusToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "INSTALL_SUCCEEDED"

    return-object v0

    :sswitch_1
    const-string v0, "INSTALL_FAILED_ALREADY_EXISTS"

    return-object v0

    :sswitch_2
    const-string v0, "INSTALL_FAILED_INVALID_APK"

    return-object v0

    :sswitch_3
    const-string v0, "INSTALL_FAILED_INVALID_URI"

    return-object v0

    :sswitch_4
    const-string v0, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    return-object v0

    :sswitch_5
    const-string v0, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    return-object v0

    :sswitch_6
    const-string v0, "INSTALL_FAILED_NO_SHARED_USER"

    return-object v0

    :sswitch_7
    const-string v0, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    return-object v0

    :sswitch_8
    const-string v0, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    return-object v0

    :sswitch_9
    const-string v0, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    return-object v0

    :sswitch_a
    const-string v0, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    return-object v0

    :sswitch_b
    const-string v0, "INSTALL_FAILED_DEXOPT"

    return-object v0

    :sswitch_c
    const-string v0, "INSTALL_FAILED_OLDER_SDK"

    return-object v0

    :sswitch_d
    const-string v0, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    return-object v0

    :sswitch_e
    const-string v0, "INSTALL_FAILED_NEWER_SDK"

    return-object v0

    :sswitch_f
    const-string v0, "INSTALL_FAILED_TEST_ONLY"

    return-object v0

    :sswitch_10
    const-string v0, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    return-object v0

    :sswitch_11
    const-string v0, "INSTALL_FAILED_MISSING_FEATURE"

    return-object v0

    :sswitch_12
    const-string v0, "INSTALL_FAILED_CONTAINER_ERROR"

    return-object v0

    :sswitch_13
    const-string v0, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    return-object v0

    :sswitch_14
    const-string v0, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    return-object v0

    :sswitch_15
    const-string v0, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    return-object v0

    :sswitch_16
    const-string v0, "INSTALL_FAILED_VERIFICATION_FAILURE"

    return-object v0

    :sswitch_17
    const-string v0, "INSTALL_FAILED_PACKAGE_CHANGED"

    return-object v0

    :sswitch_18
    const-string v0, "INSTALL_FAILED_UID_CHANGED"

    return-object v0

    :sswitch_19
    const-string v0, "INSTALL_FAILED_VERSION_DOWNGRADE"

    return-object v0

    :sswitch_1a
    const-string v0, "INSTALL_FAILED_MISSING_SPLIT"

    return-object v0

    :sswitch_1b
    const-string v0, "INSTALL_FAILED_DEPRECATED_SDK_VERSION"

    return-object v0

    :sswitch_1c
    const-string v0, "INSTALL_PARSE_FAILED_NOT_APK"

    return-object v0

    :sswitch_1d
    const-string v0, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    return-object v0

    :sswitch_1e
    const-string v0, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    return-object v0

    :sswitch_1f
    const-string v0, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    return-object v0

    :sswitch_20
    const-string v0, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    return-object v0

    :sswitch_21
    const-string v0, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    return-object v0

    :sswitch_22
    const-string v0, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    return-object v0

    :sswitch_23
    const-string v0, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    return-object v0

    :sswitch_24
    const-string v0, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    return-object v0

    :sswitch_25
    const-string v0, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    return-object v0

    :sswitch_26
    const-string v0, "INSTALL_FAILED_INTERNAL_ERROR"

    return-object v0

    :sswitch_27
    const-string v0, "INSTALL_FAILED_USER_RESTRICTED"

    return-object v0

    :sswitch_28
    const-string v0, "INSTALL_FAILED_DUPLICATE_PERMISSION"

    return-object v0

    :sswitch_29
    const-string v0, "INSTALL_FAILED_NO_MATCHING_ABIS"

    return-object v0

    :sswitch_2a
    const-string v0, "INSTALL_FAILED_ABORTED"

    return-object v0

    :sswitch_2b
    const-string v0, "INSTALL_FAILED_SESSION_INVALID"

    return-object v0

    :sswitch_2c
    const-string v0, "INSTALL_FAILED_BAD_DEX_METADATA"

    return-object v0

    :sswitch_2d
    const-string v0, "INSTALL_FAILED_BAD_SIGNATURE"

    return-object v0

    :sswitch_2e
    const-string v0, "INSTALL_FAILED_WRONG_INSTALLED_VERSION"

    return-object v0

    :sswitch_2f
    const-string v0, "INSTALL_FAILED_PROCESS_NOT_DEFINED"

    return-object v0

    :sswitch_30
    const-string v0, "INSTALL_FAILED_SHARED_LIBRARY_BAD_CERTIFICATE_DIGEST"

    return-object v0

    :sswitch_31
    const-string v0, "INSTALL_FAILED_MULTI_ARCH_NOT_MATCH_ALL_NATIVE_ABIS"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x83 -> :sswitch_31
        -0x82 -> :sswitch_30
        -0x7a -> :sswitch_2f
        -0x79 -> :sswitch_2e
        -0x76 -> :sswitch_2d
        -0x75 -> :sswitch_2c
        -0x74 -> :sswitch_2b
        -0x73 -> :sswitch_2a
        -0x71 -> :sswitch_29
        -0x70 -> :sswitch_28
        -0x6f -> :sswitch_27
        -0x6e -> :sswitch_26
        -0x6d -> :sswitch_25
        -0x6c -> :sswitch_24
        -0x6b -> :sswitch_23
        -0x6a -> :sswitch_22
        -0x69 -> :sswitch_21
        -0x68 -> :sswitch_20
        -0x67 -> :sswitch_1f
        -0x66 -> :sswitch_1e
        -0x65 -> :sswitch_1d
        -0x64 -> :sswitch_1c
        -0x1d -> :sswitch_1b
        -0x1c -> :sswitch_1a
        -0x19 -> :sswitch_19
        -0x18 -> :sswitch_18
        -0x17 -> :sswitch_17
        -0x16 -> :sswitch_16
        -0x15 -> :sswitch_15
        -0x14 -> :sswitch_14
        -0x13 -> :sswitch_13
        -0x12 -> :sswitch_12
        -0x11 -> :sswitch_11
        -0x10 -> :sswitch_10
        -0xf -> :sswitch_f
        -0xe -> :sswitch_e
        -0xd -> :sswitch_d
        -0xc -> :sswitch_c
        -0xb -> :sswitch_b
        -0xa -> :sswitch_a
        -0x9 -> :sswitch_9
        -0x8 -> :sswitch_8
        -0x7 -> :sswitch_7
        -0x6 -> :sswitch_6
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-r installStatusToString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/content/pm/PackageManager;->installStatusToString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static blacklist invalidatePackageInfoCache()V
    .locals 1

    sget-object v0, Landroid/content/pm/PackageManager;->sCacheAutoCorker:Landroid/app/PropertyInvalidatedCache$AutoCorker;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->autoCork()V

    return-void
.end method

.method public static greylist-max-o isMoveStatusFinished(I)Z
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

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

.method public static greylist-max-o permissionFlagToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "AUTO_REVOKED"

    return-object v0

    :sswitch_1
    const-string v0, "ONE_TIME"

    return-object v0

    :sswitch_2
    const-string v0, "GRANTED_BY_ROLE"

    return-object v0

    :sswitch_3
    const-string v0, "APPLY_RESTRICTION"

    return-object v0

    :sswitch_4
    const-string v0, "RESTRICTION_UPGRADE_EXEMPT"

    return-object v0

    :sswitch_5
    const-string v0, "RESTRICTION_SYSTEM_EXEMPT"

    return-object v0

    :sswitch_6
    const-string v0, "RESTRICTION_INSTALLER_EXEMPT"

    return-object v0

    :sswitch_7
    const-string v0, "USER_SENSITIVE_WHEN_DENIED"

    return-object v0

    :sswitch_8
    const-string v0, "USER_SENSITIVE_WHEN_GRANTED"

    return-object v0

    :sswitch_9
    const-string v0, "REVOKE_WHEN_REQUESTED"

    return-object v0

    :sswitch_a
    const-string v0, "REVIEW_REQUIRED"

    return-object v0

    :sswitch_b
    const-string v0, "GRANTED_BY_DEFAULT"

    return-object v0

    :sswitch_c
    const-string v0, "SYSTEM_FIXED"

    return-object v0

    :sswitch_d
    const-string v0, "REVOKED_COMPAT"

    return-object v0

    :sswitch_e
    const-string v0, "POLICY_FIXED"

    return-object v0

    :sswitch_f
    const-string v0, "USER_FIXED"

    return-object v0

    :sswitch_10
    const-string v0, "USER_SET"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_f
        0x4 -> :sswitch_e
        0x8 -> :sswitch_d
        0x10 -> :sswitch_c
        0x20 -> :sswitch_b
        0x40 -> :sswitch_a
        0x80 -> :sswitch_9
        0x100 -> :sswitch_8
        0x200 -> :sswitch_7
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_5
        0x2000 -> :sswitch_4
        0x4000 -> :sswitch_3
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist uncorkPackageInfoCache()V
    .locals 1

    const-string v0, "cache_key.package_info"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->uncorkInvalidations(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract greylist addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V
.end method

.method public abstract whitelist addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist addPackageToPreferred(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist addPermission(Landroid/content/pm/PermissionInfo;)Z
.end method

.method public abstract whitelist addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
.end method

.method public abstract whitelist addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addUniquePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addUniquePreferredActivity not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist applyRuntimePermissionsForAllApplicationsForMdm(II)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "applyRuntimePermissionsForAllApplicationsForMDM not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist applyRuntimePermissionsForMdm(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "applyRuntimePermissionsForMDM not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist arePermissionsIndividuallyControlled()Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public greylist buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist canPackageQuery(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "canPackageQuery not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist canPackageQuery(Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "canPackageQuery not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist canRequestPackageInstalls()Z
.end method

.method public whitelist canUserUninstall(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "canUserUninstall not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract whitelist checkPermission(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract whitelist checkSignatures(II)I
.end method

.method public abstract whitelist checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public blacklist clearAppCategoryHintDeveloper(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clearAppCategoryHintDeveloper not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clearAppCategoryHintUser(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clearAppCategoryHintUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract greylist clearCrossProfileIntentFilters(I)V
.end method

.method public abstract whitelist clearInstantAppCookie()V
.end method

.method public abstract whitelist clearPackagePreferredActivities(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract greylist deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract greylist deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract greylist deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
.end method

.method public abstract greylist deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
.end method

.method public abstract whitelist extendVerificationTimeout(IIJ)V
.end method

.method public blacklist extractPackageItemInfoAttributes(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;[I)Landroid/content/res/TypedArray;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "parseServiceMetadata not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist flushPackageRestrictionsAsUser(I)V
.end method

.method public greylist freeStorage(JLandroid/content/IntentSender;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    return-void
.end method

.method public abstract greylist freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
.end method

.method public greylist freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public abstract greylist freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract whitelist getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getActivityInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getAllPermissionGroups(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist getAppCategoryHintUserMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAppCategoryHintUserMap not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAppCategoryInfos(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAppCategoryInfos not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAppMetadata(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAppMetadata not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAppMetadataSource(Ljava/lang/String;)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAppMetadataSource not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAppPredictionServicePackageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAppPredictionServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getApplicationEnabledSetting(Ljava/lang/String;)I
.end method

.method public abstract greylist getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
.end method

.method public abstract whitelist getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getApplicationInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getApplicationInfoAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract whitelist getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getArchivedPackage(Ljava/lang/String;)Landroid/content/pm/ArchivedPackageInfo;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getArchivedPackage not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getArtManager()Landroid/content/pm/dex/ArtManager;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getArtManager not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAttentionServicePackageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAttentionServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBackgroundPermissionOptionLabel()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public blacklist getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public abstract greylist-max-o getCarLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract whitelist getChangedPackages(I)Landroid/content/pm/ChangedPackages;
.end method

.method public abstract whitelist getComponentEnabledSetting(Landroid/content/ComponentName;)I
.end method

.method public final blacklist getContentCaptureServicePackageName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getContentCaptureServicePackageName is deprecated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDeclaredSharedLibraries(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDeclaredSharedLibraries() not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDeclaredSharedLibraries(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDeclaredSharedLibraries() not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public blacklist getDefaultTextClassifierPackageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDefaultTextClassifierPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public whitelist getGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist getHarmfulAppWarning(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getHarmfulAppWarning not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getHoldLockToken()Landroid/os/IBinder;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getHoldLockToken()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public abstract greylist getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public whitelist getIncidentReportApproverPackageName()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getIncidentReportApproverPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I
.end method

.method public whitelist getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInstallSourceInfo not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getInstalledApplications(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getInstalledApplications(Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$ApplicationInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInstalledApplications not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist getInstalledApplicationsAsUser(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$ApplicationInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInstalledApplicationsAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInstalledModules(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInstalledModules not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getInstalledPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInstalledPackages not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getInstalledPackagesAsUser(II)Ljava/util/List;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getApplicationInfoAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist-max-o getInstantAppAndroidId(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;
.end method

.method public abstract whitelist getInstantAppCookie()[B
.end method

.method public abstract whitelist getInstantAppCookieMaxBytes()I
.end method

.method public abstract greylist-max-o getInstantAppCookieMaxSize()I
.end method

.method public abstract whitelist getInstantAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist getInstantApps()Ljava/util/List;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getIntentVerificationStatusAsUser(Ljava/lang/String;I)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public abstract whitelist getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public whitelist getLaunchIntentSenderForPackage(Ljava/lang/String;)Landroid/content/IntentSender;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getLaunchIntentSenderForPackage not implementedin subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public whitelist getMimeGroup(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getMimeGroup not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getModuleInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getMonetizeBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getMonetizeBadgedIcon not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist getMoveStatus(I)I
.end method

.method public abstract whitelist getNameForUid(I)Ljava/lang/String;
.end method

.method public abstract blacklist getNamesForUids([I)[Ljava/lang/String;
.end method

.method public whitelist getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2

    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->getValue()J

    move-result-wide v1

    const-wide/32 v3, 0xc0000

    and-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    or-long/2addr v1, v3

    :goto_0
    const/4 v3, 0x0

    const-wide/32 v4, 0x8000040

    and-long/2addr v4, v1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1

    or-int/lit8 v3, v3, 0x20

    :cond_1
    new-instance v4, Lcom/android/internal/pm/parsing/PackageParser2;

    new-instance v5, Landroid/content/pm/PackageManager$1;

    invoke-direct {v5, p0}, Landroid/content/pm/PackageManager$1;-><init>(Landroid/content/pm/PackageManager;)V

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v6, v5}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v0, v3, v5}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v5, v1, v2, v7}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generate(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_0
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure to parse package archive apkFile= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public abstract greylist-max-r getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-r getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;
.end method

.method public abstract whitelist getPackageGids(Ljava/lang/String;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getPackageGids(Ljava/lang/String;I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getPackageGids(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageGids not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getPackageInfo(Landroid/content/pm/VersionedPackage;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public blacklist getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageInfoAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getPackageInstaller()Landroid/content/pm/PackageInstaller;
.end method

.method public greylist getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    return-void
.end method

.method public abstract greylist getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getPackageUid(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageUid not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist getPackageUidAsUser(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract greylist getPackageUidAsUser(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageUidAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getPackagesForUid(I)[Ljava/lang/String;
.end method

.method public abstract whitelist getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getPackagesHoldingPermissions([Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackagesHoldingPermissions not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPermissionControllerPackageName()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getPlatformPermissionsForGroup(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract whitelist getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getPreferredPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist-max-o getPrimaryStorageCandidateVolumes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
.end method

.method public whitelist getProperty(Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/pm/PackageManager$Property;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPropertyAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getProviderInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getProviderInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getReceiverInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getReceiverInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRequestedRuntimePermissionsForMdm(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRequestedRuntimePermissionsForMDM not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getResourcesForApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract greylist-max-r getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist getRotationResolverPackageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRotationResolverPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSdkSandboxPackageName()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getServiceInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
.end method

.method public blacklist getSetupWizardPackageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSetupWizardPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getSharedLibraries(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getSharedLibraries(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSharedLibraries() not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o getSharedLibrariesAsUser(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist getSharedLibrariesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSharedLibrariesAsUser() not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
.end method

.method public abstract greylist getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public whitelist getSuspendedPackageAppExtras()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSuspendedPackageAppExtras not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSuspendingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSuspendingPackage not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSyntheticAppDetailsActivityEnabled(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSyntheticAppDetailsActivityEnabled not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
.end method

.method public blacklist getSystemCaptionsServicePackageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSystemCaptionsServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getSystemSharedLibraryNames()[Ljava/lang/String;
.end method

.method public greylist-max-o getSystemTextClassifierPackageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSystemTextClassifierPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTargetSdkVersion(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract greylist getUidForSharedUser(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public blacklist getUnknownSourcePackages(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getUnknownSourcePackagesAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getUnsuspendablePackages not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract greylist getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
.end method

.method public greylist-max-o getUserId()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public abstract greylist-max-o getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
.end method

.method public blacklist getWellbeingPackageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getWellbeingPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getWhitelistedRestrictedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
.end method

.method public abstract whitelist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist hasSigningCertificate(I[BI)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hasSigningCertificate not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasSigningCertificate(Ljava/lang/String;[BI)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hasSigningCertificate not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist hasSystemFeature(Ljava/lang/String;)Z
.end method

.method public abstract whitelist hasSystemFeature(Ljava/lang/String;I)Z
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->holdLock(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public abstract whitelist installExistingPackage(Ljava/lang/String;)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist installExistingPackage(Ljava/lang/String;I)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist installExistingPackageAsUser(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist isAppArchivable(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isAppArchivable not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isAutoRevokeWhitelisted()Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isAutoRevokeWhitelisted not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isAutoRevokeWhitelisted(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDefaultApplicationIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getSourceDrawableResId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x1080093

    if-eq v0, v2, :cond_1

    const v2, 0x1080bf2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public whitelist isDeviceUpgrading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist isInstantApp()Z
.end method

.method public abstract whitelist isInstantApp(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isPackageAutoDisabled(Ljava/lang/String;I)Z
.end method

.method public abstract greylist isPackageAvailable(Ljava/lang/String;)Z
.end method

.method public blacklist isPackageQuarantined(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "isPackageQuarantined not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o isPackageStateProtected(Ljava/lang/String;I)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "isPackageStateProtected not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isPackageStopped(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "isPackageStopped not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isPackageSuspended()Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "isPackageSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isPackageSuspended(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "isPackageSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist isPackageSuspendedForUser(Ljava/lang/String;I)Z
.end method

.method public abstract whitelist isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public blacklist isPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->semIsPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract whitelist isSafeMode()Z
.end method

.method public abstract greylist isSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract greylist isSignedByExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public greylist isSpeg(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public greylist isSpeg(Ljava/lang/String;I)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    return v0

    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "base.speg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No permission to check status for uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SPEG"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_1
    move-exception v4

    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public blacklist isUnknownSourcePackage(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "isUnknownSourcePackage not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist isUpgrade()Z
.end method

.method public abstract blacklist isWirelessConsentModeEnabled()Z
.end method

.method public abstract greylist loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public greylist loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "loadItemIcon not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public greylist loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "loadUnbadgedItemIcon not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist makeProviderVisible(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->makeProviderVisible(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist makeUidVisible(II)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "makeUidVisible not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-r movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I
.end method

.method public blacklist movePackageToSd(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/IMemorySaverPackageMoveObserver;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "movePackageToSd not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
.end method

.method public blacklist parseAndroidManifest(Landroid/os/ParcelFileDescriptor;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/function/Function<",
            "Landroid/content/res/XmlResourceParser;",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "parseAndroidManifest not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist parseAndroidManifest(Ljava/io/File;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/util/function/Function<",
            "Landroid/content/res/XmlResourceParser;",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "parseAndroidManifest not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryActivityProperty(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryActivityProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryApplicationProperty(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryApplicationProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public greylist queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Shame on you for calling the hidden API queryBroadcastReceivers(). Shame!"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x1a

    const-string v3, "Shame on you for calling the hidden API queryBroadcastReceivers(). Shame!"

    if-ge v1, v2, :cond_0

    const-string v1, "PackageManager"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist queryBroadcastReceivers(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryBroadcastReceivers not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryBroadcastReceiversAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public greylist-max-o queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/PackageManager$ComponentInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryContentProviders not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/PackageManager$ComponentInfoFlags;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentActivities not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentActivitiesAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryIntentActivityOptions(Landroid/content/ComponentName;Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentActivityOptions not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryIntentContentProviders(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentContentProviders not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryIntentContentProvidersAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentContentProvidersAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentServices not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryIntentServicesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentServicesAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist queryProviderProperty(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryProviderProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryReceiverProperty(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryReceiverProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryServiceProperty(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryServiceProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist registerDexModule(Ljava/lang/String;Landroid/content/pm/PackageManager$DexModuleRegisterCallback;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract greylist registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V
.end method

.method public blacklist registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "registerPackageMonitorCallback not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist relinquishUpdateOwnership(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "relinquishUpdateOwnership not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeCrossProfileIntentFilter(Landroid/content/IntentFilter;III)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeCrossProfileIntentFilter not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist removePackageFromPreferred(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist removePermission(Ljava/lang/String;)V
.end method

.method public whitelist removeWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist replacePreferredActivity(Landroid/content/IntentFilter;ILjava/util/List;Landroid/content/ComponentName;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/ComponentName;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2, v0, p4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method public abstract greylist replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestChecksums(Ljava/lang/String;ZILjava/util/List;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Landroid/content/pm/PackageManager$OnChecksumsReadyListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "requestChecksums not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
.end method

.method public whitelist resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveActivity not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
.end method

.method public blacklist resolveActivityAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveActivityAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
.end method

.method public whitelist resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveContentProvider not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
.end method

.method public blacklist resolveContentProviderAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveContentProviderAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
.end method

.method public whitelist resolveService(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveService not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
.end method

.method public blacklist resolveServiceAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveServiceAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public whitelist semCheckComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semCheckComponentMetadataForIconTray not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semFreeStorageAndNotify(JLandroid/content/pm/PackageManager$SemFreeStorageNotifyListener;)V
    .locals 2

    new-instance v0, Landroid/content/pm/PackageManager$SemPackageDataObserver;

    invoke-direct {v0, p0, p3}, Landroid/content/pm/PackageManager$SemPackageDataObserver;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public whitelist semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semGetActivityIconForIconTray not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist semGetAppIconFeatures(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semShouldPackIntoIconTray not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semGetApplicationIconForIconTray not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semGetApplicationIconForIconTray not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semGetCscPackageItemIcon not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semGetCscPackageItemText not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semGetDrawableForIconTray not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semGetDrawableForIconTray not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist semGetPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semGetPackageInfoAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public whitelist semGetSystemFeatureLevel(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semGetSystemFeatureLevel not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist semGrantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public whitelist semIsPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semIsPermissionRevokedByUserFixed not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semQueryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist semRevokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public whitelist semSetPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SemSuspendDialogInfo;)[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p5, :cond_4

    new-instance v1, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v1}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getTitleResId()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getTitleResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setTitle(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    :cond_0
    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getDialogMessageResId()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getDialogMessageResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    :cond_1
    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getDialogMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getDialogMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    :cond_2
    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getNeutralButtonTextResId()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getNeutralButtonTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setNeutralButtonText(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v0

    :cond_4
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist semShouldPackIntoIconTray(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semShouldPackIntoIconTray not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semUpdatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    return-void
.end method

.method public whitelist sendDeviceCustomizationReadyBroadcast()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "sendDeviceCustomizationReadyBroadcast not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAppCategoryHintDeveloper(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setAppCategoryHintDeveloper not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAppCategoryHintUser(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setAppCategoryHintUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist setApplicationCategoryHint(Ljava/lang/String;I)V
.end method

.method public abstract whitelist setApplicationEnabledSetting(Ljava/lang/String;II)V
.end method

.method public abstract greylist setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
.end method

.method public whitelist setAutoRevokeWhitelisted(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist setComponentEnabledSetting(Landroid/content/ComponentName;II)V
.end method

.method public whitelist setComponentEnabledSettings(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setComponentEnabledSettings not implementedin subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist setDistractingPackageRestrictions([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setDistractingPackageRestrictions not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setHarmfulAppWarning not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract greylist setInstantAppCookie([B)Z
.end method

.method public blacklist setKeepUninstalledPackages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setKeepUninstalledPackages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setMimeGroup(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setMimeGroup not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;)[Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setPackagesSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;I)[Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setPackagesSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setPackagesSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSyntheticAppDetailsActivityEnabled(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setSyntheticAppDetailsActivityEnabled not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSystemAppState(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist setUpdateAvailable(Ljava/lang/String;Z)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public blacklist shouldAppSupportBadgeIcon(Ljava/lang/String;I)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "shouldAppSupportBadgeIcon not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist shouldShowNewAppInstalledNotification()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "isShowNewAppInstalledNotificationEnabled not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
.end method

.method public abstract greylist unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V
.end method

.method public blacklist unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unregisterPackageMonitorCallback not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist updateInstantAppCookie([B)V
.end method

.method public abstract whitelist updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist verifyIntentFilter(IILjava/util/List;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist verifyPendingInstall(II)V
.end method
