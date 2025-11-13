.class public abstract Landroid/content/pm/PackageManager;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManager$SemPackageDataObserver;,
        Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;,
        Landroid/content/pm/PackageManager$PackageInfoQuery;,
        Landroid/content/pm/PackageManager$ApplicationInfoQuery;,
        Landroid/content/pm/PackageManager$OnChecksumsReadyListener;,
        Landroid/content/pm/PackageManager$CertificateInputType;,
        Landroid/content/pm/PackageManager$DexModuleRegisterCallback;,
        Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;,
        Landroid/content/pm/PackageManager$MoveCallback;,
        Landroid/content/pm/PackageManager$DistractionRestriction;,
        Landroid/content/pm/PackageManager$PermissionFlags;,
        Landroid/content/pm/PackageManager$ResolveInfoFlags;,
        Landroid/content/pm/PackageManager$ComponentInfoFlags;,
        Landroid/content/pm/PackageManager$ApplicationInfoFlags;,
        Landroid/content/pm/PackageManager$PackageInfoFlags;,
        Landroid/content/pm/PackageManager$Flags;,
        Landroid/content/pm/PackageManager$SystemAppState;,
        Landroid/content/pm/PackageManager$NotifyReason;,
        Landroid/content/pm/PackageManager$PermissionWhitelistFlags;,
        Landroid/content/pm/PackageManager$DeleteFlags;,
        Landroid/content/pm/PackageManager$UninstallReason;,
        Landroid/content/pm/PackageManager$InstallScenario;,
        Landroid/content/pm/PackageManager$InstallReason;,
        Landroid/content/pm/PackageManager$EnabledFlags;,
        Landroid/content/pm/PackageManager$InstallFlags;,
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
        Landroid/content/pm/PackageManager$Property;,
        Landroid/content/pm/PackageManager$NameNotFoundException;
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

.field public static final whitelist CERT_INPUT_RAW_X509:I = 0x0

.field public static final whitelist CERT_INPUT_SHA256:I = 0x1

.field public static final whitelist COMPONENT_ENABLED_STATE_DEFAULT:I = 0x0

.field public static final whitelist COMPONENT_ENABLED_STATE_DISABLED:I = 0x2

.field public static final whitelist COMPONENT_ENABLED_STATE_DISABLED_UNTIL_USED:I = 0x4

.field public static final whitelist COMPONENT_ENABLED_STATE_DISABLED_USER:I = 0x3

.field public static final whitelist COMPONENT_ENABLED_STATE_ENABLED:I = 0x1

.field public static final greylist-max-o DELETE_ALL_USERS:I = 0x2

.field public static final blacklist DELETE_APP_SEPARATION_ONE_USER_APP:I = 0x10000000

.field public static final greylist-max-o DELETE_CHATTY:I = -0x80000000

.field public static final greylist-max-o DELETE_DONT_KILL_APP:I = 0x8

.field public static final greylist-max-o DELETE_FAILED_ABORTED:I = -0x5

.field public static final blacklist DELETE_FAILED_APP_PINNED:I = -0x7

.field public static final greylist-max-o DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final greylist-max-o DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final greylist-max-o DELETE_FAILED_OWNER_BLOCKED:I = -0x4

.field public static final greylist-max-o DELETE_FAILED_USED_SHARED_LIBRARY:I = -0x6

.field public static final greylist-max-o DELETE_FAILED_USER_RESTRICTED:I = -0x3

.field public static final greylist-max-o DELETE_KEEP_DATA:I = 0x1

.field public static final greylist-max-o DELETE_SUCCEEDED:I = 0x1

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

.field public static final blacklist FEATURE_CAR_TEMPLATES_HOST:Ljava/lang/String; = "android.software.car.templates_host"

.field public static final blacklist FEATURE_COMMUNAL_MODE:Ljava/lang/String; = "android.software.communal_mode"

.field public static final whitelist FEATURE_COMPANION_DEVICE_SETUP:Ljava/lang/String; = "android.software.companion_device_setup"

.field public static final whitelist FEATURE_CONNECTION_SERVICE:Ljava/lang/String; = "android.software.connectionservice"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_CONSUMER_IR:Ljava/lang/String; = "android.hardware.consumerir"

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

.field public static final greylist-max-o FEATURE_CTS:Ljava/lang/String; = "android.software.cts"

.field public static final whitelist FEATURE_DEVICE_ADMIN:Ljava/lang/String; = "android.software.device_admin"

.field public static final greylist-max-o FEATURE_DEVICE_ID_ATTESTATION:Ljava/lang/String; = "android.software.device_id_attestation"

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

.field public static final blacklist FEATURE_SCONTEXT_LITE:Ljava/lang/String; = "com.sec.feature.scontext_lite"

.field public static final whitelist FEATURE_SCREEN_LANDSCAPE:Ljava/lang/String; = "android.hardware.screen.landscape"

.field public static final whitelist FEATURE_SCREEN_PORTRAIT:Ljava/lang/String; = "android.hardware.screen.portrait"

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

.field public static final whitelist FEATURE_TELEPHONY_SUBSCRIPTION:Ljava/lang/String; = "android.hardware.telephony.subscription"

.field public static final whitelist FEATURE_TELEVISION:Ljava/lang/String; = "android.hardware.type.television"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_TOUCHSCREEN:Ljava/lang/String; = "android.hardware.touchscreen"

.field public static final whitelist FEATURE_TOUCHSCREEN_MULTITOUCH:Ljava/lang/String; = "android.hardware.touchscreen.multitouch"

.field public static final whitelist FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT:Ljava/lang/String; = "android.hardware.touchscreen.multitouch.distinct"

.field public static final whitelist FEATURE_TOUCHSCREEN_MULTITOUCH_JAZZHAND:Ljava/lang/String; = "android.hardware.touchscreen.multitouch.jazzhand"

.field public static final blacklist FEATURE_TUNER:Ljava/lang/String; = "android.hardware.tv.tuner"

.field public static final whitelist FEATURE_USB_ACCESSORY:Ljava/lang/String; = "android.hardware.usb.accessory"

.field public static final whitelist FEATURE_USB_HOST:Ljava/lang/String; = "android.hardware.usb.host"

.field public static final blacklist FEATURE_UWB:Ljava/lang/String; = "android.hardware.uwb"

.field public static final whitelist FEATURE_VERIFIED_BOOT:Ljava/lang/String; = "android.software.verified_boot"

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

.field public static final whitelist GET_ACTIVITIES:I = 0x1

.field public static final whitelist GET_ATTRIBUTIONS:I = -0x80000000

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

.field public static final blacklist HANDLE_MANY_APPS_BURST:I = 0x4

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

.field public static final blacklist INSTALL_DIRECTLY:I = 0x2000000

.field public static final blacklist INSTALL_DISABLE_ALLOWED_APEX_UPDATE_CHECK:I = 0x400000

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

.field public static final whitelist INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_SIGNATURE_NOT_APPROVED_FOR_MDM:I = -0x1e

.field public static final whitelist INSTALL_FAILED_TEST_ONLY:I = -0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final blacklist INSTALL_FAILED_UNKNOWN_SOURCES_FOR_MDM:I = -0x1d

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

.field public static final greylist-max-o INSTALL_FULL_APP:I = 0x4000

.field public static final greylist-max-o INSTALL_GRANT_RUNTIME_PERMISSIONS:I = 0x100

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

.field public static final blacklist INSTALL_PARSE_FAILED_ONLY_COREAPP_ALLOWED:I = -0x7b

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

.field public static final whitelist PROPERTY_MEDIA_CAPABILITIES:Ljava/lang/String; = "android.media.PROPERTY_MEDIA_CAPABILITIES"

.field public static final blacklist PROPERTY_NO_APP_DATA_STORAGE:Ljava/lang/String; = "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

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

.field public static final whitelist SEM_FEATURE_FOLDER_TYPE:Ljava/lang/String; = "com.sec.feature.folder_type"

.field public static final whitelist SEM_FEATURE_HOVERING_UI:Ljava/lang/String; = "com.sec.feature.hovering_ui"

.field public static final whitelist SEM_FEATURE_LIGHTWEIGHT_WEBVIEW:Ljava/lang/String; = "com.samsung.feature.lightweight_webview"

.field public static final whitelist SEM_FEATURE_LINUX_ON_DEX:Ljava/lang/String; = "com.sec.feature.support_linux_on_dex"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "14.0"
    .end annotation
.end field

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

.field public static final whitelist SEM_ICON_MASK_COLORTHEME:I = 0x20

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

    .line 4841
    const-class v0, Landroid/app/AppDetailsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 10374
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/content/pm/PackageManager;->TRUST_ALL:Ljava/util/List;

    .line 10381
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageManager;->TRUST_NONE:Ljava/util/List;

    .line 10833
    new-instance v0, Landroid/content/pm/PackageManager$1;

    const/16 v1, 0x10

    const-string v2, "cache_key.package_info"

    const-string v3, "getApplicationInfo"

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageManager$1;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageManager;->sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;

    .line 10866
    new-instance v0, Landroid/app/PropertyInvalidatedCache$AutoCorker;

    invoke-direct {v0, v2}, Landroid/app/PropertyInvalidatedCache$AutoCorker;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageManager;->sCacheAutoCorker:Landroid/app/PropertyInvalidatedCache$AutoCorker;

    .line 10934
    new-instance v0, Landroid/content/pm/PackageManager$2;

    const/16 v1, 0x20

    const-string v3, "getPackageInfo"

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageManager$2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist corkPackageInfoCache()V
    .locals 1

    .line 10970
    const-string v0, "cache_key.package_info"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->corkInvalidations(Ljava/lang/String;)V

    .line 10971
    return-void
.end method

.method public static greylist-max-o deleteStatusToPublicStatus(I)I
    .locals 2
    .param p0, "status"    # I

    .line 10053
    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    .line 10062
    :pswitch_0
    return v0

    .line 10054
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 10055
    :pswitch_2
    return v0

    .line 10056
    :pswitch_3
    return v1

    .line 10057
    :pswitch_4
    return v1

    .line 10058
    :pswitch_5
    return v1

    .line 10059
    :pswitch_6
    const/4 v0, 0x3

    return v0

    .line 10060
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 10061
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
    .param p0, "status"    # I

    .line 10038
    packed-switch p0, :pswitch_data_0

    .line 10047
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10039
    :pswitch_1
    const-string v0, "DELETE_SUCCEEDED"

    return-object v0

    .line 10040
    :pswitch_2
    const-string v0, "DELETE_FAILED_INTERNAL_ERROR"

    return-object v0

    .line 10041
    :pswitch_3
    const-string v0, "DELETE_FAILED_DEVICE_POLICY_MANAGER"

    return-object v0

    .line 10042
    :pswitch_4
    const-string v0, "DELETE_FAILED_USER_RESTRICTED"

    return-object v0

    .line 10043
    :pswitch_5
    const-string v0, "DELETE_FAILED_OWNER_BLOCKED"

    return-object v0

    .line 10044
    :pswitch_6
    const-string v0, "DELETE_FAILED_ABORTED"

    return-object v0

    .line 10045
    :pswitch_7
    const-string v0, "DELETE_FAILED_USED_SHARED_LIBRARY"

    return-object v0

    .line 10046
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
    .param p0, "status"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 10026
    invoke-static {p0}, Landroid/content/pm/PackageManager;->deleteStatusToString(I)Ljava/lang/String;

    move-result-object v0

    .line 10027
    .local v0, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 10028
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

    .line 10030
    :cond_0
    return-object v0
.end method

.method public static blacklist disableApplicationInfoCache()V
    .locals 1

    .line 10863
    sget-object v0, Landroid/content/pm/PackageManager;->sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 10864
    return-void
.end method

.method public static blacklist disablePackageInfoCache()V
    .locals 1

    .line 10962
    sget-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 10963
    return-void
.end method

.method public static blacklist getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 10853
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
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 10825
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 10826
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10825
    return-object v0

    .line 10827
    :catch_0
    move-exception v0

    .line 10828
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getPackageInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 10954
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
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 10927
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10928
    :catch_0
    move-exception v0

    .line 10929
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o installStatusToPublicStatus(I)I
    .locals 6
    .param p0, "status"    # I

    .line 9973
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x7

    const/4 v5, 0x4

    sparse-switch p0, :sswitch_data_0

    .line 10019
    return v0

    .line 9974
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 9975
    :sswitch_1
    return v3

    .line 9976
    :sswitch_2
    return v5

    .line 9977
    :sswitch_3
    return v5

    .line 9978
    :sswitch_4
    return v2

    .line 9979
    :sswitch_5
    return v3

    .line 9980
    :sswitch_6
    return v3

    .line 9981
    :sswitch_7
    return v3

    .line 9982
    :sswitch_8
    return v3

    .line 9983
    :sswitch_9
    return v4

    .line 9984
    :sswitch_a
    return v3

    .line 9985
    :sswitch_b
    return v5

    .line 9986
    :sswitch_c
    return v4

    .line 9987
    :sswitch_d
    return v3

    .line 9988
    :sswitch_e
    return v4

    .line 9989
    :sswitch_f
    return v5

    .line 9990
    :sswitch_10
    return v4

    .line 9991
    :sswitch_11
    return v4

    .line 9992
    :sswitch_12
    return v2

    .line 9993
    :sswitch_13
    return v2

    .line 9994
    :sswitch_14
    return v2

    .line 9995
    :sswitch_15
    return v1

    .line 9996
    :sswitch_16
    return v1

    .line 9997
    :sswitch_17
    return v5

    .line 9998
    :sswitch_18
    return v5

    .line 9999
    :sswitch_19
    return v5

    .line 10000
    :sswitch_1a
    return v5

    .line 10018
    :sswitch_1b
    return v4

    .line 10001
    :sswitch_1c
    return v5

    .line 10002
    :sswitch_1d
    return v5

    .line 10003
    :sswitch_1e
    return v5

    .line 10004
    :sswitch_1f
    return v5

    .line 10005
    :sswitch_20
    return v5

    .line 10006
    :sswitch_21
    return v5

    .line 10007
    :sswitch_22
    return v5

    .line 10008
    :sswitch_23
    return v5

    .line 10009
    :sswitch_24
    return v5

    .line 10010
    :sswitch_25
    return v5

    .line 10013
    :sswitch_26
    return v0

    .line 10014
    :sswitch_27
    return v4

    .line 10015
    :sswitch_28
    return v3

    .line 10016
    :sswitch_29
    return v4

    .line 10017
    :sswitch_2a
    return v1

    .line 10011
    :sswitch_2b
    return v5

    .line 10012
    :sswitch_2c
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x76 -> :sswitch_2c
        -0x75 -> :sswitch_2b
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
    .param p0, "status"    # I

    .line 9919
    sparse-switch p0, :sswitch_data_0

    .line 9967
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9920
    :sswitch_0
    const-string v0, "INSTALL_SUCCEEDED"

    return-object v0

    .line 9921
    :sswitch_1
    const-string v0, "INSTALL_FAILED_ALREADY_EXISTS"

    return-object v0

    .line 9922
    :sswitch_2
    const-string v0, "INSTALL_FAILED_INVALID_APK"

    return-object v0

    .line 9923
    :sswitch_3
    const-string v0, "INSTALL_FAILED_INVALID_URI"

    return-object v0

    .line 9924
    :sswitch_4
    const-string v0, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    return-object v0

    .line 9925
    :sswitch_5
    const-string v0, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    return-object v0

    .line 9926
    :sswitch_6
    const-string v0, "INSTALL_FAILED_NO_SHARED_USER"

    return-object v0

    .line 9927
    :sswitch_7
    const-string v0, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    return-object v0

    .line 9928
    :sswitch_8
    const-string v0, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    return-object v0

    .line 9929
    :sswitch_9
    const-string v0, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    return-object v0

    .line 9930
    :sswitch_a
    const-string v0, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    return-object v0

    .line 9931
    :sswitch_b
    const-string v0, "INSTALL_FAILED_DEXOPT"

    return-object v0

    .line 9932
    :sswitch_c
    const-string v0, "INSTALL_FAILED_OLDER_SDK"

    return-object v0

    .line 9933
    :sswitch_d
    const-string v0, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    return-object v0

    .line 9934
    :sswitch_e
    const-string v0, "INSTALL_FAILED_NEWER_SDK"

    return-object v0

    .line 9935
    :sswitch_f
    const-string v0, "INSTALL_FAILED_TEST_ONLY"

    return-object v0

    .line 9936
    :sswitch_10
    const-string v0, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    return-object v0

    .line 9937
    :sswitch_11
    const-string v0, "INSTALL_FAILED_MISSING_FEATURE"

    return-object v0

    .line 9938
    :sswitch_12
    const-string v0, "INSTALL_FAILED_CONTAINER_ERROR"

    return-object v0

    .line 9939
    :sswitch_13
    const-string v0, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    return-object v0

    .line 9940
    :sswitch_14
    const-string v0, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    return-object v0

    .line 9941
    :sswitch_15
    const-string v0, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    return-object v0

    .line 9942
    :sswitch_16
    const-string v0, "INSTALL_FAILED_VERIFICATION_FAILURE"

    return-object v0

    .line 9943
    :sswitch_17
    const-string v0, "INSTALL_FAILED_PACKAGE_CHANGED"

    return-object v0

    .line 9944
    :sswitch_18
    const-string v0, "INSTALL_FAILED_UID_CHANGED"

    return-object v0

    .line 9945
    :sswitch_19
    const-string v0, "INSTALL_FAILED_VERSION_DOWNGRADE"

    return-object v0

    .line 9962
    :sswitch_1a
    const-string v0, "INSTALL_FAILED_MISSING_SPLIT"

    return-object v0

    .line 9946
    :sswitch_1b
    const-string v0, "INSTALL_PARSE_FAILED_NOT_APK"

    return-object v0

    .line 9947
    :sswitch_1c
    const-string v0, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    return-object v0

    .line 9948
    :sswitch_1d
    const-string v0, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    return-object v0

    .line 9949
    :sswitch_1e
    const-string v0, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    return-object v0

    .line 9950
    :sswitch_1f
    const-string v0, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    return-object v0

    .line 9951
    :sswitch_20
    const-string v0, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    return-object v0

    .line 9952
    :sswitch_21
    const-string v0, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    return-object v0

    .line 9953
    :sswitch_22
    const-string v0, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    return-object v0

    .line 9954
    :sswitch_23
    const-string v0, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    return-object v0

    .line 9955
    :sswitch_24
    const-string v0, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    return-object v0

    .line 9956
    :sswitch_25
    const-string v0, "INSTALL_FAILED_INTERNAL_ERROR"

    return-object v0

    .line 9957
    :sswitch_26
    const-string v0, "INSTALL_FAILED_USER_RESTRICTED"

    return-object v0

    .line 9958
    :sswitch_27
    const-string v0, "INSTALL_FAILED_DUPLICATE_PERMISSION"

    return-object v0

    .line 9959
    :sswitch_28
    const-string v0, "INSTALL_FAILED_NO_MATCHING_ABIS"

    return-object v0

    .line 9960
    :sswitch_29
    const-string v0, "INSTALL_FAILED_ABORTED"

    return-object v0

    .line 9966
    :sswitch_2a
    const-string v0, "INSTALL_FAILED_SESSION_INVALID"

    return-object v0

    .line 9961
    :sswitch_2b
    const-string v0, "INSTALL_FAILED_BAD_DEX_METADATA"

    return-object v0

    .line 9963
    :sswitch_2c
    const-string v0, "INSTALL_FAILED_BAD_SIGNATURE"

    return-object v0

    .line 9964
    :sswitch_2d
    const-string v0, "INSTALL_FAILED_WRONG_INSTALLED_VERSION"

    return-object v0

    .line 9965
    :sswitch_2e
    const-string v0, "INSTALL_FAILED_PROCESS_NOT_DEFINED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a -> :sswitch_2e
        -0x79 -> :sswitch_2d
        -0x76 -> :sswitch_2c
        -0x75 -> :sswitch_2b
        -0x74 -> :sswitch_2a
        -0x73 -> :sswitch_29
        -0x71 -> :sswitch_28
        -0x70 -> :sswitch_27
        -0x6f -> :sswitch_26
        -0x6e -> :sswitch_25
        -0x6d -> :sswitch_24
        -0x6c -> :sswitch_23
        -0x6b -> :sswitch_22
        -0x6a -> :sswitch_21
        -0x69 -> :sswitch_20
        -0x68 -> :sswitch_1f
        -0x67 -> :sswitch_1e
        -0x66 -> :sswitch_1d
        -0x65 -> :sswitch_1c
        -0x64 -> :sswitch_1b
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
    .param p0, "status"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 9907
    invoke-static {p0}, Landroid/content/pm/PackageManager;->installStatusToString(I)Ljava/lang/String;

    move-result-object v0

    .line 9908
    .local v0, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 9909
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

    .line 9911
    :cond_0
    return-object v0
.end method

.method public static blacklist invalidatePackageInfoCache()V
    .locals 1

    .line 10875
    sget-object v0, Landroid/content/pm/PackageManager;->sCacheAutoCorker:Landroid/app/PropertyInvalidatedCache$AutoCorker;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->autoCork()V

    .line 10876
    return-void
.end method

.method public static greylist-max-o isMoveStatusFinished(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 9760
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
    .param p0, "flag"    # I

    .line 10069
    sparse-switch p0, :sswitch_data_0

    .line 10087
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10086
    :sswitch_0
    const-string v0, "AUTO_REVOKED"

    return-object v0

    .line 10085
    :sswitch_1
    const-string v0, "ONE_TIME"

    return-object v0

    .line 10083
    :sswitch_2
    const-string v0, "GRANTED_BY_ROLE"

    return-object v0

    .line 10082
    :sswitch_3
    const-string v0, "APPLY_RESTRICTION"

    return-object v0

    .line 10081
    :sswitch_4
    const-string v0, "RESTRICTION_UPGRADE_EXEMPT"

    return-object v0

    .line 10080
    :sswitch_5
    const-string v0, "RESTRICTION_SYSTEM_EXEMPT"

    return-object v0

    .line 10079
    :sswitch_6
    const-string v0, "RESTRICTION_INSTALLER_EXEMPT"

    return-object v0

    .line 10078
    :sswitch_7
    const-string v0, "USER_SENSITIVE_WHEN_DENIED"

    return-object v0

    .line 10077
    :sswitch_8
    const-string v0, "USER_SENSITIVE_WHEN_GRANTED"

    return-object v0

    .line 10076
    :sswitch_9
    const-string v0, "REVOKE_WHEN_REQUESTED"

    return-object v0

    .line 10075
    :sswitch_a
    const-string v0, "REVIEW_REQUIRED"

    return-object v0

    .line 10070
    :sswitch_b
    const-string v0, "GRANTED_BY_DEFAULT"

    return-object v0

    .line 10072
    :sswitch_c
    const-string v0, "SYSTEM_FIXED"

    return-object v0

    .line 10084
    :sswitch_d
    const-string v0, "REVOKED_COMPAT"

    return-object v0

    .line 10071
    :sswitch_e
    const-string v0, "POLICY_FIXED"

    return-object v0

    .line 10074
    :sswitch_f
    const-string v0, "USER_FIXED"

    return-object v0

    .line 10073
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

    .line 10978
    const-string v0, "cache_key.package_info"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->uncorkInvalidations(Ljava/lang/String;)V

    .line 10979
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
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9076
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addUniquePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;

    .line 9175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addUniquePreferredActivity not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "whitelistFlags"    # I

    .line 6542
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist applyRuntimePermissionsForAllApplicationsForMdm(II)Z
    .locals 2
    .param p1, "grant"    # I
    .param p2, "userId"    # I

    .line 10249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "applyRuntimePermissionsForAllApplicationsForMDM not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist applyRuntimePermissionsForMdm(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p3, "grant"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 10241
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 6718
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6721
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6722
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 6723
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6724
    return-object v0

    .line 6719
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist canPackageQuery(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "sourcePackageName"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 10734
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "canPackageQuery not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist canRequestPackageInstalls()Z
.end method

.method public abstract blacklist cancelEMPHandlerSendPendingBroadcast()V
.end method

.method public abstract whitelist canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract whitelist checkPermission(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract whitelist checkSignatures(II)I
.end method

.method public abstract whitelist checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
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

.method public abstract greylist flushPackageRestrictionsAsUser(I)V
.end method

.method public greylist freeStorage(JLandroid/content/IntentSender;)V
    .locals 1
    .param p1, "freeStorageSize"    # J
    .param p3, "pi"    # Landroid/content/IntentSender;

    .line 8944
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    .line 8945
    return-void
.end method

.method public abstract greylist freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
.end method

.method public greylist freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .locals 1
    .param p1, "freeStorageSize"    # J
    .param p3, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 8910
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    .line 8911
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5923
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

.method public abstract blacklist getAppIconAlphaRelativeScaleRateForIconTray(Landroid/graphics/Bitmap;II)F
.end method

.method public blacklist getAppPredictionServicePackageName()Ljava/lang/String;
    .locals 2

    .line 10490
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ApplicationInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5822
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5873
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ApplicationInfoFlags;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5842
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getApplicationInfoAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ApplicationInfoFlags;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5886
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

.method public whitelist getArtManager()Landroid/content/pm/dex/ArtManager;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getArtManager not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAttentionServicePackageName()Ljava/lang/String;
    .locals 2

    .line 10457
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAttentionServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBackgroundPermissionOptionLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 6703
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageItemName"    # Ljava/lang/String;

    .line 11588
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "packageItemName"    # Ljava/lang/String;

    .line 11575
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

.method public blacklist getContentCaptureServicePackageName()Ljava/lang/String;
    .locals 2

    .line 10524
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getContentCaptureServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDeclaredSharedLibraries(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDeclaredSharedLibraries() not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDeclaredSharedLibraries(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
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

    .line 7116
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

    .line 10435
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDefaultTextClassifierPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public whitelist getGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 5769
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist getHarmfulAppWarning(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getHarmfulAppWarning not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getHoldLockToken()Landroid/os/IBinder;
    .locals 2

    .line 10989
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getHoldLockToken()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10990
    :catch_0
    move-exception v0

    .line 10991
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 10537
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getIncidentReportApproverPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I
.end method

.method public whitelist getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 8820
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getInstalledApplications(Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Ljava/util/List;
    .locals 2
    .param p1, "flags"    # Landroid/content/pm/PackageManager$ApplicationInfoFlags;
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

    .line 6852
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;
    .locals 2
    .param p1, "flags"    # Landroid/content/pm/PackageManager$ApplicationInfoFlags;
    .param p2, "userId"    # I
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

    .line 6891
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInstalledApplicationsAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInstalledModules(I)Ljava/util/List;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation

    .line 6039
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .locals 2
    .param p1, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
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

    .line 6067
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .locals 2
    .param p1, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .param p2, "userId"    # I
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

    .line 6136
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
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5537
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getLaunchIntentSenderForPackage not implementedin subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public blacklist getLockedBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 11919
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getLockedBadgedIcon not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMimeGroup(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "mimeGroup"    # Ljava/lang/String;
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

    .line 10628
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getMimeGroup not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6025
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getModuleInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getMonetizeBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 11927
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
    .param p1, "archiveFilePath"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8425
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .locals 21
    .param p1, "archiveFilePath"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 8434
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->getValue()J

    move-result-wide v0

    .line 8435
    .local v0, "flagsBits":J
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2}, Landroid/content/pm/PackageParser;-><init>()V

    .line 8436
    .local v2, "parser":Landroid/content/pm/PackageParser;
    new-instance v3, Landroid/content/pm/PackageParser$CallbackImpl;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Landroid/content/pm/PackageParser$CallbackImpl;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser;->setCallback(Landroid/content/pm/PackageParser$Callback;)V

    .line 8437
    new-instance v3, Ljava/io/File;

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8439
    .local v3, "apkFile":Ljava/io/File;
    const-wide/32 v6, 0xc0000

    and-long v8, v0, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    move-wide v6, v0

    goto :goto_0

    .line 8445
    :cond_0
    or-long/2addr v0, v6

    move-wide v6, v0

    .line 8448
    .end local v0    # "flagsBits":J
    .local v6, "flagsBits":J
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v0, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 8449
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    const-wide/16 v8, 0x40

    and-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    const-wide/32 v8, 0x8000000

    and-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 8450
    :cond_1
    invoke-static {v1, v0}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V

    .line 8452
    :cond_2
    const/4 v13, 0x0

    long-to-int v14, v6

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    sget-object v20, Landroid/content/pm/pkg/FrameworkPackageUserState;->DEFAULT:Landroid/content/pm/pkg/FrameworkPackageUserState;

    move-object v12, v1

    invoke-static/range {v12 .. v20}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8454
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v0

    .line 8455
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const-string v1, "PackageManager"

    const-string v8, "Failure to parse package archive"

    invoke-static {v1, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8456
    const/4 v1, 0x0

    return-object v1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getPackageGids(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)[I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5583
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getPackageInfo(Landroid/content/pm/VersionedPackage;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5407
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5370
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5446
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageInfoAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getPackageInstaller()Landroid/content/pm/PackageInstaller;
.end method

.method public greylist getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageStatsObserver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8988
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 8989
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5609
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5659
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getPackagesHoldingPermissions([Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
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

    .line 6098
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackagesHoldingPermissions not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getPermissionControllerPackageName()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6188
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
    .param p1, "permissionGroupName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 5756
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Ljava/lang/String;>;>;"
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

.method public abstract blacklist getProgressionOfPackageChanged()I
.end method

.method public whitelist getProperty(Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/pm/PackageManager$Property;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 10654
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 10641
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getProviderInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6008
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getReceiverInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5952
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getReceiverInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRequestedRuntimePermissionsForMdm(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
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

    .line 10258
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
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "configuration"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 8362
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

    .line 10467
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

    .line 6202
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5979
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getServiceInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
.end method

.method public blacklist getSetupWizardPackageName()Ljava/lang/String;
    .locals 2

    .line 10512
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getSharedLibraries(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .locals 2
    .param p1, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
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

    .line 7052
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist getSharedLibrariesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .locals 2
    .param p1, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .param p2, "userId"    # I
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

    .line 7082
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

    .line 9741
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSuspendedPackageAppExtras not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSyntheticAppDetailsActivityEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 9302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSyntheticAppDetailsActivityEnabled not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
.end method

.method public blacklist getSystemCaptionsServicePackageName()Ljava/lang/String;
    .locals 2

    .line 10501
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSystemCaptionsServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getSystemSharedLibraryNames()[Ljava/lang/String;
.end method

.method public greylist-max-o getSystemTextClassifierPackageName()Ljava/lang/String;
    .locals 2

    .line 10447
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSystemTextClassifierPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTargetSdkVersion(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5895
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
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 11040
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getUnknownSourcePackagesAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9666
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

    .line 5332
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public abstract greylist-max-o getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
.end method

.method public blacklist getWellbeingPackageName()Ljava/lang/String;
    .locals 2

    .line 10479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getWellbeingPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getWhitelistedRestrictedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "whitelistFlag"    # I
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

    .line 6480
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
    .param p1, "uid"    # I
    .param p2, "certificate"    # [B
    .param p3, "type"    # I

    .line 10366
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hasSigningCertificate not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasSigningCertificate(Ljava/lang/String;[BI)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B
    .param p3, "type"    # I

    .line 10342
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
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "durationMs"    # I

    .line 11005
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->holdLock(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11008
    nop

    .line 11009
    return-void

    .line 11006
    :catch_0
    move-exception v0

    .line 11007
    .local v0, "e":Landroid/os/RemoteException;
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

.method public whitelist isAutoRevokeWhitelisted()Z
    .locals 2

    .line 10577
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isAutoRevokeWhitelisted not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isAutoRevokeWhitelisted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6671
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDefaultApplicationIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 10595
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10596
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getSourceDrawableResId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 10597
    .local v0, "resId":I
    :goto_0
    const v2, 0x1080093

    if-eq v0, v2, :cond_1

    const v2, 0x1080af5

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public whitelist isDeviceUpgrading()Z
    .locals 1

    .line 9842
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHidden(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 11905
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isHidden not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist isInstantApp()Z
.end method

.method public abstract whitelist isInstantApp(Ljava/lang/String;)Z
.end method

.method public blacklist isLock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 11912
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isLock not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist isPackageAutoDisabled(Ljava/lang/String;I)Z
.end method

.method public abstract greylist isPackageAvailable(Ljava/lang/String;)Z
.end method

.method public greylist-max-o isPackageStateProtected(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 10548
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isPackageStateProtected not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isPackageSuspended()Z
    .locals 2

    .line 9717
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isPackageSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isPackageSuspended(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 9691
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isPackageSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist isPackageSuspendedForUser(Ljava/lang/String;I)Z
.end method

.method public abstract whitelist isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public blacklist isPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 11291
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

.method public abstract greylist isSpeg(I)Z
.end method

.method public abstract greylist isSpeg(Ljava/lang/String;I)Z
.end method

.method public blacklist isUnknownSourcePackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 11032
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isUnknownSourcePackage not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist isUpgrade()Z
.end method

.method public abstract blacklist isWirelessConsentModeEnabled()Z
.end method

.method public abstract greylist loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract greylist loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract greylist loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract greylist loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;
.end method

.method public blacklist makeProviderVisible(ILjava/lang/String;)V
    .locals 2
    .param p1, "recipientUid"    # I
    .param p2, "visibleAuthority"    # Ljava/lang/String;

    .line 10747
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->makeProviderVisible(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10750
    nop

    .line 10751
    return-void

    .line 10748
    :catch_0
    move-exception v0

    .line 10749
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist makeUidVisible(II)V
    .locals 2
    .param p1, "recipientUid"    # I
    .param p2, "visibleUid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 10771
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "makeUidVisible not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-r movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I
.end method

.method public blacklist movePackageToSd(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/IMemorySaverPackageMoveObserver;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "observer"    # Landroid/content/pm/IMemorySaverPackageMoveObserver;

    .line 9792
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "movePackageToSd not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
.end method

.method public whitelist queryActivityProperty(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
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

    .line 10676
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryActivityProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryApplicationProperty(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
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

    .line 10665
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
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

    .line 7519
    const-string v0, "Shame on you for calling the hidden API queryBroadcastReceivers(). Shame!"

    .line 7521
    .local v0, "msg":Ljava/lang/String;
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    const-string v2, "Shame on you for calling the hidden API queryBroadcastReceivers(). Shame!"

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_0

    .line 7524
    const-string v1, "PackageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7525
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 7522
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist queryBroadcastReceivers(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
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

    .line 7449
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7474
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userId"    # I
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

    .line 7508
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryBroadcastReceiversAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
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

    .line 7486
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist-max-o queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # I
    .param p4, "metaDataKey"    # Ljava/lang/String;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7875
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;)Ljava/util/List;
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
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

    .line 7849
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryContentProviders not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .param p4, "metaDataKey"    # Ljava/lang/String;
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

    .line 7886
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
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

    .line 7304
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7371
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userId"    # I
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

    .line 7340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentActivitiesAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "user"    # Landroid/os/UserHandle;
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

    .line 7383
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryIntentActivityOptions(Landroid/content/ComponentName;Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 2
    .param p1, "caller"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
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

    .line 7425
    .local p2, "specifics":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
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

    .annotation runtime Ljava/lang/Deprecated;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist queryIntentContentProviders(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
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

    .line 7757
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist queryIntentContentProvidersAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7720
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userId"    # I
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

    .line 7696
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentContentProvidersAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "user"    # Landroid/os/UserHandle;
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

    .line 7732
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
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

    .line 7597
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist queryIntentServicesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7654
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userId"    # I
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

    .line 7629
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentServicesAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "user"    # Landroid/os/UserHandle;
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

    .line 7666
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
    .param p1, "propertyName"    # Ljava/lang/String;
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

    .line 10687
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryProviderProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryReceiverProperty(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
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

    .line 10698
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryReceiverProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryServiceProperty(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
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

    .line 10709
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
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "whitelistFlags"    # I

    .line 6611
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist replacePreferredActivity(Landroid/content/IntentFilter;ILjava/util/List;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p4, "activity"    # Landroid/content/ComponentName;
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

    .line 9129
    .local p3, "set":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/ComponentName;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2, v0, p4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 9130
    return-void
.end method

.method public abstract greylist replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestChecksums(Ljava/lang/String;ZILjava/util/List;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeSplits"    # Z
    .param p3, "required"    # I
    .param p5, "onChecksumsReadyListener"    # Landroid/content/pm/PackageManager$OnChecksumsReadyListener;
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

    .line 10424
    .local p4, "trustedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "requestChecksums not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 7227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveActivity not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist resolveActivityAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userId"    # I

    .line 7274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveActivityAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;

    .line 7787
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveContentProvider not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
.end method

.method public blacklist resolveContentProviderAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .param p3, "userId"    # I

    .line 7816
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveContentProviderAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist resolveService(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 7549
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveService not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist resolveServiceAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userId"    # I

    .line 7570
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
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6378
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 6379
    return-void
.end method

.method public whitelist semCheckComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "componentName"    # Ljava/lang/String;

    .line 11352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semCheckComponentMetadataForIconTray not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semFreeStorageAndNotify(JLandroid/content/pm/PackageManager$SemFreeStorageNotifyListener;)V
    .locals 2
    .param p1, "freeStorageSize"    # J
    .param p3, "listener"    # Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

    .line 11533
    new-instance v0, Landroid/content/pm/PackageManager$SemPackageDataObserver;

    invoke-direct {v0, p0, p3}, Landroid/content/pm/PackageManager$SemPackageDataObserver;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;)V

    .line 11534
    .local v0, "spdo":Landroid/content/pm/PackageManager$SemPackageDataObserver;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    .line 11535
    return-void
.end method

.method public abstract whitelist semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist semGetActivityIconForIconTray(Landroid/content/Intent;I)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public blacklist semGetAppIconFeatures(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 11388
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semShouldPackIntoIconTray not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
.end method

.method public abstract whitelist semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
.end method

.method public blacklist semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mode"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "density"    # I

    .line 11418
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semGetDrawableForIconTray not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .locals 1
    .param p1, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .param p2, "userId"    # I
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

    .line 11852
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist semGetPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 11831
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semGetPackageInfoAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 11651
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist semGetSystemFeatureLevel(Ljava/lang/String;)I
.end method

.method public whitelist semGetUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 11804
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist semGrantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 11705
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 11706
    return-void
.end method

.method public abstract whitelist semIsPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public whitelist semQueryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
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

    .line 11616
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist semRevokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 11678
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 11679
    return-void
.end method

.method public whitelist semSetPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SemSuspendDialogInfo;)[Ljava/lang/String;
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "appExtras"    # Landroid/os/PersistableBundle;
    .param p4, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p5, "semDialogInfo"    # Landroid/content/pm/SemSuspendDialogInfo;

    .line 11761
    const/4 v0, 0x0

    .line 11762
    .local v0, "dialogInfo":Landroid/content/pm/SuspendDialogInfo;
    if-eqz p5, :cond_4

    .line 11763
    new-instance v1, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v1}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 11764
    .local v1, "builder":Landroid/content/pm/SuspendDialogInfo$Builder;
    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getTitleResId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 11765
    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getTitleResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setTitle(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 11767
    :cond_0
    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getDialogMessageResId()I

    move-result v2

    if-eqz v2, :cond_1

    .line 11768
    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getDialogMessageResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 11770
    :cond_1
    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getDialogMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11771
    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getDialogMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 11773
    :cond_2
    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getNeutralButtonTextResId()I

    move-result v2

    if-eqz v2, :cond_3

    .line 11774
    invoke-virtual {p5}, Landroid/content/pm/SemSuspendDialogInfo;->getNeutralButtonTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setNeutralButtonText(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 11776
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v0

    .line 11778
    .end local v1    # "builder":Landroid/content/pm/SuspendDialogInfo$Builder;
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
    .param p1, "packageName"    # Ljava/lang/String;

    .line 11368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "semShouldPackIntoIconTray not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semUpdatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 0
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 11635
    invoke-virtual/range {p0 .. p5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 11636
    return-void
.end method

.method public whitelist sendDeviceCustomizationReadyBroadcast()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10562
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "sendDeviceCustomizationReadyBroadcast not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist setApplicationCategoryHint(Ljava/lang/String;I)V
.end method

.method public abstract whitelist setApplicationEnabledSetting(Ljava/lang/String;II)V
.end method

.method public abstract blacklist setApplicationEnabledSettingWithList(Ljava/util/List;IIZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZZ)V"
        }
    .end annotation
.end method

.method public abstract greylist setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
.end method

.method public whitelist setAutoRevokeWhitelisted(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "whitelisted"    # Z

    .line 6643
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

    .line 9256
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
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
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "restrictionFlags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9529
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setDistractingPackageRestrictions not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10289
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

    .line 11021
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setKeepUninstalledPackages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11024
    nop

    .line 11025
    return-void

    .line 11022
    :catch_0
    move-exception v0

    .line 11023
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setMimeGroup(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .param p1, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10612
    .local p2, "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setMimeGroup not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;)[Ljava/lang/String;
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "appExtras"    # Landroid/os/PersistableBundle;
    .param p4, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p5, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9641
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setPackagesSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "appExtras"    # Landroid/os/PersistableBundle;
    .param p4, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p5, "dialogMessage"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9585
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setPackagesSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSyntheticAppDetailsActivityEnabled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setSyntheticAppDetailsActivityEnabled not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSystemAppState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9386
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
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 11933
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "shouldAppSupportBadgeIcon not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
.end method

.method public abstract greylist unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V
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
