.class public Lcom/samsung/android/knox/SemPersonaManager;
.super Ljava/lang/Object;
.source "SemPersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;,
        Lcom/samsung/android/knox/SemPersonaManager$AppType;
    }
.end annotation


# static fields
.field public static final greylist ACCESS_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final greylist ACCESS_TYPE_SDCARD:Ljava/lang/String; = "sdcard"

.field public static final greylist ACTION_CHANGE_CREDENTIAL_SCREEN:Ljava/lang/String; = "com.samsung.android.knox.CHANGE_CREDENTIAL_SCREEN"

.field public static final greylist ACTION_CONFIRM_PROFILE_CREDENTIAL_WITH_USER:Ljava/lang/String; = "com.samsung.android.knox.COMFIRM_CREDENTIAL"

.field public static final greylist ACTION_LOCKDOWN_SCREEN:Ljava/lang/String; = "com.samsung.android.knox.LOCKDOWN_SCREEN"

.field private static final greylist ACTION_SWITCH_PROFILE:Ljava/lang/String; = "com.samsung.android.knox.ACTION_SWITCH_PROFILE"

.field private static final greylist ADAPT_SOUND_PACKAGE_NAME:Ljava/lang/String; = "com.sec.hearingadjust"

.field public static final greylist APPSEPARATION_PACKAGE:Ljava/lang/String; = "com.samsung.android.appseparation"

.field public static final greylist APP_SEPARATION_APP_LIST:Ljava/lang/String; = "APP_SEPARATION_APP_LIST"

.field public static final greylist APP_SEPARATION_OUTSIDE:Ljava/lang/String; = "APP_SEPARATION_OUTSIDE"

.field public static final greylist ATTR_HAS_PREMIUM_CONTAINER_LICENSE_ACTIVATED:I = 0x40000000

.field public static final greylist B2C_FILE_SHARE:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.fileshare.B2CShareViaActivity"

.field public static final greylist BLOCKED_SHARING_COMP_COMMON:Ljava/lang/String; = "blockedcompcommon"

.field public static final greylist BLOCKED_SHARING_COMP_FOR_OWNER:Ljava/lang/String; = "blockedcompknox"

.field public static final greylist BLOCKED_SHARING_COMP_FOR_SECUREFOLDER:Ljava/lang/String; = "blockedcompsecurefolder"

.field public static final greylist BOOKMARKS:Ljava/lang/String; = "Bookmarks"

.field public static final greylist CALENDAR:Ljava/lang/String; = "Calendar"

.field public static final greylist CALLER_DISPLAY_NAME:Ljava/lang/String; = "caller_display_name"

.field public static final greylist CALLER_PHONE_NUMBER:Ljava/lang/String; = "caller_phone_number"

.field public static final greylist CALLER_PHOTO:Ljava/lang/String; = "caller_photo"

.field public static final greylist CALL_LOG:Ljava/lang/String; = "CallLog"

.field public static final greylist CLIPBOARD:Ljava/lang/String; = "Clipboard"

.field private static final greylist CLONE_TO_KNOX_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final greylist CONTACT_OWNER_ID:Ljava/lang/String; = "contact_owner_id"

.field public static final greylist CONTAINER_AGENT_ADMIN_RECEIVER:Ljava/lang/String; = "com.samsung.android.knox.containeragent.KnoxDeviceAdminReceiver"

.field public static final greylist CONTAINER_AGENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containeragent"

.field public static final greylist CONTAINER_COM_TYPE:I = 0x3

.field public static final greylist CONTAINER_CORE_ADMIN_RECEIVER:Ljava/lang/String; = "com.samsung.android.knox.containercore.KnoxAdminCommandReceiver"

.field public static final greylist CONTAINER_CORE_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containercore"

.field public static final greylist CONTAINER_DEFAULT_TYPE:I = 0x1

.field public static final greylist CONTAINER_DESKTOP_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containerdesktop"

.field public static final greylist CONTAINER_LWC_TYPE:I = 0x2

.field public static final whitelist CONTAINER_TYPE_CONTAINER_ONLY:I = 0x6

.field public static final whitelist CONTAINER_TYPE_LEGACY:I = 0x5

.field public static final whitelist CONTAINER_TYPE_MY_KNOX:I = 0x1

.field public static final whitelist CONTAINER_TYPE_NONE:I = 0x0

.field public static final whitelist CONTAINER_TYPE_PREMIUM:I = 0x4

.field public static final whitelist CONTAINER_TYPE_PRIME:I = 0x3

.field public static final whitelist CONTAINER_TYPE_SECURE_FOLDER:I = 0x2

.field public static final greylist CUSTOM_BADGE_ICON:Ljava/lang/String; = "custom-badge-icon"

.field public static final greylist CUSTOM_CONTAINER_ICON:Ljava/lang/String; = "custom-container-icon"

.field public static final greylist CUSTOM_NAME_ICON:Ljava/lang/String; = "custom-name-icon"

.field public static final greylist CUSTOM_PERSONAL_MODEL_LABEL:Ljava/lang/String; = "custom-name-personal-mode"

.field private static final greylist DEBUG:Z

.field public static final greylist DEFAULT_APPS:Ljava/lang/String; = "DefaultApps"

.field public static final greylist DEFAULT_SDP_ACTIVATION_TIME:I = 0x1388

.field public static final greylist ENABLE_EULA:Ljava/lang/String; = "enable_eula"

.field public static final greylist ERROR_CREATE_PERSONA_ADMIN_ACTIVATION_FAILED:I = -0x3f1

.field public static final greylist ERROR_CREATE_PERSONA_ADMIN_INSTALLATION_FAILED:I = -0x3f0

.field public static final greylist ERROR_CREATE_PERSONA_EC_MAX_PERSONA_LIMIT_REACHED:I = -0x3f7

.field public static final greylist ERROR_CREATE_PERSONA_EMERGENCY_MODE_FAILED:I = -0x407

.field public static final greylist ERROR_CREATE_PERSONA_FILESYSTEM_ERROR:I = -0x3f3

.field public static final greylist ERROR_CREATE_PERSONA_GENERATE_CMK_FAILED:I = -0x40a

.field public static final greylist ERROR_CREATE_PERSONA_HANDLER_INSTALLATION_FAILED:I = -0x3ee

.field public static final greylist ERROR_CREATE_PERSONA_INTERNAL_ERROR:I = -0x3f6

.field public static final greylist ERROR_CREATE_PERSONA_MAX_PERSONA_LIMIT_REACHED:I = -0x3f4

.field public static final greylist ERROR_CREATE_PERSONA_NO_HANDLER_APK:I = -0x3ea

.field public static final greylist ERROR_CREATE_PERSONA_NO_NAME:I = -0x3e9

.field public static final greylist ERROR_CREATE_PERSONA_NO_PERSONA_ADMIN_APK:I = -0x3ec

.field public static final greylist ERROR_CREATE_PERSONA_NO_PERSONA_TYPE:I = -0x3ed

.field public static final greylist ERROR_CREATE_PERSONA_NO_SETUPWIZARD_APK:I = -0x3eb

.field public static final greylist ERROR_CREATE_PERSONA_RUNTIME_PERMISSION_GRANT:I = -0x40b

.field public static final greylist ERROR_CREATE_PERSONA_SECURE_FOLDER_MAX_PERSONA_LIMIT_REACHED:I = -0x3f5

.field public static final greylist ERROR_CREATE_PERSONA_SETUPWIZARD_INSTALLATION_FAILED:I = -0x3ef

.field public static final greylist ERROR_CREATE_PERSONA_SUB_USER_FAILED:I = -0x403

.field public static final greylist ERROR_CREATE_PERSONA_SYSTEM_APP_INSTALLATION_FAILED:I = -0x3f2

.field public static final greylist ERROR_CREATE_PERSONA_TIMA_PWD_KEY_FAILED:I = -0x409

.field public static final greylist ERROR_CREATE_PERSONA_USER_INFO_INVALID:I = -0x408

.field public static final greylist ERROR_INVAILD_CONTAINER_ID:I = -0x515

.field public static final greylist ERROR_NO_PERSONA_SERVICE:I = -0x514

.field public static final greylist ERROR_PERSONA_APP_INSTALLATION_FAILED:I = -0x7d1

.field public static final greylist ERROR_REMOVE_NOT_PERSONA_OWNER:I = -0x4b3

.field public static final greylist ERROR_REMOVE_PERSONA_FAILED:I = -0x4b1

.field public static final greylist ERROR_REMOVE_PERSONA_NOT_EXIST:I = -0x4b2

.field public static final greylist ERROR_SWITCH_EQUALS_CURRENT_USER:I = -0x451

.field public static final greylist ERROR_SWITCH_INVALID_PERSONA_ID:I = -0x44c

.field public static final greylist ERROR_SWITCH_OUTSIDE_PERSONA_GROUP:I = -0x452

.field public static final greylist ERROR_SWITCH_PERSONA_FILESYSTEM:I = -0x44f

.field public static final greylist ERROR_SWITCH_PERSONA_HANDLER_NOT_RESPONDING:I = -0x450

.field public static final greylist ERROR_SWITCH_PERSONA_LOCKED:I = -0x44e

.field public static final greylist ERROR_SWITCH_PERSONA_NOT_INITIALIZED:I = -0x44d

.field private static final greylist EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist EXPORT_DATA:Ljava/lang/String; = "knox-export-data"

.field private static final greylist EXTRA_UNLAUNCHABLE_REASON:Ljava/lang/String; = "unlaunchable_reason"

.field private static final greylist FLAG_BASE:I = 0x1

.field public static final greylist FLAG_DUAL_DAR:I = 0x6000

.field public static final greylist FLAG_DUAL_DAR_CUSTOM_CRYPTO:I = 0x4000

.field public static final greylist FLAG_DUAL_DAR_SAMSUNG_CRYPTO:I = 0x2000

.field public static final greylist FLAG_EC_ENABLED:I = 0x10000

.field public static final greylist FLAG_SECURE_FOLDER_CONTAINER:I = 0x2000

.field public static final greylist FOLDERCONTAINER_PKG_NAME:Ljava/lang/String; = "com.sec.knox.foldercontainer"

.field public static final greylist FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final greylist HOME_SCREEN_WALLPAPER:Ljava/lang/String; = "custom-home-screen-wallpaper"

.field public static final greylist ICON_CLASS_FOR_INTENT_FORWARD_TO_PARENT:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToParent"

.field public static final greylist ICON_CLASS_FOR_INTENT_FORWARD_TO_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile"

.field public static final greylist ICON_CLASS_FOR_SECUREFOLDER_FORWARD_TO_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile4"

.field public static final greylist ICON_CLASS_GLOBAL_SETTINGS:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.GlobalSettingsIcon"

.field public static final greylist ICON_CLASS_KNOX_SETTINGS_I:Ljava/lang/String; = "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconI"

.field public static final greylist ICON_CLASS_KNOX_SETTINGS_II:Ljava/lang/String; = "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconII"

.field public static final greylist ICON_CLASS_KNOX_SETTINGS_III:Ljava/lang/String; = "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconIII"

.field public static final greylist ICON_CLASS_PHONE:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.PhoneIcon"

.field public static final greylist ICON_CLASS_SECUREFOLDER_FILE_STORE:Ljava/lang/String; = "switcher.B2CStoreFilesActivity"

.field public static final greylist ICON_CLASS_SMS:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SMSIcon"

.field public static final greylist ICON_CLASS_SWITCH_TO_HOME:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToPersonalIcon"

.field public static final greylist ICON_CLASS_SWITCH_TO_KNOX_I:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

.field public static final greylist ICON_CLASS_SWITCH_TO_KNOX_II:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

.field public static final greylist ICON_CLASS_SWITCH_TO_KNOX_III:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconIII"

.field public static final greylist IMMEDIATELY_LOCK_TIMEOUT:I = -0x2

.field public static final greylist IMPORT_DATA:Ljava/lang/String; = "knox-import-data"

.field public static final greylist INTENT_ACCESS_EXT_SDCARD:Ljava/lang/String; = "com.sec.knox.container.access.extsdcard"

.field public static final greylist INTENT_ACTION_CHANGE_PASSWORD:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CHANGE_PASSWORD"

.field public static final greylist INTENT_ACTION_CONFIRM_DEVICE_CREDENTIAL_WITH_USER:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

.field public static final greylist INTENT_ACTION_CONTAINER_REMOVAL_STARTED:Ljava/lang/String; = "com.sec.knox.container.action.containerremovalstarted"

.field public static final greylist INTENT_ACTION_CREATE_SECURE_FOLDER:Ljava/lang/String; = "com.sec.knox.action.CREATE_SECURE_FOLDER"

.field public static final greylist INTENT_ACTION_KNOX_LICENSE_ACATIVATE_DIALOG_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_LICENSE_ACATIVATE_DIALOG_INTERNAL"

.field public static final greylist INTENT_ACTION_LAUNCH_INFO:Ljava/lang/String; = "com.sec.knox.container.action.launchinfo"

.field public static final greylist INTENT_ACTION_NFC_POLICY:Ljava/lang/String; = "com.samsung.android.knox.nfc.policy"

.field public static final greylist INTENT_ACTION_OBSERVER:Ljava/lang/String; = "com.sec.knox.container.action.observer"

.field public static final greylist INTENT_ACTION_SDP_TIMEOUT:Ljava/lang/String; = "com.sec.knox.container.INTENT_KNOX_SDP_ACTIVATED"

.field public static final greylist INTENT_CATEGORY_OBSERVER_CONTAINERID:Ljava/lang/String; = "com.sec.knox.container.category.observer.containerid"

.field public static final greylist INTENT_CATEGORY_OBSERVER_ONATTRIBUTECHANGE:Ljava/lang/String; = "com.sec.knox.container.category.observer.onattributechange"

.field public static final greylist INTENT_CATEGORY_OBSERVER_ONKEYGUARDSTATECHANGED:Ljava/lang/String; = "com.sec.knox.container.category.observer.onkeyguardstatechanged"

.field public static final greylist INTENT_CATEGORY_OBSERVER_ONPERSONASWITCH:Ljava/lang/String; = "com.sec.knox.container.category.observer.onpersonaswitch"

.field public static final greylist INTENT_CATEGORY_OBSERVER_ONSESSIONEXPIRED:Ljava/lang/String; = "com.sec.knox.container.category.observer.onsessionexpired"

.field public static final greylist INTENT_CATEGORY_OBSERVER_ONSTATECHANGE:Ljava/lang/String; = "com.sec.knox.container.category.observer.onstatechange"

.field public static final greylist INTENT_CONTAINER_NEED_RESTART:Ljava/lang/String; = "com.sec.knox.container.need.restart"

.field public static final greylist INTENT_EXTRA_CONTAINER_ID:Ljava/lang/String; = "containerId"

.field public static final greylist INTENT_EXTRA_OBSERVER_ATTRIBUTE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.attribute"

.field public static final greylist INTENT_EXTRA_OBSERVER_ATTRIBUTE_STATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.attribute.state"

.field public static final greylist INTENT_EXTRA_OBSERVER_KEYGUARDSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.keyguardstate"

.field public static final greylist INTENT_EXTRA_OBSERVER_NEWSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.newstate"

.field public static final greylist INTENT_EXTRA_OBSERVER_PREVIOUSSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.previousstate"

.field public static final greylist INTENT_EXTRA_UPDATED_VALUE:Ljava/lang/String; = "com.sec.knox.container.extra.updated.value"

.field public static final greylist INTENT_PERMISSION_LAUNCH_INFO:Ljava/lang/String; = "com.samsung.container.LAUNCH_INFO"

.field public static final greylist INTENT_PERMISSION_OBSERVER:Ljava/lang/String; = "com.samsung.container.OBSERVER"

.field public static final greylist INTENT_PERMISSION_RECEIVE_KNOX_APPS_UPDATE:Ljava/lang/String; = "com.sec.knox.container.permission.RECEIVE_KNOX_APPS_UPDATE"

.field public static final greylist KA_AS_SCHEMA_VERSION:I = 0x1

.field public static final greylist KA_SCHEMA_VERSION:I = 0x4

.field public static final greylist KNOX_SETTINGS_CLASS:Ljava/lang/String; = "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivity"

.field public static final greylist KNOX_SETTINGS_SYNC_PREFIX:Ljava/lang/String; = "knox_container_sync_"

.field public static final greylist LOCK_SCREEN_WALLPAPER:Ljava/lang/String; = "custom-lock-screen-wallpaper"

.field public static final greylist MANAGED_PROVISIONING_PACKAGE:Ljava/lang/String; = "com.android.managedprovisioning"

.field public static final greylist MAX_PERSONA_ALLOWED:I = 0x2

.field public static final greylist MAX_PERSONA_ALLOWED_SECURE_FOLDER:I = 0x1

.field public static final greylist MAX_PERSONA_ID:I = 0xc8

.field public static final greylist MAX_SECURE_FOLDER_ID:I = 0xa0

.field public static final greylist MINIMUM_SCREEN_OFF_TIMEOUT:I = 0x1388

.field public static final greylist MIN_PERSONA_ID:I = 0x64

.field public static final greylist MIN_SECURE_FOLDER_ID:I = 0x96

.field public static final greylist MOVE_FILE_TO_CONTAINER:Ljava/lang/String; = "move-file-to-container"

.field public static final greylist MOVE_FILE_TO_OWNER:Ljava/lang/String; = "move-file-to-owner"

.field public static final whitelist MOVE_TO_APP_TYPE_GALLERY:I = 0x1

.field public static final whitelist MOVE_TO_APP_TYPE_MUSIC:I = 0x3

.field public static final whitelist MOVE_TO_APP_TYPE_MYFILES:I = 0x4

.field public static final whitelist MOVE_TO_APP_TYPE_VIDEO:I = 0x2

.field public static final whitelist MOVE_TO_CONTAINER_TYPE_ENTERPRISE_CONTAINER:I = 0x3e8

.field public static final whitelist MOVE_TO_CONTAINER_TYPE_KNOX:I = 0x3e9

.field public static final whitelist MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I = 0x3ea

.field public static final whitelist MOVE_TO_PERSONAL_TYPE_KNOX:I = 0x3ec

.field public static final whitelist MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I = 0x3eb

.field public static final greylist NOTIFICATIONS:Ljava/lang/String; = "Notifications"

.field public static final greylist PERMISSION_KEYGUARD_ACCESS:Ljava/lang/String; = "com.sec.knox.container.keyguard.ACCESS"

.field public static final greylist PERMISSION_PERIPHERAL_POLICY_UPDATE:Ljava/lang/String; = "com.sec.knox.container.peripheral.POLICY_UPDATE"

.field public static final greylist PERSONA_CACHE_RESET_ON_REBOOT:Ljava/lang/String; = "knoxid.reset_on_reboot"

.field public static final greylist PERSONA_ID:Ljava/lang/String; = "persona_id"

.field public static final greylist PERSONA_POLICY_SERVICE:Ljava/lang/String; = "persona_policy"

.field public static final greylist PERSONA_TIMA_ECRPTFS_INDEX1:I = 0x64

.field public static final greylist PERSONA_TIMA_ECRPTFS_INDEX2:I = 0x66

.field public static final greylist PERSONA_TIMA_PASSWORDHINT_INDEX:I = 0x68

.field public static final greylist PERSONA_TIMA_PASSWORD_INDEX1:I = 0x65

.field public static final greylist PERSONA_TIMA_PASSWORD_INDEX2:I = 0x67

.field public static final greylist PERSONA_VALIDATOR_HANDLER:Ljava/lang/String; = "persona_validator"

.field public static final greylist PROPERTY_DEVICE_OWNER_EXISTS:Ljava/lang/String; = "persist.sys.knox.device_owner"

.field public static final greylist PROPERTY_KNOX_CONTAINER_INFO:Ljava/lang/String; = "persist.sys.knox.userinfo"

.field public static final greylist REMOVE_OP_SUCCESS:I = 0x0

.field public static final greylist SANITIZE_DATA:Ljava/lang/String; = "knox-sanitize-data"

.field public static final greylist SANITIZE_DATA_LOCKSCREEN:Ljava/lang/String; = "knox-sanitize-data-lockscreen"

.field public static final greylist SECUREFOLDER_ICON_CLASS_SWITCH_TO_HOME:Ljava/lang/String; = "com.samsung.knox.securefolder.switcher.SwitchToPersonalIcon"

.field public static final greylist SECUREFOLDER_PACKAGE:Ljava/lang/String; = "com.samsung.knox.securefolder"

.field public static greylist SECURE_FOLDER_NAME:Ljava/lang/String; = null

.field private static final greylist SEC_PRODUCT_FEATURE_KNOX_CONFIG_CONTAINER_VERSION:Ljava/lang/String; = "28"

.field public static final greylist SEC_PRODUCT_FEATURE_KNOX_SUPPORT_CONTAINER:Z = true

.field private static final greylist SEC_PRODUCT_FEATURE_KNOX_SUPPORT_DUAL_DAR:Z = true

.field public static final greylist SEC_PRODUCT_FEATURE_KNOX_SUPPORT_MDM:Z = true

.field private static final greylist SETTINGS_INTENT_FORWARD_BLOCKLIST_FOR_SF:[Ljava/lang/String;

.field public static final greylist SETUP_WIZARD_PKG_NAME:Ljava/lang/String; = "com.sec.knox.setup"

.field public static final greylist SHORTCUTS:Ljava/lang/String; = "Shortcuts"

.field static final greylist SHORTCUT_FILTER:[Ljava/lang/String;

.field public static final greylist SMS:Ljava/lang/String; = "Sms"

.field private static greylist TAG:Ljava/lang/String; = null

.field public static final greylist TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field public static final greylist TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field public static final greylist TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field public static final greylist TIMA_COMPROMISED_TYPE4:I = 0x1000f

.field public static final greylist TIMA_VALIDATION_SUCCESS:I = 0x0

.field private static final greylist UNLAUNCHABLE_REASON_PWD_EXPIRED:I = 0x1

.field public static final greylist WHEN_PHONE_RESTART_LOCK_TIMEOUT:I = -0x1

.field public static final greylist WHEN_SCREEN_TURNS_OFF_LOCK_TIMEOUT:I

.field private static greylist _instance:Lcom/samsung/android/knox/ISemPersonaManager;

.field public static final greylist approvedPackages:[Ljava/lang/String;

.field public static final greylist excludedPackages:[Ljava/lang/String;

.field private static greylist mKeyguardManager:Landroid/app/KeyguardManager;

.field private static greylist mMoveToInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist mdmPackages:[Ljava/lang/String;

.field private static greylist personaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private static final greylist pmInstanceLock:Ljava/lang/Object;

.field private static greylist rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private static greylist skipPackagesListForNotification:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist mContext:Landroid/content/Context;

.field private final greylist mService:Lcom/samsung/android/knox/ISemPersonaManager;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 43

    .line 105
    const-string v0, "SemPersonaManager"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    .line 390
    const-string/jumbo v0, "secure-folder"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SECURE_FOLDER_NAME:Ljava/lang/String;

    .line 571
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mMoveToInfo:Ljava/util/ArrayList;

    .line 572
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 573
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 578
    const-string v1, "com.samsung.android.knox.containeragent"

    const-string v2, "com.sec.hearingadjust"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/knox/SemPersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .line 584
    const-string v2, "android.settings.USAGE_ACCESS_SETTINGS"

    const-string v3, "android.settings.ADD_ACCOUNT_SETTINGS"

    const-string v4, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/knox/SemPersonaManager;->SETTINGS_INTENT_FORWARD_BLOCKLIST_FOR_SF:[Ljava/lang/String;

    .line 1506
    const/16 v2, 0x74

    new-array v2, v2, [Ljava/lang/String;

    .line 1507
    const-string v3, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v4, "com.android.mms"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "com.android.settings"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "com.sec.knox.knoxsetupwizardclient"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "com.sec.chaton"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "com.sec.pcw"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    const/4 v1, 0x6

    const-string v3, "com.samsung.android.knox.containercore"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "com.sec.watchon.phone"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "com.sec.android.automotive.drivelink"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "com.samsung.android.app.lifetimes"

    aput-object v3, v2, v1

    const/16 v1, 0xa

    const-string v3, "com.sec.android.app.shealth"

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string v3, "com.sec.android.app.voicenote"

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string v3, "com.sec.android.app.kidshome"

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-string v3, "com.sec.knox.app.container"

    aput-object v3, v2, v1

    const/16 v1, 0xe

    const-string v3, "com.sec.knox.containeragent"

    aput-object v3, v2, v1

    const/16 v1, 0xf

    const-string v3, "com.sec.android.app.samsungapps"

    aput-object v3, v2, v1

    const/16 v1, 0x10

    const-string/jumbo v3, "tv.peel.smartremote"

    aput-object v3, v2, v1

    const/16 v1, 0x11

    const-string v3, "com.skt.prod.phonebook"

    aput-object v3, v2, v1

    const/16 v1, 0x12

    const-string v4, "com.sec.enterprise.knox.express"

    aput-object v4, v2, v1

    const/16 v1, 0x13

    const-string v5, "com.google.android.apps.walletnfcrel"

    aput-object v5, v2, v1

    const/16 v1, 0x14

    const-string v5, "com.samsung.android.voc"

    aput-object v5, v2, v1

    const/16 v1, 0x15

    const-string v5, "com.skt.tservice"

    aput-object v5, v2, v1

    const/16 v1, 0x16

    const-string v5, "com.sktelecom.minit"

    aput-object v5, v2, v1

    const/16 v1, 0x17

    const-string v5, "com.skt.prod.dialer"

    aput-object v5, v2, v1

    const/16 v1, 0x18

    const-string v5, "com.skt.skaf.A000VODBOX"

    aput-object v5, v2, v1

    const/16 v1, 0x19

    const-string v5, "com.skt.skaf.OA00050017"

    aput-object v5, v2, v1

    const/16 v1, 0x1a

    const-string v5, "com.skt.skaf.A000Z00040"

    aput-object v5, v2, v1

    const/16 v1, 0x1b

    const-string v5, "com.skt.skaf.OA00026910"

    aput-object v5, v2, v1

    const/16 v1, 0x1c

    const-string v5, "com.skt.skaf.l001mtm091"

    aput-object v5, v2, v1

    const/16 v1, 0x1d

    aput-object v3, v2, v1

    const/16 v1, 0x1e

    const-string v3, "com.skt.smartbill"

    aput-object v3, v2, v1

    const/16 v1, 0x1f

    const-string v3, "com.skt.tbagplus"

    aput-object v3, v2, v1

    const/16 v1, 0x20

    const-string v3, "com.sktelecom.tguard"

    aput-object v3, v2, v1

    const/16 v1, 0x21

    const-string v3, "com.skt.tdatacoupon"

    aput-object v3, v2, v1

    const/16 v1, 0x22

    const-string v3, "com.skb.btvmobile"

    aput-object v3, v2, v1

    const/16 v1, 0x23

    const-string v3, "com.iloen.melon"

    aput-object v3, v2, v1

    const/16 v1, 0x24

    const-string v3, "com.nate.android.portalmini"

    aput-object v3, v2, v1

    const/16 v1, 0x25

    const-string v3, "com.tms"

    aput-object v3, v2, v1

    const/16 v1, 0x26

    const-string v3, "com.skmc.okcashbag.home_google"

    aput-object v3, v2, v1

    const/16 v1, 0x27

    const-string v3, "com.elevenst"

    aput-object v3, v2, v1

    const/16 v1, 0x28

    const-string v3, "com.elevenst.deals"

    aput-object v3, v2, v1

    const/16 v1, 0x29

    const-string v3, "com.moent.vas"

    aput-object v3, v2, v1

    const/16 v1, 0x2a

    const-string v3, "com.skmnc.gifticon"

    aput-object v3, v2, v1

    const/16 v1, 0x2b

    const-string v3, "com.skt.tmaphot"

    aput-object v3, v2, v1

    const/16 v1, 0x2c

    const-string v3, "com.skplanet.mbuzzer"

    aput-object v3, v2, v1

    const/16 v1, 0x2d

    const-string v3, "com.skt.tgift"

    aput-object v3, v2, v1

    const/16 v1, 0x2e

    const-string v3, "com.sktelecom.tsmartpay"

    aput-object v3, v2, v1

    const/16 v1, 0x2f

    const-string v3, "com.cyworld.camera"

    aput-object v3, v2, v1

    const/16 v1, 0x30

    const-string v3, "com.kt.android.showtouch"

    aput-object v3, v2, v1

    const/16 v1, 0x31

    const-string v3, "com.kt.wificm"

    aput-object v3, v2, v1

    const/16 v1, 0x32

    const-string v3, "com.ktshow.cs"

    aput-object v3, v2, v1

    const/16 v1, 0x33

    const-string v3, "com.kt.olleh.storefront"

    aput-object v3, v2, v1

    const/16 v1, 0x34

    const-string v3, "com.kth.kshop"

    aput-object v3, v2, v1

    const/16 v1, 0x35

    const-string v3, "com.show.greenbill"

    aput-object v3, v2, v1

    const/16 v1, 0x36

    const-string v3, "com.estsoft.alyac"

    aput-object v3, v2, v1

    const/16 v1, 0x37

    const-string v5, "com.kt.accessory"

    aput-object v5, v2, v1

    const/16 v1, 0x38

    const-string v5, "kt.navi"

    aput-object v5, v2, v1

    const/16 v1, 0x39

    const-string v5, "com.olleh.android.oc2"

    aput-object v5, v2, v1

    const/16 v1, 0x3a

    const-string v5, "com.kt.ollehfamilybox"

    aput-object v5, v2, v1

    const/16 v1, 0x3b

    const-string v5, "com.kt.otv"

    aput-object v5, v2, v1

    const/16 v1, 0x3c

    const-string v5, "com.olleh.webtoon"

    aput-object v5, v2, v1

    const/16 v1, 0x3d

    const-string v5, "com.kt.shodoc"

    aput-object v5, v2, v1

    const/16 v1, 0x3e

    const-string v5, "com.ktmusic.geniemusic"

    aput-object v5, v2, v1

    const/16 v1, 0x3f

    const-string v5, "com.ktcs.whowho"

    aput-object v5, v2, v1

    const/16 v1, 0x40

    const-string v5, "com.kt.apptong"

    aput-object v5, v2, v1

    const/16 v1, 0x41

    const-string v5, "com.mtelo.ktAPP"

    aput-object v5, v2, v1

    const/16 v1, 0x42

    const-string v5, "com.kt.bellringolleh"

    aput-object v5, v2, v1

    const/16 v1, 0x43

    const-string v5, "com.kt.mpay"

    aput-object v5, v2, v1

    const/16 v1, 0x44

    const-string v5, "com.kt.aljjapackplus"

    aput-object v5, v2, v1

    const/16 v1, 0x45

    const-string v5, "com.lguplus.appstore"

    aput-object v5, v2, v1

    const/16 v1, 0x46

    const-string v5, "com.uplus.onphone"

    aput-object v5, v2, v1

    const/16 v1, 0x47

    const-string v5, "com.lguplus.mobile.cs"

    aput-object v5, v2, v1

    const/16 v1, 0x48

    const-string v5, "lg.uplusbox"

    aput-object v5, v2, v1

    const/16 v1, 0x49

    const-string v5, "com.lgu.app.appbundle"

    aput-object v5, v2, v1

    const/16 v1, 0x4a

    const-string v5, "lgt.call"

    aput-object v5, v2, v1

    const/16 v1, 0x4b

    const-string v5, "com.mnet.app"

    aput-object v5, v2, v1

    const/16 v1, 0x4c

    const-string v5, "com.lguplus.usimsvcm"

    aput-object v5, v2, v1

    const/16 v1, 0x4d

    const-string v5, "com.lguplus.navi"

    aput-object v5, v2, v1

    const/16 v1, 0x4e

    const-string v5, "com.lguplus.paynow"

    aput-object v5, v2, v1

    const/16 v1, 0x4f

    const-string v5, "com.uplus.movielte"

    aput-object v5, v2, v1

    const/16 v1, 0x50

    aput-object v3, v2, v1

    const/16 v1, 0x51

    const-string v3, "com.lguplus.ltealive"

    aput-object v3, v2, v1

    const/16 v1, 0x52

    const-string v3, "com.uplus.ipagent"

    aput-object v3, v2, v1

    const/16 v1, 0x53

    const-string v3, "com.lguplus.homeiot"

    aput-object v3, v2, v1

    const/16 v1, 0x54

    const-string v3, "com.uplus.baseballhdtv"

    aput-object v3, v2, v1

    const/16 v1, 0x55

    const-string v3, "com.lgu"

    aput-object v3, v2, v1

    const/16 v1, 0x56

    const-string v3, "com.lgt.tmoney"

    aput-object v3, v2, v1

    const/16 v1, 0x57

    const-string v3, "com.lguplus.smartotp"

    aput-object v3, v2, v1

    const/16 v1, 0x58

    const-string v3, "net.daum.android.map"

    aput-object v3, v2, v1

    const/16 v1, 0x59

    const-string v3, "com.sds.mms.ui"

    aput-object v3, v2, v1

    const/16 v1, 0x5a

    const-string v3, "com.navitime.local.naviwalk"

    aput-object v3, v2, v1

    const/16 v1, 0x5b

    const-string v3, "jp.id_credit_sp.android"

    aput-object v3, v2, v1

    const/16 v1, 0x5c

    const-string v3, "jp.id_credit_sp.android.devappli"

    aput-object v3, v2, v1

    const/16 v1, 0x5d

    const-string v3, "com.nttdocomo.android.dpoint"

    aput-object v3, v2, v1

    const/16 v1, 0x5e

    const-string v3, "com.nttdocomo.android.voicetranslation"

    aput-object v3, v2, v1

    const/16 v1, 0x5f

    const-string v3, "com.nttdocomo.android.moneyrecord"

    aput-object v3, v2, v1

    const/16 v1, 0x60

    const-string v3, "com.kddi.android.videopass"

    aput-object v3, v2, v1

    const/16 v1, 0x61

    const-string v3, "com.nttdocomo.android.photocollection"

    aput-object v3, v2, v1

    const/16 v1, 0x62

    const-string v3, "com.android.systemui"

    aput-object v3, v2, v1

    const/16 v1, 0x63

    const-string v3, "com.sec.sprint.wfcstub"

    aput-object v3, v2, v1

    const/16 v1, 0x64

    const-string v3, "com.sec.sprint.wfc"

    aput-object v3, v2, v1

    const/16 v1, 0x65

    const-string v3, "com.oculus.horizon"

    aput-object v3, v2, v1

    const/16 v1, 0x66

    const-string v5, "com.samsung.android.app.watchmanager"

    aput-object v5, v2, v1

    const/16 v1, 0x67

    const-string v5, "com.samsung.android.spay"

    aput-object v5, v2, v1

    const/16 v1, 0x68

    const-string v5, "com.sec.android.easyMover"

    aput-object v5, v2, v1

    const/16 v1, 0x69

    const-string v5, "com.samsung.android.wms"

    aput-object v5, v2, v1

    const/16 v1, 0x6a

    const-string v5, "com.samsung.android.gear360manager"

    aput-object v5, v2, v1

    const/16 v1, 0x6b

    const-string v5, "com.samsung.android.samsunggear360manager"

    aput-object v5, v2, v1

    const/16 v1, 0x6c

    const-string v5, "com.samsung.android.video360"

    aput-object v5, v2, v1

    const/16 v1, 0x6d

    const-string v5, "com.samsung.android.app.vrsetupwizard"

    aput-object v5, v2, v1

    const/16 v1, 0x6e

    aput-object v3, v2, v1

    const/16 v1, 0x6f

    const-string v3, "com.samsung.android.game.gamehome"

    aput-object v3, v2, v1

    const/16 v1, 0x70

    const-string v3, "com.samsung.android.globalroaming"

    aput-object v3, v2, v1

    const/16 v1, 0x71

    const-string v3, "com.samsung.android.visionintelligence"

    aput-object v3, v2, v1

    const/16 v1, 0x72

    const-string v3, "com.samsung.android.oneconnect"

    aput-object v3, v2, v1

    const/16 v1, 0x73

    const-string v3, "com.samsung.android.knox.analytics.uploader"

    aput-object v3, v2, v1

    sput-object v2, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackages:[Ljava/lang/String;

    .line 1627
    const-string v5, "com.android.chrome"

    const-string v6, "com.google.android.apps"

    const-string v7, "com.google.android.apps.plus"

    const-string v8, "com.google.android.apps.docs"

    const-string v9, "com.google.android.gm"

    const-string v10, "com.google.android.googlequicksearchbox"

    const-string v11, "com.google.android.talk"

    const-string v12, "com.google.android.apps.maps"

    const-string v13, "com.google.android.apps.books"

    const-string v14, "com.google.android.play.games"

    const-string v15, "com.google.android.music"

    const-string v16, "com.google.android.videos"

    const-string v17, "com.google.android.apps.magazines"

    const-string v18, "com.google.android.youtube"

    const-string v19, "com.samsung.android.app.memo"

    const-string v20, "com.sec.keystringscreen"

    const-string v21, "com.infraware.polarisoffice5"

    const-string v22, "com.microsoft.office.excel"

    const-string v23, "com.microsoft.office.powerpoint"

    const-string v24, "com.microsoft.office.word"

    const-string v25, "com.hancom.androidpc.viewer.launcher"

    const-string v26, "com.hancom.office.editor"

    const-string v27, "com.whatsapp"

    const-string v28, "com.tencent.mm"

    const-string v29, "com.facebook.katana"

    const-string v30, "com.facebook.orca"

    const-string v31, "com.instagram.android"

    const-string v32, "com.skype.raider"

    const-string v33, "com.microsoft.office.onenote"

    const-string v34, "com.microsoft.skydrive"

    const-string v35, "com.samsung.android.contacts"

    const-string v36, "com.sec.android.app.myfiles"

    const-string v37, "com.sec.android.gallery3d"

    const-string v38, "com.samsung.android.app.notes"

    const-string v39, "com.samsung.android.calendar"

    const-string v40, "com.samsung.android.email.provider"

    const-string v41, "com.sec.android.app.camera"

    const-string v42, "com.sec.android.app.sbrowser"

    filled-new-array/range {v5 .. v42}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->approvedPackages:[Ljava/lang/String;

    .line 1669
    const-string v5, "com.samsung.mdmtest1"

    const-string v6, "com.samsung.mdmtest2"

    const-string v7, "com.samsung.edmtest"

    const-string v8, "com.samsung.edmtest1"

    const-string v9, "com.samsung.edmtest2"

    const-string v10, "com.samsung.containertool"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->mdmPackages:[Ljava/lang/String;

    .line 1911
    const-string v1, "android"

    const-string v2, "com.samsung.knox.securefolder"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->skipPackagesListForNotification:Ljava/util/List;

    .line 2054
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    .line 2055
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->pmInstanceLock:Ljava/lang/Object;

    .line 3405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    .line 3406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    .line 3407
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/samsung/android/knox/SemPersonaManager;->EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;

    .line 3408
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.knox.bluetooth"

    const-string v5, "com.sec.knox.bluetooth.BluetoothFileTransfer"

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3410
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.simplesharing"

    const-string v3, "com.samsung.android.app.simplesharing.dialog.RelayActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3411
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.enterprise.knox.express.WelcomeActivity"

    invoke-direct {v0, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3412
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.enterprise.knox.express.WelcomeActivityII"

    invoke-direct {v0, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3415
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->CLONE_TO_KNOX_PROFILE:Ljava/util/Set;

    .line 3416
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/knox/ISemPersonaManager;

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput-object p2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    .line 622
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    .line 623
    return-void
.end method

.method public static greylist appliedPasswordPolicy(I)Z
    .locals 4
    .param p0, "userId"    # I

    .line 3341
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3342
    return v1

    .line 3344
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3346
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->appliedPasswordPolicy(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3347
    :catch_0
    move-exception v0

    .line 3348
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "appliedPasswordPolicy failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3351
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method private static greylist checkContainerType(I)Z
    .locals 9
    .param p0, "flag"    # I

    .line 990
    const-string v0, ":"

    .line 991
    .local v0, "USER_DELIMITER":Ljava/lang/String;
    const-string v1, ","

    .line 992
    .local v1, "INFO_DELIMITER":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 994
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 995
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 996
    .local v3, "arr":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 997
    aget-object v5, v3, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 998
    .local v5, "info":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 999
    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1000
    .local v7, "flags":I
    and-int v8, p0, v7

    if-lez v8, :cond_0

    return v6

    .line 996
    .end local v5    # "info":[Ljava/lang/String;
    .end local v7    # "flags":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1004
    .end local v3    # "arr":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private static greylist checkContainerType(II)Z
    .locals 11
    .param p0, "containerId"    # I
    .param p1, "flag"    # I

    .line 970
    const-string v0, ":"

    .line 971
    .local v0, "USER_DELIMITER":Ljava/lang/String;
    const-string v1, ","

    .line 972
    .local v1, "INFO_DELIMITER":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 974
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 975
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 976
    .local v4, "arr":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 977
    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 978
    .local v6, "info":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 979
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 980
    .local v7, "id":I
    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 981
    .local v9, "flags":I
    if-ne v7, p0, :cond_0

    and-int v10, p1, v9

    if-lez v10, :cond_0

    .line 982
    return v8

    .line 976
    .end local v6    # "info":[Ljava/lang/String;
    .end local v7    # "id":I
    .end local v9    # "flags":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 986
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_1
    return v3
.end method

.method public static greylist clearAttributes(II)Z
    .locals 3
    .param p0, "userId"    # I
    .param p1, "attr"    # I

    .line 2405
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2407
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->clearAttributes(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2408
    :catch_0
    move-exception v0

    .line 2409
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "clearAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2413
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist createChangeCredentialIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;
    .locals 3
    .param p0, "userid"    # I
    .param p1, "target"    # Landroid/content/IntentSender;

    .line 2656
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.CHANGE_CREDENTIAL_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2657
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "unlaunchable_reason"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2658
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2659
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2660
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxCorePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2662
    return-object v0
.end method

.method public static greylist createLockdownIntent(I)Landroid/content/Intent;
    .locals 2
    .param p0, "userid"    # I

    .line 2674
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.LOCKDOWN_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2675
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2676
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2677
    const-string v1, "com.samsung.android.knox.containercore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2679
    return-object v0
.end method

.method public static greylist createSwitchProfileIntent(I)Landroid/content/Intent;
    .locals 2
    .param p0, "userid"    # I

    .line 2639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.ACTION_SWITCH_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2640
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2641
    const-string v1, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2642
    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2643
    return-object v0
.end method

.method public static greylist drawKnoxAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 3319
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/knox/SemPersonaManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/knox/SemPersonaManager$1;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/appwidget/AppWidgetHostView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3337
    return-void
.end method

.method public static whitelist exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1473
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "ERROR | exchangeData is deprecated  // move to knox for contact"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/4 v0, 0x0

    .line 1476
    .local v0, "ret":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RequestProxy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1477
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 1478
    const/4 v1, 0x0

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1481
    :cond_0
    return-object v0
.end method

.method public static greylist getAdminComponentName(I)Landroid/content/ComponentName;
    .locals 3
    .param p0, "containerId"    # I

    .line 2993
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2995
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2996
    :catch_0
    move-exception v0

    .line 2997
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getAdminComponentName failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3001
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist getAgentAdminReceiver()Landroid/content/ComponentName;
    .locals 3

    .line 2545
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.knox.containeragent"

    const-string v2, "com.samsung.android.knox.containeragent.KnoxDeviceAdminReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist getAppSeparationConfig()Landroid/os/Bundle;
    .locals 4

    .line 3028
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3030
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3031
    .local v0, "config":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 3032
    return-object v1

    .line 3034
    :cond_0
    return-object v0

    .line 3035
    .end local v0    # "config":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 3036
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getAppSeparationConfig failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3039
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method public static greylist getAttributes(I)I
    .locals 3
    .param p0, "userId"    # I

    .line 2382
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2384
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getAttributes(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2385
    :catch_0
    move-exception v0

    .line 2386
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2390
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist getComSettings()[Ljava/lang/String;
    .locals 1

    .line 3594
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 3506
    .local p1, "blockedComp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3507
    .local v0, "compArrary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3508
    .local v2, "policy":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3509
    .local v3, "comp":[Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3510
    .end local v2    # "policy":Ljava/lang/String;
    .end local v3    # "comp":[Ljava/lang/String;
    goto :goto_0

    .line 3511
    :cond_0
    return-object v0
.end method

.method private greylist getContainerInfo()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1827
    const-string v0, ":"

    .line 1828
    .local v0, "USER_DELIMITER":Ljava/lang/String;
    const-string v1, ","

    .line 1829
    .local v1, "INFO_DELIMITER":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1830
    .local v2, "existUser":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string/jumbo v3, "persist.sys.knox.userinfo"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1833
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContainerInfo: value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "API test"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1835
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1836
    .local v4, "arr":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 1837
    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1838
    .local v6, "info":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1839
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1840
    .local v7, "userId":I
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1841
    .local v8, "flag":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    .end local v6    # "info":[Ljava/lang/String;
    .end local v7    # "userId":I
    .end local v8    # "flag":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1845
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_1
    return-object v2
.end method

.method public static greylist getContainerName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2959
    const-string v0, "END getContainerName packageName"

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START getContainerName packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", className = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    .line 2962
    .local v1, "service":Lcom/samsung/android/knox/ISemPersonaManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2963
    return-object v2

    .line 2967
    :cond_0
    :try_start_0
    const-string v3, "android"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.android.internal.app.ForwardIntentToManagedProfile4"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2968
    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getSecureFolderName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2976
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    return-object v2

    .line 2971
    :cond_1
    :try_start_1
    invoke-interface {v1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2976
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    return-object v2

    .line 2976
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 2973
    :catch_0
    move-exception v3

    .line 2974
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to call Persona service"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2976
    nop

    .end local v3    # "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    nop

    .line 2979
    return-object v2

    .line 2976
    :goto_0
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    throw v2
.end method

.method public static greylist getCustomBadgeForCustomContainer(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/util/Pair;
    .locals 5
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "density"    # I
    .param p2, "locContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1995
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x1

    .line 1997
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1995
    if-eqz v0, :cond_0

    .line 1996
    const-string v0, "com.samsung.knox.securefolder"

    .line 1997
    .local v0, "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080574

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 1999
    .end local v0    # "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2000
    new-instance v0, Landroid/util/Pair;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080c1d

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2003
    :cond_1
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static greylist getCustomResource(ILjava/lang/String;)[B
    .locals 4
    .param p0, "userId"    # I
    .param p1, "resourceType"    # Ljava/lang/String;

    .line 2735
    const-string v0, "getCustomResource failed"

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2738
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2739
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2743
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->readECFile(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2740
    :cond_1
    :goto_0
    return-object v2

    .line 2746
    .end local v1    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2747
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2744
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2745
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2751
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-object v2
.end method

.method public static greylist getCustomReverseBadgeForCustomContainer(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "density"    # I
    .param p2, "locContext"    # Landroid/content/Context;

    .line 1971
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1972
    .local v0, "userId":I
    if-gtz p1, :cond_0

    .line 1973
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget p1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1976
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1977
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080575

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1978
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1979
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080565

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1981
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080c1e

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getDrawableCustomBadge(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "locContext"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 2798
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2800
    :try_start_0
    const-string v0, "custom-badge-icon"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    .line 2801
    .local v0, "badge":[B
    if-eqz v0, :cond_0

    .line 2802
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2803
    .local v1, "mRes":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 2804
    .local v2, "badgeIcon":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 2808
    .end local v0    # "badge":[B
    .end local v1    # "mRes":Landroid/content/res/Resources;
    .end local v2    # "badgeIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    goto :goto_0

    .line 2806
    :catch_0
    move-exception v0

    .line 2807
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrawableCustomBadge failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2810
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mFloatingConfig"    # Ljava/lang/String;
    .param p1, "mDefaultPkgName"    # Ljava/lang/String;

    .line 1495
    move-object v0, p1

    .line 1498
    .local v0, "mPkgName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1501
    goto :goto_0

    .line 1499
    :catch_0
    move-exception v1

    .line 1500
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getFloatingPackageName failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1502
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private greylist getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 1283
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1286
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public static greylist getKnoxAdminReceiver()Landroid/content/ComponentName;
    .locals 3

    .line 2534
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.knox.containercore"

    const-string v2, "com.samsung.android.knox.containercore.KnoxAdminCommandReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .locals 5

    .line 1018
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1019
    .local v0, "mKnoxInfo":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 1021
    .local v1, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    if-eqz v0, :cond_1e

    .line 1022
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1023
    const-string v2, "28"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1024
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1025
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1026
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1027
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1028
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1029
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1030
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1031
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1032
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1033
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 1034
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1035
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    .line 1036
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1037
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    .line 1038
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1039
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_8

    .line 1040
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1041
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_9

    .line 1042
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_2:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1043
    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_a

    .line 1044
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1045
    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_b

    .line 1046
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1047
    :cond_b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_c

    .line 1048
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1049
    :cond_c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_d

    .line 1050
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1051
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_e

    .line 1052
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1053
    :cond_e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_f

    .line 1054
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1055
    :cond_f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_10

    .line 1056
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1057
    :cond_10
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_11

    .line 1058
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1059
    :cond_11
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_12

    .line 1060
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1061
    :cond_12
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_13

    .line 1062
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_2_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1063
    :cond_13
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_14

    .line 1064
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1065
    :cond_14
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_15

    .line 1066
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1067
    :cond_15
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_16

    .line 1068
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1069
    :cond_16
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_17

    .line 1070
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1071
    :cond_17
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_18

    .line 1072
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1073
    :cond_18
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_19

    .line 1074
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1075
    :cond_19
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_1a

    .line 1076
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1077
    :cond_1a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_1b

    .line 1078
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1079
    :cond_1b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_1e

    .line 1080
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1082
    :cond_1c
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1083
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "mKnoxInfo returns 1.0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1086
    :cond_1d
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "mKnoxInfo is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .line 1090
    :cond_1e
    :goto_0
    return-object v1
.end method

.method public static greylist getKnoxCorePackageName()Ljava/lang/String;
    .locals 1

    .line 2524
    const-string v0, "com.samsung.android.knox.containercore"

    return-object v0
.end method

.method public static greylist getKnoxIcon(I)[B
    .locals 6
    .param p0, "userId"    # I

    .line 2860
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2862
    :cond_0
    const/4 v0, 0x0

    .line 2864
    .local v0, "ui":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 2865
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2866
    .local v4, "i":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, p0, :cond_1

    .line 2867
    move-object v0, v4

    .line 2869
    .end local v4    # "i":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_0

    .line 2872
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    goto :goto_1

    .line 2870
    :catch_0
    move-exception v2

    .line 2871
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Could not getUserInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2873
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_1
    if-nez v0, :cond_3

    .line 2874
    return-object v1

    .line 2875
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2876
    return-object v1

    .line 2877
    :cond_4
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2878
    const-string v2, "com.samsung.knox.securefolder"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1

    .line 2880
    :cond_5
    const-string v2, "com.samsung.android.knox.containeragent"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1
.end method

.method public static greylist getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2890
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2892
    :try_start_0
    const-string v0, "com.samsung.knox.securefolder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "switcher.B2CStoreFilesActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2893
    return-object v1

    .line 2895
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2896
    :catch_0
    move-exception v0

    .line 2897
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getKnoxIcon failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2901
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method public static greylist getKnoxInfo()Landroid/os/Bundle;
    .locals 1

    .line 888
    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 1461
    invoke-static {p0}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .line 1453
    invoke-static {p0, p1}, Lcom/samsung/android/knox/KnoxInfoImpl;->getCachedKnoxInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getNotificationBadge(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/util/Pair;
    .locals 9
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "density"    # I
    .param p2, "locContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 2015
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "custom-badge-icon"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    .line 2016
    .local v0, "badge":[B
    const/4 v1, 0x0

    .line 2017
    .local v1, "rawDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 2018
    .local v2, "resourceId":I
    const/4 v3, 0x0

    .line 2024
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2018
    const/4 v5, 0x1

    .line 2019
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2018
    if-eqz v0, :cond_0

    .line 2019
    new-instance v4, Landroid/util/Pair;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    array-length v8, v0

    invoke-static {v0, v3, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 2021
    :cond_0
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 2022
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 2023
    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNotificationBadge/getUserInfo is null, user id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 2027
    :cond_1
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2028
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1080abc

    invoke-virtual {v4, v7, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2030
    const v2, 0x1060069

    .line 2031
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2032
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 2033
    :cond_2
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2034
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 2036
    :cond_3
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method public static greylist getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 3132
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3134
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3135
    :catch_0
    move-exception v0

    .line 3136
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getPersonaCacheValue failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3139
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getPersonaName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "personaId"    # I

    .line 1881
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1882
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1886
    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1887
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda0;-><init>(I)V

    const-string v3, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    .line 1889
    .local v1, "profile_name":Ljava/lang/String;
    return-object v1

    .line 1883
    .end local v0    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    .end local v1    # "profile_name":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getWorkName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;
    .locals 2

    .line 2059
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v0, :cond_1

    .line 2060
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->pmInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2061
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v1, :cond_0

    .line 2062
    const-string/jumbo v1, "persona"

    .line 2063
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2062
    invoke-static {v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    .line 2065
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2067
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v0
.end method

.method public static greylist getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2045
    if-eqz p0, :cond_0

    .line 2046
    const-string/jumbo v0, "persona"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 2047
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2048
    return-object v0

    .line 2051
    .end local v0    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1486
    const-class v0, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v0

    .line 1487
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v1, :cond_0

    .line 1488
    const-string/jumbo v1, "rcp"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemRemoteContentManager;

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 1490
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1491
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0

    .line 1490
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static greylist getRestriction(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 3668
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRestriction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist getSecureFolderId(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 907
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    .line 908
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v0, :cond_0

    .line 909
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get SemPersonaManagerService in getSecureFolderId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/16 v1, -0x514

    return v1

    .line 913
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    .line 914
    .local v1, "personaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 915
    .local v3, "tempPersonaId":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 916
    .local v5, "personaId":Ljava/lang/Integer;
    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SecureFolder personaId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/high16 v7, 0x20000

    invoke-static {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 918
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 919
    move-object v3, v5

    .line 920
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 921
    move-object v3, v5

    .line 923
    .end local v5    # "personaId":Ljava/lang/Integer;
    :cond_2
    goto :goto_0

    .line 924
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_4

    const/16 v2, -0x515

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    return v2
.end method

.method public static greylist getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 5
    .param p0, "userId"    # I

    .line 2271
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2273
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 2274
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2275
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p0, :cond_1

    .line 2276
    return-object v3

    .line 2278
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_0

    .line 2281
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    goto :goto_1

    .line 2279
    :catch_0
    move-exception v0

    .line 2280
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not getUserInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2283
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    return-object v1
.end method

.method private static greylist getWorkName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 2691
    :try_start_0
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2692
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    const-string v2, "Core.RESOLVER_WORK_TAB"

    new-instance v3, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2694
    .local v1, "profile_name":Ljava/lang/String;
    return-object v1

    .line 2695
    .end local v0    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    .end local v1    # "profile_name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2696
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2699
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist getWorkProfileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 2683
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2684
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    const-string v3, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    .line 2686
    .local v1, "profile_name":Ljava/lang/String;
    return-object v1
.end method

.method public static greylist hideMultiWindows(I)V
    .locals 3
    .param p0, "containerId"    # I

    .line 3150
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3152
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->hideMultiWindows(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3155
    goto :goto_0

    .line 3153
    :catch_0
    move-exception v0

    .line 3154
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "hideMultiWindows failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3157
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static greylist hideScrim()V
    .locals 2

    .line 3235
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "KNOX_UNBUNDLING::deprecated api = hideScrim()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    return-void
.end method

.method public static greylist isAppSeparationUserId(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 3044
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3045
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3046
    .local v1, "uInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3047
    const/4 v2, 0x1

    return v2

    .line 3049
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static greylist isContainerCorePackageUID(I)Z
    .locals 3
    .param p0, "uid"    # I

    .line 2602
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2604
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isContainerCorePackageUID(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2605
    :catch_0
    move-exception v0

    .line 2606
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "isContainerCorePackageUID error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2609
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isContainerService(Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "name"    # Landroid/content/ComponentName;

    .line 2556
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2557
    const/4 v0, 0x1

    return v0

    .line 2559
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getAgentAdminReceiver()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static greylist isContainerService(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .line 2571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2572
    .local v0, "uid":I
    const/16 v1, 0x1482

    .line 2574
    .local v1, "KNOXCORE_UID":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x1482

    if-ne v2, v3, :cond_0

    .line 2575
    const/4 v2, 0x1

    return v2

    .line 2579
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2581
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isContainerService(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 2582
    :catch_0
    move-exception v2

    .line 2583
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "isContainerService error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2587
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static greylist isContainerServicebyUID(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 2598
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isContainerCorePackageUID(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist isDarDualEncrypted(I)Z
    .locals 4
    .param p0, "userId"    # I

    .line 1162
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1163
    return v1

    .line 1166
    :cond_0
    invoke-static {p0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1167
    return v2

    .line 1170
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object v0

    .line 1171
    .local v0, "currentState":Lcom/samsung/android/knox/dar/ddar/fsm/State;
    sget-object v3, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static whitelist isDarDualEncryptionEnabled(I)Z
    .locals 3
    .param p0, "userId"    # I

    .line 1151
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1152
    .local v0, "ui":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1153
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v2, v2, 0x6000

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1155
    :cond_1
    return v1
.end method

.method public static greylist isDeviceOrProfileOwnerEnabled()Z
    .locals 3

    .line 1341
    const-string/jumbo v0, "persist.sys.knox.device_owner"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1342
    .local v0, "isDoEnabled":Z
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(I)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static greylist isDoEnabled(I)Z
    .locals 2
    .param p0, "userId"    # I

    .line 936
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 937
    return v0

    .line 939
    :cond_0
    const-string/jumbo v1, "persist.sys.knox.device_owner"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist isDualAppId(I)Z
    .locals 1
    .param p0, "userId"    # I

    .line 3674
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    return v0
.end method

.method public static greylist isDualDARCustomCrypto(I)Z
    .locals 4
    .param p0, "userId"    # I

    .line 1193
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1194
    .local v0, "ui":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1195
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v3, 0x4000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1197
    :cond_1
    return v1
.end method

.method public static greylist isDualDARNativeCrypto(I)Z
    .locals 4
    .param p0, "userId"    # I

    .line 1182
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1183
    .local v0, "ui":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1184
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v3, 0x2000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1186
    :cond_1
    return v1
.end method

.method public static greylist isExternalStorageEnabled(I)Z
    .locals 3
    .param p0, "containerId"    # I

    .line 3075
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3077
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isExternalStorageEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3078
    :catch_0
    move-exception v0

    .line 3079
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "isExternalStorageEnabled failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3083
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isKioskModeEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1445
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isKnoxIcon(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 2713
    const-string v0, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2715
    return v1

    .line 2718
    :cond_0
    const-string v0, "com.samsung.knox.securefolder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "switcher.B2CStoreFilesActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2719
    return v1

    .line 2721
    :cond_1
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2722
    if-eqz p1, :cond_2

    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2723
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2722
    :goto_0
    return v1

    .line 2725
    :cond_3
    return v2
.end method

.method public static whitelist isKnoxId(I)Z
    .locals 2
    .param p0, "userId"    # I

    .line 958
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 959
    return v0

    .line 962
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 963
    return v0

    .line 966
    :cond_1
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method public static greylist isKnoxProfileActivePasswordSufficientForParent(I)Z
    .locals 3
    .param p0, "userId"    # I

    .line 3291
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3293
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isKnoxProfileActivePasswordSufficientForParent(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3294
    :catch_0
    move-exception v0

    .line 3295
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "isKnoxProfileActivePasswordSufficientForParent failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3298
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isKnoxVersionSupported(I)Z
    .locals 2
    .param p0, "version"    # I

    .line 1374
    if-lez p0, :cond_0

    .line 1375
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 1376
    .local v0, "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->getVersionNumber()I

    move-result v1

    if-lt v1, p0, :cond_0

    .line 1377
    const/4 v1, 0x1

    return v1

    .line 1380
    .end local v0    # "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z
    .locals 2
    .param p0, "version"    # Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .line 1388
    if-eqz p0, :cond_0

    .line 1389
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 1390
    .local v0, "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1391
    const/4 v1, 0x1

    return v1

    .line 1394
    .end local v0    # "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isKnoxWindowExist(III)Z
    .locals 3
    .param p0, "containerId"    # I
    .param p1, "visibleFlag"    # I
    .param p2, "stackId"    # I

    .line 3095
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3097
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->isKnoxWindowExist(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3098
    :catch_0
    move-exception v0

    .line 3099
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "isKnoxWindowExist failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3103
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isMoveFilesToContainerAllowed(I)Z
    .locals 3
    .param p0, "userId"    # I

    .line 3446
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3448
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3449
    :catch_0
    move-exception v0

    .line 3450
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3453
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isMoveFilesToOwnerAllowed(I)Z
    .locals 3
    .param p0, "userId"    # I

    .line 3458
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3460
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3461
    :catch_0
    move-exception v0

    .line 3462
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3465
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isNotificationSanitizePolicyForSF(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1917
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1918
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->skipPackagesListForNotification:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1919
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dont sanitize notification for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    return v1

    .line 1922
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    const-string v2, "Notifications"

    const-string v3, "knox-sanitize-data"

    invoke-virtual {v0, p1, v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1923
    .local v0, "policy":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    return v1

    .line 1924
    :cond_2
    return v1
.end method

.method public static greylist isPasswordSufficientAfterKnoxProfileUnification(I)Z
    .locals 3
    .param p0, "profileUser"    # I

    .line 3303
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3305
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isPasswordSufficientAfterKnoxProfileUnification(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3306
    :catch_0
    move-exception v0

    .line 3307
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "isPasswordSufficientAfterKnoxProfileUnification failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3310
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist isPkgAllowedToListenKnoxNoti(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 2204
    const-string v0, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    const/4 v1, 0x0

    .line 2206
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v1, v3

    .line 2207
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v3

    if-nez v4, :cond_2

    .line 2209
    move-object v4, v0

    .line 2210
    .local v4, "enforcedPermission":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2211
    sget-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 2212
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "com.samsung.permission.READ_KNOX_NOTIFICATION not granted"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2215
    :cond_0
    sget-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2216
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "com.samsung.permission.READ_KNOX_NOTIFICATION granted"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_1
    return v3

    .line 2220
    .end local v4    # "enforcedPermission":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_4

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    .line 2221
    sget-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2222
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Application under /system partition"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2223
    :cond_3
    return v3

    .line 2220
    :cond_4
    :goto_0
    nop

    .line 2227
    nop

    .line 2228
    return v2

    .line 2225
    :catch_0
    move-exception v0

    .line 2226
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method

.method public static greylist isPremiumContainer(I)Z
    .locals 1
    .param p0, "userId"    # I

    .line 953
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isSamsungWorkspace(I)Z
    .locals 2
    .param p0, "userId"    # I

    .line 2294
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2295
    return v0

    .line 2297
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2298
    const/4 v0, 0x1

    return v0

    .line 2300
    :cond_1
    return v0
.end method

.method public static greylist isSecureFolderId()Z
    .locals 2

    .line 1954
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1955
    .local v0, "userId":I
    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v1

    return v1
.end method

.method public static whitelist isSecureFolderId(I)Z
    .locals 1
    .param p0, "id"    # I

    .line 1964
    const/high16 v0, 0x20000

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method private greylist isSecureFolderMetaDataEnabled()Z
    .locals 4

    .line 2105
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.knox.securefolder"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2106
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    return v0

    .line 2107
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2108
    .local v2, "b":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    const-string v3, "com.samsung.knox.securefolder.enable"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 2109
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "b":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2110
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "please add proper log here"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2112
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static final greylist isSepLiteDevice(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1100
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1415
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1418
    .local v0, "versionInfo":Landroid/os/Bundle;
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1419
    return v3

    .line 1422
    :cond_0
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "2.0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1424
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1425
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1426
    return v3

    .line 1427
    :cond_1
    const-string v1, "move-file-to-container"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1428
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v1

    return v1

    .line 1429
    :cond_2
    const-string v1, "move-file-to-owner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1430
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v1

    return v1

    .line 1435
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic greylist lambda$getPersonaName$0(I)Ljava/lang/String;
    .locals 1
    .param p0, "personaId"    # I

    .line 1887
    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic greylist lambda$getWorkName$2(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 2692
    const v0, 0x1040f7f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic greylist lambda$getWorkProfileName$1(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 2684
    const v0, 0x1040f84

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist processProfileNameChange(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "c"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .line 1131
    const-string v0, "caller_id_to_show_"

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processProfileNameChange is called for userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1135
    .local v1, "isCallerToShow":I
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processProfileNameChange isCallerToShow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1137
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processProfileNameChange update is done..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    nop

    .end local v1    # "isCallerToShow":I
    goto :goto_0

    .line 1139
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processProfileNameChange ignoring for userId- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :goto_0
    goto :goto_1

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static greylist readECFile(Ljava/lang/String;)[B
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2813
    const/4 v0, 0x0

    .line 2814
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 2815
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 2817
    .local v2, "bytes":[B
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 2822
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 2823
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 2825
    nop

    .line 2827
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 2828
    .local v3, "length":J
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_3

    .line 2833
    long-to-int v5, v3

    new-array v2, v5, [B

    .line 2835
    const/4 v5, 0x0

    .line 2836
    .local v5, "offset":I
    const/4 v6, 0x0

    .line 2837
    .local v6, "numRead":I
    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_1

    array-length v7, v2

    sub-int/2addr v7, v5

    .line 2838
    invoke-virtual {v1, v2, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    move v6, v7

    if-ltz v7, :cond_1

    .line 2839
    add-int/2addr v5, v6

    goto :goto_0

    .line 2842
    :cond_1
    array-length v7, v2

    if-lt v5, v7, :cond_2

    .line 2847
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 2849
    .end local v3    # "length":J
    .end local v5    # "offset":I
    .end local v6    # "numRead":I
    return-object v2

    .line 2843
    .restart local v3    # "length":J
    .restart local v5    # "offset":I
    .restart local v6    # "numRead":I
    :cond_2
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The file was not completely read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2829
    .end local v5    # "offset":I
    .end local v6    # "numRead":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "The file is too big"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2818
    .end local v3    # "length":J
    :cond_4
    :goto_1
    return-object v2
.end method

.method public static greylist refreshLockTimer(I)V
    .locals 3
    .param p0, "userId"    # I

    .line 3059
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3061
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->refreshLockTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3064
    goto :goto_0

    .line 3062
    :catch_0
    move-exception v0

    .line 3063
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "refreshLockTimer failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3066
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static greylist removePartialContainer()V
    .locals 0

    .line 3024
    return-void
.end method

.method public static greylist sendContainerEvent(Landroid/content/Context;II)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "userHandle"    # I
    .param p2, "containerEvent"    # I

    .line 2428
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 2429
    return-void
.end method

.method public static greylist sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "userHandle"    # I
    .param p2, "containerEvent"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .line 2433
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2434
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    .line 2435
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 2437
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2439
    :goto_0
    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2440
    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2443
    if-eqz p3, :cond_1

    .line 2444
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2446
    :cond_1
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2447
    return-void
.end method

.method public static greylist setAttributes(II)Z
    .locals 3
    .param p0, "userId"    # I
    .param p1, "attr"    # I

    .line 2357
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2359
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v0, p1, :cond_0

    .line 2360
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAttributes DualDAR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setAttributes(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2363
    :catch_0
    move-exception v0

    .line 2364
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2368
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist setCustomName(ILjava/lang/String;)Z
    .locals 4
    .param p0, "userId"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 2761
    const/4 v0, 0x0

    .line 2762
    .local v0, "ret":Z
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2764
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setProfileName(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2767
    goto :goto_0

    .line 2765
    :catch_0
    move-exception v1

    .line 2766
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getCustomName failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2769
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public static greylist setFocusedLauncherId(I)V
    .locals 3
    .param p0, "userId"    # I

    .line 2317
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2319
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->setFocusedLauncherId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2322
    goto :goto_0

    .line 2320
    :catch_0
    move-exception v0

    .line 2321
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFocusedLauncherId failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2324
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static greylist setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "installed"    # Z
    .param p2, "userId"    # I

    .line 1114
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1116
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPackageSettingInstalled failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1121
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist setPersonalModeName(ILjava/lang/String;)Z
    .locals 4
    .param p0, "userId"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 2779
    const/4 v0, 0x0

    .line 2780
    .local v0, "ret":Z
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2783
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setPersonalModeName(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2786
    goto :goto_0

    .line 2784
    :catch_0
    move-exception v1

    .line 2785
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getPersonalModeName failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2788
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public static greylist shouldBlockUsbInterface(ILandroid/hardware/usb/UsbInterface;)Z
    .locals 6
    .param p0, "userId"    # I
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;

    .line 3165
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 3166
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Knox:: claimInterface : request for user -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and interface reuqest -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    const/16 v0, 0xdc

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3168
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3169
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    const/4 v1, 0x0

    .line 3170
    .local v1, "allowed":Z
    if-eqz v0, :cond_0

    .line 3172
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3173
    .local v2, "callingUid":I
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Knox:: claimInterface : calling isPackageAllowedToAccessExternalSdcard for user- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and callingUid-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    invoke-interface {v0, p0, v2}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v3

    move v1, v3

    .line 3175
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Knox:: claimInterface : calling isPackageAllowedToAccessExternalSdcard allowed-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3178
    .end local v2    # "callingUid":I
    goto :goto_0

    .line 3176
    :catch_0
    move-exception v2

    .line 3177
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "doBind(): isPackageAllowedToAccessExternalSdcard on EDMProxy failed! "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3180
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 3181
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Knox:: claimInterface : blocking claim interface request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3182
    const/4 v2, 0x1

    return v2

    .line 3186
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v1    # "allowed":Z
    :catch_1
    move-exception v0

    .line 3187
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "claimInterface exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3188
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    nop

    .line 3189
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist shouldForwardSettingIntentForSecureFolder(Ljava/lang/String;)Z
    .locals 6
    .param p0, "action"    # Ljava/lang/String;

    .line 896
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SETTINGS_INTENT_FORWARD_BLOCKLIST_FOR_SF:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 897
    .local v4, "blockedAction":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    .line 896
    .end local v4    # "blockedAction":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 899
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 3114
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3116
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3117
    :catch_0
    move-exception v0

    .line 3118
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updatePersonaCache failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3121
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist CMFALock(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 3600
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMFALock userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 3603
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->CMFALock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3606
    goto :goto_0

    .line 3604
    :catch_0
    move-exception v0

    .line 3605
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call CMFALock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3608
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist CMFAUnLock(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 3612
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMFAUnLock userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 3615
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->CMFAUnLock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3618
    goto :goto_0

    .line 3616
    :catch_0
    move-exception v0

    .line 3617
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call CMFAUnLock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3620
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist addAppPackageNameToAllowList(ILjava/util/List;)V
    .locals 3
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3008
    .local p2, "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3010
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->addAppPackageNameToAllowList(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3013
    goto :goto_0

    .line 3011
    :catch_0
    move-exception v0

    .line 3012
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "addAppPackageNameToAllowList failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3015
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "serviceIntent"    # Landroid/content/Intent;
    .param p3, "conn"    # Landroid/content/ServiceConnection;
    .param p4, "flags"    # I
    .param p5, "targetUser"    # Landroid/os/UserHandle;

    .line 3206
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3208
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    .line 3209
    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    .line 3208
    invoke-virtual {v0, p3, v1, p4}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v7

    .line 3210
    .local v7, "sd":Landroid/app/IServiceConnection;
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 3211
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    .line 3212
    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    .line 3213
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 3211
    move-object v3, p1

    move-object v6, p2

    move v8, p4

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/ISemPersonaManager;->bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3214
    .end local v7    # "sd":Landroid/app/IServiceConnection;
    :catch_0
    move-exception v0

    .line 3215
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3219
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist broadcastIntentThroughPersona(Landroid/content/Intent;I)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 2254
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 2256
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->broadcastIntentThroughPersona(Landroid/content/Intent;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2257
    :catch_0
    move-exception v0

    .line 2258
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not broadcastIntentThroughPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2261
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist createConfirmProfileCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    .line 2621
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2622
    const/4 v0, 0x0

    return-object v0

    .line 2624
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 2625
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 2626
    const-string v1, "com.samsung.android.knox.intent.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2628
    :cond_1
    return-object v0
.end method

.method public whitelist exists(I)Z
    .locals 1
    .param p1, "containerId"    # I

    .line 1330
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method public whitelist getAllKnoxNamesAndIds(Z)Ljava/util/HashMap;
    .locals 7
    .param p1, "onlyActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2186
    .local v0, "nameandids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 2187
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    .line 2189
    .local v2, "personaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2190
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2191
    .local v4, "personaId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    .end local v4    # "personaId":I
    goto :goto_0

    .line 2195
    :cond_0
    return-object v0
.end method

.method public greylist getContainerName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 2914
    const/4 v0, 0x0

    .line 2917
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2918
    const-string v1, "Secure Folder"

    .line 2919
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.knox.securefolder"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v0, v2

    .line 2920
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 2922
    return-object v1

    .line 2923
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2924
    const-string v1, "Dual Messenger"

    .line 2925
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.da.daagent"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v0, v2

    .line 2926
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 2928
    return-object v1

    .line 2932
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 2930
    :catch_0
    move-exception v0

    .line 2931
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2934
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSepLiteDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2935
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2936
    .local v0, "mUm":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2937
    .local v1, "uInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v2

    .line 2939
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v1    # "uInfo":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_3

    .line 2941
    :try_start_1
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 2942
    :catch_1
    move-exception v0

    .line 2943
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2946
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getContainerTypeForUserId(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 3277
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3278
    .local v0, "uInfo":Landroid/content/pm/UserInfo;
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3279
    const/4 v1, 0x2

    return v1

    .line 3280
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3281
    const/4 v1, 0x3

    return v1

    .line 3282
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3283
    const/4 v1, 0x4

    return v1

    .line 3285
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getCurrentContainerType()I
    .locals 3

    .line 3263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3264
    .local v0, "userId":I
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3265
    .local v1, "uInfo":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3266
    const/4 v2, 0x2

    return v2

    .line 3267
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3268
    const/4 v2, 0x3

    return v2

    .line 3269
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3270
    const/4 v2, 0x4

    return v2

    .line 3272
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public greylist getDualDARProfile()Landroid/os/Bundle;
    .locals 3

    .line 1219
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "getDualDARProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 1222
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getDualDARProfile()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1227
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getExcludeComponentList(ZZ)Ljava/util/ArrayList;
    .locals 5
    .param p1, "fromKnox"    # Z
    .param p2, "isForSecureFolder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 3483
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    .line 3484
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz p1, :cond_0

    .line 3485
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3487
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3490
    :goto_0
    if-eqz p2, :cond_4

    .line 3491
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v1

    .line 3492
    .local v1, "sfId":I
    const-string v2, "blockedcompcommon"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 3493
    .local v2, "blockedCompCommon":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3494
    :cond_1
    if-eqz p1, :cond_3

    .line 3495
    const-string v3, "blockedcompsecurefolder"

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 3496
    .local v3, "blockedCompSecurefolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3497
    .end local v3    # "blockedCompSecurefolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    goto :goto_1

    .line 3498
    :cond_3
    const-string v3, "blockedcompknox"

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 3499
    .local v3, "blockedCompOwner":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3502
    .end local v1    # "sfId":I
    .end local v2    # "blockedCompCommon":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "blockedCompOwner":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    return-object v0
.end method

.method public whitelist getFocusedKnoxId()I
    .locals 1

    .line 1855
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    return v0
.end method

.method public greylist getFocusedLauncherId()I
    .locals 3

    .line 2334
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2336
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getFocusedLauncherId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2337
    :catch_0
    move-exception v0

    .line 2338
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFocusedLauncherId failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2342
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public greylist getFocusedUser()I
    .locals 3

    .line 1863
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 1865
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getFocusedUser()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1866
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFocusedUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1870
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public whitelist getKioskId()I
    .locals 1

    .line 861
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getKnoxId(IZ)I
    .locals 5
    .param p1, "containerType"    # I
    .param p2, "onlyActive"    # Z

    .line 836
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v0

    .line 838
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 840
    :cond_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getKnoxIds not null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 843
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 844
    .local v3, "id":I
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 845
    return v3

    .line 846
    .end local v3    # "id":I
    :cond_1
    goto :goto_0

    .line 847
    :cond_2
    nop

    .line 851
    :goto_1
    return v1

    .line 838
    :cond_3
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getKnoxIds(Z)Ljava/util/List;
    .locals 5
    .param p1, "onlyActiveList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .local v0, "personaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_4

    .line 1303
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 1304
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1307
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1308
    goto :goto_0

    .line 1311
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1312
    :cond_1
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    goto :goto_0

    .line 1317
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    goto :goto_1

    .line 1315
    :catch_0
    move-exception v1

    .line 1316
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not getKnoxIds"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1319
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    return-object v0
.end method

.method public greylist getKnoxNameChangedAsUser(I)Ljava/lang/String;
    .locals 4
    .param p1, "personaId"    # I

    .line 1935
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "We will never get null from ui.name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1937
    .local v0, "ui":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1938
    return-object v1

    .line 1940
    :cond_0
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1941
    .local v2, "name":Ljava/lang/String;
    const-string v3, "KNOX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "KNOX II"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1944
    :cond_1
    return-object v2

    .line 1942
    :cond_2
    :goto_0
    return-object v1
.end method

.method public whitelist getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2123
    .local v0, "returnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_2

    .line 2126
    const/16 v1, 0xe6

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2127
    return-object v0

    .line 2129
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_1

    .line 2131
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 2132
    .local v1, "appUserId":I
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getMoveToKnoxMenuList(I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2133
    .end local v1    # "appUserId":I
    :catch_0
    move-exception v1

    .line 2134
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call Persona service:getMoveToKnoxMenuList"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2137
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    return-object v0

    .line 2124
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "appContext cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist getPersonaUserHasBeenShutdownBefore(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .line 1812
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 1814
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaUserHasBeenShutdownBefore(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1815
    :catch_0
    move-exception v0

    .line 1816
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getUserStateForKnox"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1819
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .line 3517
    :try_start_0
    const-string v0, "Notifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "knox-sanitize-data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3518
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3519
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3520
    .local v1, "userId":I
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_allow_private_notifications"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3521
    .local v2, "settingsVal":I
    if-nez v2, :cond_0

    const-string/jumbo v3, "true"

    goto :goto_0

    :cond_0
    const-string v3, "false"

    :goto_0
    return-object v3

    .line 3524
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "settingsVal":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_2

    .line 3525
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3527
    :cond_2
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "in PersonaPolicyManager, getRCPDataPolicy() is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3531
    goto :goto_1

    .line 3529
    :catch_0
    move-exception v0

    .line 3530
    .local v0, "re":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getRCPDataPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3532
    .end local v0    # "re":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .line 3548
    :try_start_0
    const-string v0, "Notifications"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "knox-sanitize-data"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3549
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_allow_private_notifications"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3550
    .local v0, "settingsVal":I
    if-nez v0, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    return-object v1

    .line 3553
    .end local v0    # "settingsVal":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_2

    .line 3554
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3556
    :cond_2
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "in PersonaPolicyManager, getRCPDataPolicyForUser() is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3560
    goto :goto_1

    .line 3558
    :catch_0
    move-exception v0

    .line 3559
    .local v0, "re":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getRCPDataPolicyForUser, inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3561
    .end local v0    # "re":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getRCPInterface()Landroid/content/IRCPInterface;
    .locals 5

    .line 1352
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "in getRCPInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 1354
    .local v0, "rcpm":Lcom/samsung/android/knox/SemRemoteContentManager;
    const/4 v1, 0x0

    .line 1355
    .local v1, "rcpInterface":Landroid/content/IRCPInterface;
    if-eqz v0, :cond_0

    .line 1357
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v1

    .line 1358
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in getRCPInterface rcpInterface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    return-object v1

    .line 1361
    :cond_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Received getRCPInterface as null from bridge manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3470
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 3472
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3473
    :catch_0
    move-exception v0

    .line 3474
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3477
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist isFOTAUpgrade()Z
    .locals 3

    .line 1268
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 1270
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->isFOTAUpgrade()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get FOTAUpgrade"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1276
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isFotaUpgradeVersionChanged()Z
    .locals 3

    .line 2076
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 2078
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->isFotaUpgradeVersionChanged()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2079
    :catch_0
    move-exception v0

    .line 2080
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get isFotaUpgradeVersionChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2083
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "containerId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 1716
    const/4 v0, 0x0

    .line 1718
    .local v0, "isApprovedPackages":Z
    const/4 v1, 0x0

    if-eqz p3, :cond_12

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "null"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 1722
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1723
    return v1

    .line 1727
    :cond_1
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackages:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1728
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1729
    return v1

    .line 1727
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1733
    :cond_3
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mdmPackages:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 1734
    .restart local v5    # "pkg":Ljava/lang/String;
    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1735
    return v1

    .line 1733
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1740
    :cond_5
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->approvedPackages:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    .line 1741
    .restart local v5    # "pkg":Ljava/lang/String;
    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1742
    const/4 v0, 0x1

    .line 1740
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1747
    :cond_7
    :try_start_0
    const-string v2, "DisallowPackage"

    .line 1748
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 1749
    .local v3, "disallowPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1750
    .restart local v5    # "pkg":Ljava/lang/String;
    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1751
    return v1

    .line 1753
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_8
    goto :goto_3

    .line 1755
    :cond_9
    if-nez v0, :cond_b

    .line 1756
    const-string v4, "AllowPackage"

    move-object v2, v4

    .line 1757
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1758
    .local v4, "allowPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1759
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v6, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_a

    .line 1760
    const/4 v0, 0x1

    .line 1762
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_a
    goto :goto_4

    .line 1766
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "disallowPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "allowPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    goto :goto_5

    .line 1764
    :catch_0
    move-exception v2

    .line 1765
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1769
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    if-nez v0, :cond_10

    .line 1770
    const/4 v2, 0x0

    .line 1772
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v2, v3

    .line 1773
    if-nez v2, :cond_c

    .line 1774
    return v1

    .line 1775
    :cond_c
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1776
    .local v3, "b":Landroid/os/Bundle;
    const/4 v5, 0x1

    if-eqz v3, :cond_d

    const-string v6, "com.samsung.android.multiuser.install_only_owner"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    move v6, v5

    goto :goto_6

    :cond_d
    move v6, v1

    .line 1777
    .local v6, "isOnlyForOwner":Z
    :goto_6
    if-eqz v3, :cond_e

    if-eqz v6, :cond_e

    .line 1778
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isOnlyForOwner() true - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1779
    return v1

    .line 1783
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v6    # "isOnlyForOwner":Z
    :cond_e
    nop

    .line 1785
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_f

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_10

    .line 1787
    :cond_f
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has System flag() true - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    return v1

    .line 1781
    :catch_1
    move-exception v3

    .line 1782
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1

    .line 1793
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_10
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_11

    .line 1795
    :try_start_2
    invoke-interface {v2, p3, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->isPossibleAddAppsToContainer(Ljava/lang/String;I)Z

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return v1

    .line 1796
    :catch_2
    move-exception v2

    .line 1797
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Could not get isPossibleAddAppsToContainer , inside SemPersonaManager with exception:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1800
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_11
    return v1

    .line 1719
    :cond_12
    :goto_7
    return v1
.end method

.method public whitelist isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "containerUserId"    # I
    .param p3, "appPackageName"    # Ljava/lang/String;
    .param p4, "appUserId"    # I

    .line 1691
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1692
    return v0

    .line 1694
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1695
    return v0

    .line 1698
    :cond_1
    if-eqz p4, :cond_2

    .line 1699
    return v0

    .line 1702
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/SemPersonaManager;->isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist isKioskModeEnabled(I)Z
    .locals 1
    .param p1, "containerId"    # I

    .line 878
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isKnoxActivated()Z
    .locals 2

    .line 2093
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public whitelist isKnoxKeyguardShown()Z
    .locals 1

    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isKnoxReachedToMax()Z
    .locals 6

    .line 2148
    const/4 v0, 0x0

    .line 2149
    .local v0, "isReached":Z
    const/4 v1, 0x0

    .line 2150
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2151
    return v3

    .line 2154
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 2158
    nop

    .line 2160
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    goto :goto_1

    .line 2164
    :cond_1
    const/4 v2, 0x0

    .line 2165
    .local v2, "knoxSize":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2166
    .local v5, "ui":Landroid/content/pm/UserInfo;
    nop

    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    .line 2167
    goto :goto_0

    .line 2169
    :cond_2
    if-lt v2, v4, :cond_3

    .line 2170
    const/4 v0, 0x1

    .line 2172
    :cond_3
    return v0

    .line 2161
    .end local v2    # "knoxSize":I
    :cond_4
    :goto_1
    return v3

    .line 2155
    :catch_0
    move-exception v2

    .line 2156
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "getProfiles failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2157
    return v3
.end method

.method public greylist isProfileNameCustomized(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1900
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1902
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfileName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1903
    :catch_0
    move-exception v0

    .line 1904
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call Persona service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1907
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public greylist isShareClipboardDataToContainerAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 3434
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 3436
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isShareClipboardDataToContainerAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3437
    :catch_0
    move-exception v0

    .line 3438
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3441
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isShareClipboardDataToOwnerAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 3422
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 3424
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3425
    :catch_0
    move-exception v0

    .line 3426
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3429
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isUserManaged()Z
    .locals 1

    .line 2098
    nop

    .line 2099
    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderMetaDataEnabled()Z

    move-result v0

    .line 2098
    return v0
.end method

.method public greylist launchPersonaHome(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .line 1251
    const/4 v0, 0x1

    .line 1252
    .local v0, "result":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1253
    const/4 v0, 0x0

    .line 1254
    const/4 p1, 0x0

    .line 1256
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1257
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1258
    const-string v2, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {v2, v1}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1259
    return v0
.end method

.method public greylist lockPersona(I)V
    .locals 2
    .param p1, "personaId"    # I

    .line 1805
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1806
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1807
    const-string v1, "knox.container.proxy.COMMAND_LOCK_PROFILE"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1808
    return-void
.end method

.method public greylist postPwdChangeNotificationForDeviceOwner(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 3657
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3659
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->postPwdChangeNotificationForDeviceOwner(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3662
    goto :goto_0

    .line 3660
    :catch_0
    move-exception v0

    .line 3661
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3664
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 3
    .param p1, "mSystemPersonaObserver"    # Landroid/content/pm/ISystemPersonaObserver;

    .line 1239
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 1241
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not registerSystemPersonaObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1246
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist sendRequestKeyStatus(I)V
    .locals 3
    .param p1, "containerId"    # I

    .line 3240
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3242
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->sendRequestKeyStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3245
    goto :goto_0

    .line 3243
    :catch_0
    move-exception v0

    .line 3244
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendRequestKeyStatus failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3247
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist setAppSeparationDefaultPolicy(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1399
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 1401
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setAppSeparationDefaultPolicy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    goto :goto_0

    .line 1402
    :catch_0
    move-exception v0

    .line 1403
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not call setAppSeparationDefaultPolicy , inside SemPersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1406
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist setDualDARProfile(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "config"    # Landroid/os/Bundle;

    .line 1204
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualDARProfile() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 1207
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setDualDARProfile(Landroid/os/Bundle;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setDualDARProfile Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1212
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public greylist setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 3567
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 3568
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 3570
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "in PersonaPolicyManager, setRCPDataPolicy() is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3574
    goto :goto_0

    .line 3572
    :catch_0
    move-exception v0

    .line 3573
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get setRCPDataPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3575
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 3581
    .local p2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 3583
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3584
    :catch_0
    move-exception v0

    .line 3585
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3588
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist startActivityThroughPersona(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2238
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 2240
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->startActivityThroughPersona(Landroid/content/Intent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2241
    :catch_0
    move-exception v0

    .line 2242
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not startActivityThroughPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2245
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist startCountrySelectionActivity(Z)V
    .locals 3
    .param p1, "isUnified"    # Z

    .line 3635
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 3637
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->startCountrySelectionActivity(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3640
    goto :goto_0

    .line 3638
    :catch_0
    move-exception v0

    .line 3639
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call startCountrySelectionActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3642
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist startTermsActivity()V
    .locals 3

    .line 3646
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 3648
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->startTermsActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3651
    goto :goto_0

    .line 3649
    :catch_0
    move-exception v0

    .line 3650
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call startTermsActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3653
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist updateProfileActivityTimeFromKnox(IJ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "eventTime"    # J

    .line 3624
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 3626
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->updateProfileActivityTimeFromKnox(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3629
    goto :goto_0

    .line 3627
    :catch_0
    move-exception v0

    .line 3628
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3631
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
