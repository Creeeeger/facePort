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

.field public static final greylist APP_SEPARATION_COEXISTENCE_LIST:Ljava/lang/String; = "APP_SEPARATION_COEXISTANCE_LIST"

.field public static final greylist APP_SEPARATION_OUTSIDE:Ljava/lang/String; = "APP_SEPARATION_OUTSIDE"

.field public static final greylist ATTR_HAS_PREMIUM_CONTAINER_LICENSE_ACTIVATED:I = 0x40000000

.field public static final greylist BLOCKED_SHARING_COMP_COMMON:Ljava/lang/String; = "blockedcompcommon"

.field public static final greylist BLOCKED_SHARING_COMP_FOR_OWNER:Ljava/lang/String; = "blockedcompknox"

.field public static final greylist BLOCKED_SHARING_COMP_FOR_SECUREFOLDER:Ljava/lang/String; = "blockedcompsecurefolder"

.field public static final greylist BOOKMARKS:Ljava/lang/String; = "Bookmarks"

.field public static final greylist CALLER_DISPLAY_NAME:Ljava/lang/String; = "caller_display_name"

.field public static final greylist CALLER_PHONE_NUMBER:Ljava/lang/String; = "caller_phone_number"

.field public static final greylist CALLER_PHOTO:Ljava/lang/String; = "caller_photo"

.field public static final greylist CALL_LOG:Ljava/lang/String; = "CallLog"

.field public static final greylist CLIPBOARD:Ljava/lang/String; = "Clipboard"

.field public static final greylist CONTACT_OWNER_ID:Ljava/lang/String; = "contact_owner_id"

.field public static final greylist CONTAINER_COM_TYPE:I = 0x3

.field public static final greylist CONTAINER_CORE_ADMIN_RECEIVER:Ljava/lang/String; = "com.samsung.android.knox.containercore.KnoxAdminCommandReceiver"

.field public static final greylist CONTAINER_CORE_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containercore"

.field public static final greylist CONTAINER_DEFAULT_TYPE:I = 0x1

.field public static final greylist CONTAINER_DESKTOP_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containerdesktop"

.field public static final greylist CONTAINER_LWC_TYPE:I = 0x2

.field public static final whitelist CONTAINER_TYPE_NONE:I = 0x0

.field public static final greylist CONTAINER_TYPE_PREMIUM:I = 0x4

.field public static final greylist CONTAINER_TYPE_PRIME:I = 0x3

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

.field private static final greylist EXTRA_UNLAUNCHABLE_REASON:Ljava/lang/String; = "unlaunchable_reason"

.field private static final greylist FLAG_BASE:I = 0x1

.field public static final greylist FLAG_DUAL_DAR:I = 0x6000000

.field public static final greylist FLAG_DUAL_DAR_CUSTOM_CRYPTO:I = 0x4000000

.field public static final greylist FLAG_DUAL_DAR_SAMSUNG_CRYPTO:I = 0x2000000

.field public static final greylist FLAG_EC_ENABLED:I = 0x10000

.field public static final greylist FLAG_SECURE_FOLDER_CONTAINER:I = 0x2000

.field public static final greylist FOLDERCONTAINER_PKG_NAME:Ljava/lang/String; = "com.sec.knox.foldercontainer"

.field public static final greylist FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final greylist HOME_SCREEN_WALLPAPER:Ljava/lang/String; = "custom-home-screen-wallpaper"

.field public static final greylist ICON_CLASS_FOR_INTENT_FORWARD_TO_PARENT:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToParent"

.field public static final greylist ICON_CLASS_FOR_INTENT_FORWARD_TO_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile"

.field public static final greylist ICON_CLASS_FOR_SECUREFOLDER_FORWARD_TO_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile4"

.field public static final greylist ICON_CLASS_SECUREFOLDER_FILE_STORE:Ljava/lang/String; = "switcher.B2CStoreFilesActivity"

.field public static final greylist IMMEDIATELY_LOCK_TIMEOUT:I = -0x2

.field public static final greylist INTENT_ACCESS_EXT_SDCARD:Ljava/lang/String; = "com.sec.knox.container.access.extsdcard"

.field public static final greylist INTENT_ACTION_CHANGE_PASSWORD:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CHANGE_PASSWORD"

.field public static final greylist INTENT_ACTION_CONFIRM_DEVICE_CREDENTIAL_WITH_USER:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

.field public static final greylist INTENT_ACTION_CONTAINER_REMOVAL_STARTED:Ljava/lang/String; = "com.sec.knox.container.action.containerremovalstarted"

.field public static final greylist INTENT_ACTION_CREATE_SECURE_FOLDER:Ljava/lang/String; = "com.sec.knox.action.CREATE_SECURE_FOLDER"

.field public static final greylist INTENT_ACTION_KNOX_LICENSE_ACATIVATE_DIALOG_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_LICENSE_ACATIVATE_DIALOG_INTERNAL"

.field public static final greylist INTENT_ACTION_LAUNCH_INFO:Ljava/lang/String; = "com.sec.knox.container.action.launchinfo"

.field public static final greylist INTENT_ACTION_NFC_POLICY:Ljava/lang/String; = "com.samsung.android.knox.nfc.policy"

.field public static final greylist INTENT_ACTION_NOTIFY_APPSEPARATION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFY_APPSEPARATION_INTERNAL"

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

.field public static final greylist KA_SCHEMA_VERSION:I = 0x7

.field public static final greylist KNOX_CONFIG_CONTAINER_VERSION:I = 0x1e

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

.field public static final greylist PROPERTY_SECURE_FOLDER_AVAILABLE:Ljava/lang/String; = "persist.sys.knox.secure_folder_state_available"

.field public static final greylist PROPERTY_UCM_WPC_PROVISIONED:Ljava/lang/String; = "persist.sys.knox.UCM_WPC"

.field public static final greylist REMOVE_OP_SUCCESS:I = 0x0

.field public static final greylist SANITIZE_DATA_LOCKSCREEN:Ljava/lang/String; = "knox-sanitize-data-lockscreen"

.field public static final greylist SECUREFOLDER_ICON_CLASS_SWITCH_TO_HOME:Ljava/lang/String; = "com.samsung.knox.securefolder.switcher.SwitchToPersonalIcon"

.field public static final greylist SECUREFOLDER_PACKAGE:Ljava/lang/String; = "com.samsung.knox.securefolder"

.field public static greylist SECURE_FOLDER_NAME:Ljava/lang/String; = null

.field public static final greylist SEC_PRODUCT_FEATURE_KNOX_SUPPORT_CONTAINER:Z = true

.field private static final greylist SEC_PRODUCT_FEATURE_KNOX_SUPPORT_DUAL_DAR:Z = true

.field public static final greylist SEC_PRODUCT_FEATURE_KNOX_SUPPORT_MDM:Z = true

.field private static final greylist SEC_PRODUCT_FEATURE_KNOX_SUPPORT_UCS:Z = true

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
    .locals 118

    const-string v0, "SemPersonaManager"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    const-string v0, "secure-folder"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SECURE_FOLDER_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mMoveToInfo:Ljava/util/ArrayList;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string v1, "com.sec.hearingadjust"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    const-string v2, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    const-string v3, "android.settings.USAGE_ACCESS_SETTINGS"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->SETTINGS_INTENT_FORWARD_BLOCKLIST_FOR_SF:[Ljava/lang/String;

    nop

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v116, "com.samsung.android.oneconnect"

    const-string v117, "com.samsung.android.knox.analytics.uploader"

    const-string v4, "com.android.settings"

    const-string v5, "com.sec.knox.knoxsetupwizardclient"

    const-string v6, "com.sec.chaton"

    const-string v7, "com.sec.pcw"

    const-string v8, "com.samsung.android.knox.containercore"

    const-string v9, "com.sec.watchon.phone"

    const-string v10, "com.sec.android.automotive.drivelink"

    const-string v11, "com.samsung.android.app.lifetimes"

    const-string v12, "com.sec.android.app.shealth"

    const-string v13, "com.sec.android.app.voicenote"

    const-string v14, "com.sec.android.app.kidshome"

    const-string v15, "com.sec.knox.app.container"

    const-string v16, "com.sec.knox.containeragent"

    const-string v17, "com.sec.android.app.samsungapps"

    const-string v18, "tv.peel.smartremote"

    const-string v19, "com.skt.prod.phonebook"

    const-string v20, "com.sec.enterprise.knox.express"

    const-string v21, "com.google.android.apps.walletnfcrel"

    const-string v22, "com.samsung.android.voc"

    const-string v23, "com.skt.tservice"

    const-string v24, "com.sktelecom.minit"

    const-string v25, "com.skt.prod.dialer"

    const-string v26, "com.skt.skaf.A000VODBOX"

    const-string v27, "com.skt.skaf.OA00050017"

    const-string v28, "com.skt.skaf.A000Z00040"

    const-string v29, "com.skt.skaf.OA00026910"

    const-string v30, "com.skt.skaf.l001mtm091"

    const-string v31, "com.skt.prod.phonebook"

    const-string v32, "com.skt.smartbill"

    const-string v33, "com.skt.tbagplus"

    const-string v34, "com.sktelecom.tguard"

    const-string v35, "com.skt.tdatacoupon"

    const-string v36, "com.skb.btvmobile"

    const-string v37, "com.iloen.melon"

    const-string v38, "com.nate.android.portalmini"

    const-string v39, "com.tms"

    const-string v40, "com.skmc.okcashbag.home_google"

    const-string v41, "com.elevenst"

    const-string v42, "com.elevenst.deals"

    const-string v43, "com.moent.vas"

    const-string v44, "com.skmnc.gifticon"

    const-string v45, "com.skt.tmaphot"

    const-string v46, "com.skplanet.mbuzzer"

    const-string v47, "com.skt.tgift"

    const-string v48, "com.sktelecom.tsmartpay"

    const-string v49, "com.cyworld.camera"

    const-string v50, "com.kt.android.showtouch"

    const-string v51, "com.kt.wificm"

    const-string v52, "com.ktshow.cs"

    const-string v53, "com.kt.olleh.storefront"

    const-string v54, "com.kth.kshop"

    const-string v55, "com.show.greenbill"

    const-string v56, "com.estsoft.alyac"

    const-string v57, "com.kt.accessory"

    const-string v58, "kt.navi"

    const-string v59, "com.olleh.android.oc2"

    const-string v60, "com.kt.ollehfamilybox"

    const-string v61, "com.kt.otv"

    const-string v62, "com.olleh.webtoon"

    const-string v63, "com.kt.shodoc"

    const-string v64, "com.ktmusic.geniemusic"

    const-string v65, "com.ktcs.whowho"

    const-string v66, "com.kt.apptong"

    const-string v67, "com.mtelo.ktAPP"

    const-string v68, "com.kt.bellringolleh"

    const-string v69, "com.kt.mpay"

    const-string v70, "com.kt.aljjapackplus"

    const-string v71, "com.lguplus.appstore"

    const-string v72, "com.uplus.onphone"

    const-string v73, "com.lguplus.mobile.cs"

    const-string v74, "lg.uplusbox"

    const-string v75, "com.lgu.app.appbundle"

    const-string v76, "lgt.call"

    const-string v77, "com.mnet.app"

    const-string v78, "com.lguplus.usimsvcm"

    const-string v79, "com.lguplus.navi"

    const-string v80, "com.lguplus.paynow"

    const-string v81, "com.uplus.movielte"

    const-string v82, "com.estsoft.alyac"

    const-string v83, "com.lguplus.ltealive"

    const-string v84, "com.uplus.ipagent"

    const-string v85, "com.lguplus.homeiot"

    const-string v86, "com.uplus.baseballhdtv"

    const-string v87, "com.lgu"

    const-string v88, "com.lgt.tmoney"

    const-string v89, "com.lguplus.smartotp"

    const-string v90, "net.daum.android.map"

    const-string v91, "com.sds.mms.ui"

    const-string v92, "com.navitime.local.naviwalk"

    const-string v93, "jp.id_credit_sp.android"

    const-string v94, "jp.id_credit_sp.android.devappli"

    const-string v95, "com.nttdocomo.android.dpoint"

    const-string v96, "com.nttdocomo.android.voicetranslation"

    const-string v97, "com.nttdocomo.android.moneyrecord"

    const-string v98, "com.kddi.android.videopass"

    const-string v99, "com.nttdocomo.android.photocollection"

    const-string v100, "com.android.systemui"

    const-string v101, "com.sec.sprint.wfcstub"

    const-string v102, "com.sec.sprint.wfc"

    const-string v103, "com.oculus.horizon"

    const-string v104, "com.samsung.android.app.watchmanager"

    const-string v105, "com.samsung.android.spay"

    const-string v106, "com.sec.android.easyMover"

    const-string v107, "com.samsung.android.wms"

    const-string v108, "com.samsung.android.gear360manager"

    const-string v109, "com.samsung.android.samsunggear360manager"

    const-string v110, "com.samsung.android.video360"

    const-string v111, "com.samsung.android.app.vrsetupwizard"

    const-string v112, "com.oculus.horizon"

    const-string v113, "com.samsung.android.game.gamehome"

    const-string v114, "com.samsung.android.globalroaming"

    const-string v115, "com.samsung.android.visionintelligence"

    filled-new-array/range {v3 .. v117}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackages:[Ljava/lang/String;

    const-string v38, "com.sec.android.app.camera"

    const-string v39, "com.sec.android.app.sbrowser"

    const-string v2, "com.android.chrome"

    const-string v3, "com.google.android.apps"

    const-string v4, "com.google.android.apps.plus"

    const-string v5, "com.google.android.apps.docs"

    const-string v6, "com.google.android.gm"

    const-string v7, "com.google.android.googlequicksearchbox"

    const-string v8, "com.google.android.talk"

    const-string v9, "com.google.android.apps.maps"

    const-string v10, "com.google.android.apps.books"

    const-string v11, "com.google.android.play.games"

    const-string v12, "com.google.android.music"

    const-string v13, "com.google.android.videos"

    const-string v14, "com.google.android.apps.magazines"

    const-string v15, "com.google.android.youtube"

    const-string v16, "com.samsung.android.app.memo"

    const-string v17, "com.sec.keystringscreen"

    const-string v18, "com.infraware.polarisoffice5"

    const-string v19, "com.microsoft.office.excel"

    const-string v20, "com.microsoft.office.powerpoint"

    const-string v21, "com.microsoft.office.word"

    const-string v22, "com.hancom.androidpc.viewer.launcher"

    const-string v23, "com.hancom.office.editor"

    const-string v24, "com.whatsapp"

    const-string v25, "com.tencent.mm"

    const-string v26, "com.facebook.katana"

    const-string v27, "com.facebook.orca"

    const-string v28, "com.instagram.android"

    const-string v29, "com.skype.raider"

    const-string v30, "com.microsoft.office.onenote"

    const-string v31, "com.microsoft.skydrive"

    const-string v32, "com.samsung.android.contacts"

    const-string v33, "com.sec.android.app.myfiles"

    const-string v34, "com.sec.android.gallery3d"

    const-string v35, "com.samsung.android.app.notes"

    const-string v36, "com.samsung.android.calendar"

    const-string v37, "com.samsung.android.email.provider"

    filled-new-array/range {v2 .. v39}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->approvedPackages:[Ljava/lang/String;

    const-string v6, "com.samsung.edmtest2"

    const-string v7, "com.samsung.containertool"

    const-string v2, "com.samsung.mdmtest1"

    const-string v3, "com.samsung.mdmtest2"

    const-string v4, "com.samsung.edmtest"

    const-string v5, "com.samsung.edmtest1"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->mdmPackages:[Ljava/lang/String;

    const-string v1, "android"

    const-string v2, "com.samsung.knox.securefolder"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->skipPackagesListForNotification:Ljava/util/List;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->pmInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static greylist appliedPasswordPolicy(I)Z
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->appliedPasswordPolicy(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "appliedPasswordPolicy failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method private static greylist checkContainerType(I)Z
    .locals 9

    const-string v0, ":"

    const-string v1, ","

    const-string v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    and-int v8, p0, v7

    if-lez v8, :cond_0

    return v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private static greylist checkContainerType(II)Z
    .locals 11

    const-string v0, ":"

    const-string v1, ","

    const-string v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v7, p0, :cond_0

    and-int v10, p1, v9

    if-lez v10, :cond_0

    return v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static greylist clearAttributes(II)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->clearAttributes(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "clearAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist createChangeCredentialIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.CHANGE_CREDENTIAL_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "unlaunchable_reason"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxCorePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static greylist createLockdownIntent(I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.LOCKDOWN_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.containercore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static greylist drawKnoxAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/knox/SemPersonaManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/knox/SemPersonaManager$1;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/appwidget/AppWidgetHostView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static whitelist exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "ERROR | exchangeData is deprecated  // move to knox for contact"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RequestProxy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public static greylist getAdminComponentName(I)Landroid/content/ComponentName;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getAdminComponentName failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist getAppSeparationConfig()Landroid/os/Bundle;
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getAppSeparationConfig failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1
.end method

.method public static greylist getAttributes(I)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getAttributes(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

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

    const-string v0, ":"

    const-string v1, ","

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "persist.sys.knox.userinfo"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

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

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static greylist getContainerName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

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

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

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

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getSecureFolderName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    :try_start_1
    invoke-interface {v1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to call Persona service"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    return-object v2

    :goto_0
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method public static greylist getCustomBadgeForCustomContainer(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/util/Pair;
    .locals 5
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

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.knox.securefolder"

    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080b17

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/Pair;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080954

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/Pair;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080d18

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
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

    const-string v0, "getCustomResource failed"

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->readECFile(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_2
    :goto_1
    return-object v2
.end method

.method public static greylist getCustomReverseBadgeForCustomContainer(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-gtz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget p1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805c5

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805b4

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080953

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080d19

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getDrawableCustomBadge(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "custom-badge-icon"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrawableCustomBadge failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getFloatingPackageName failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private greylist getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public static greylist getKnoxAdminReceiver()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.knox.containercore"

    const-string v2, "com.samsung.android.knox.containercore.KnoxAdminCommandReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_11_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    return-object v1

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    return-object v0
.end method

.method public static greylist getKnoxCorePackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.knox.containercore"

    return-object v0
.end method

.method public static greylist getKnoxForesightService()Lcom/samsung/android/knox/IBasicCommand;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxForesightService()Lcom/samsung/android/knox/IBasicCommand;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist getKnoxIcon(I)[B
    .locals 6

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, p0, :cond_1

    move-object v0, v4

    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Could not getUserInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "com.samsung.knox.securefolder"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1

    :cond_5
    invoke-static {v1, v1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1
.end method

.method public static greylist getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "com.samsung.knox.securefolder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "switcher.B2CStoreFilesActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getKnoxIcon failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1
.end method

.method public static greylist getKnoxInfo()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/KnoxInfoImpl;->getCachedKnoxInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getNotificationBadge(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/util/Pair;
    .locals 9
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

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "custom-badge-icon"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    const/4 v6, 0x0

    if-nez v3, :cond_1

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

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_1
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1080bb9

    invoke-virtual {v4, v7, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x10600df

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :cond_2
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x10806ab

    invoke-virtual {v4, v7, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x10600e0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :cond_3
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method public static greylist getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getPersonaCacheValue failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getPersonaName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const-string v0, "com.sec.android.app.desktoplauncher"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda0;-><init>(I)V

    const-string v3, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getWorkName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->pmInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v1, :cond_0

    const-string v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v0
.end method

.method public static greylist getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "persona"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v1, :cond_0

    const-string v1, "rcp"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemRemoteContentManager;

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0

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

    const/4 v0, 0x1

    return v0
.end method

.method public static greylist getSecureFolderIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "secure_folder_image_name"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "com.samsung.knox.securefolder"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const/16 v3, 0x20

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    nop

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getSecureFolderIcon : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public static greylist getSecureFolderId(Landroid/content/Context;)I
    .locals 9

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get SemPersonaManagerService in getSecureFolderId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x514

    return v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "personaId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/high16 v7, 0x20000

    invoke-static {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_1

    move-object v3, v5

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v6, v7, :cond_2

    move-object v3, v5

    :cond_2
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

    :cond_3
    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_5

    const/16 v2, -0x515

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    return v2
.end method

.method public static greylist getUCMDAREncryption()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "getUCMDAREncryption"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.sys.knox.UCM_WPC"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p0, :cond_1

    return-object v3

    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not getUserInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1
.end method

.method private static greylist getWorkName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    const-string v2, "Core.RESOLVER_WORK_TAB"

    new-instance v3, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist getWorkProfileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    const-string v3, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist hideMultiWindows(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->hideMultiWindows(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "hideMultiWindows failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static greylist hideScrim()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "KNOX_UNBUNDLING::deprecated api = hideScrim()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static greylist isAppSeparationUserId(I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method private static greylist isContainerCorePackageUID(I)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isContainerCorePackageUID(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "isContainerCorePackageUID error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isContainerService(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static greylist isContainerService(Landroid/content/Context;I)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x1482

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x1482

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isContainerService(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "isContainerService error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static greylist isContainerServicebyUID(I)Z
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isContainerCorePackageUID(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist isDarDualEncrypted(I)Z
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object v0

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
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v3, 0x6000000

    and-int/2addr v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static greylist isDeviceOrProfileOwnerEnabled()Z
    .locals 3

    const-string v0, "persist.sys.knox.device_owner"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

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

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string v1, "persist.sys.knox.device_owner"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist isDualAppId(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    return v0
.end method

.method public static greylist isDualDARCustomCrypto(I)Z
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static greylist isDualDARNativeCrypto(I)Z
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static greylist isExternalStorageEnabled(I)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isExternalStorageEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "isExternalStorageEnabled failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isKioskModeEnabled(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isKnoxIcon(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "com.samsung.knox.securefolder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "switcher.B2CStoreFilesActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method public static whitelist isKnoxId(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method public static greylist isKnoxProfileActivePasswordSufficientForParent(I)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isKnoxProfileActivePasswordSufficientForParent(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "isKnoxProfileActivePasswordSufficientForParent failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isKnoxVersionSupported(I)Z
    .locals 1

    if-lez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->getVersionNumber()I

    move-result v0

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist isKnoxWindowExist(III)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->isKnoxWindowExist(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "isKnoxWindowExist failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isMoveFilesToContainerAllowed(I)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isMoveFilesToOwnerAllowed(I)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isNotificationSanitizePolicyForSF(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->skipPackagesListForNotification:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

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

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notifications_master_activation"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "masterSettingsVal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static greylist isPasswordSufficientAfterKnoxProfileUnification(I)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isPasswordSufficientAfterKnoxProfileUnification(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "isPasswordSufficientAfterKnoxProfileUnification failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist isPkgAllowedToListenKnoxNoti(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v1, v3

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v3

    if-nez v4, :cond_2

    move-object v4, v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "com.samsung.permission.READ_KNOX_NOTIFICATION not granted"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "com.samsung.permission.READ_KNOX_NOTIFICATION granted"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3

    :cond_2
    if-eqz v1, :cond_4

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    sget-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Application under /system partition"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    nop

    nop

    return v2

    :catch_0
    move-exception v0

    return v2
.end method

.method public static greylist isPremiumContainer(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isSamsungWorkspace(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0
.end method

.method public static greylist isSecureFolderId()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v1

    return v1
.end method

.method public static whitelist isSecureFolderId(I)Z
    .locals 1

    const/high16 v0, 0x20000

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method private greylist isSecureFolderMetaDataEnabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.knox.securefolder"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

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

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "please add proper log here"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static final greylist isSepLiteDevice(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "2.0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const-string v1, "move-file-to-container"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v1

    return v1

    :cond_2
    const-string v1, "move-file-to-owner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v1

    return v1

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public static greylist isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    return v0
.end method

.method static synthetic greylist lambda$getPersonaName$0(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic greylist lambda$getWorkName$2(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x10410c2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic greylist lambda$getWorkProfileName$1(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x10410c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist logDpmsKA(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->logDpmsKA(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "logDpmsKA"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static greylist processProfileNameChange(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "caller_id_to_show_"

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processProfileNameChange is called for userId = "

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

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processProfileNameChange isCallerToShow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "processProfileNameChange update is done..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processProfileNameChange ignoring for userId- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static greylist readECFile(Ljava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    nop

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_3

    long-to-int v5, v3

    new-array v2, v5, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_1

    array-length v7, v2

    sub-int/2addr v7, v5

    invoke-virtual {v1, v2, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    move v6, v7

    if-ltz v7, :cond_1

    add-int/2addr v5, v6

    goto :goto_0

    :cond_1
    array-length v7, v2

    if-lt v5, v7, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v2

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

    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "The file is too big"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    :goto_1
    return-object v2
.end method

.method public static greylist refreshLockTimer(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->refreshLockTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "refreshLockTimer failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static greylist removePartialContainer()V
    .locals 0

    return-void
.end method

.method public static greylist sendContainerEvent(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method public static greylist sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static greylist setAttributes(II)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v0, p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "setAttributes DualDAR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setAttributes(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "setAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist setCustomName(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setProfileName(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getCustomName failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public static greylist setFocusedLauncherId(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->setFocusedLauncherId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "setFocusedLauncherId failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static greylist setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "setPackageSettingInstalled failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist setPersonalModeName(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setPersonalModeName(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getPersonalModeName failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public static greylist shouldBlockUsbInterface(ILandroid/hardware/usb/UsbInterface;)Z
    .locals 6

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

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

    const/16 v0, 0xdc

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

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

    invoke-interface {v0, p0, v2}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v3

    move v1, v3

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

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "doBind(): isPackageAllowedToAccessExternalSdcard on EDMProxy failed! "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Knox:: claimInterface : blocking claim interface request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x1

    return v2

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "claimInterface exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    nop

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist shouldForwardSettingIntentForSecureFolder(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SETTINGS_INTENT_FORWARD_BLOCKLIST_FOR_SF:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "updatePersonaCache failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist CMFALock(I)V
    .locals 3

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

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->CMFALock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call CMFALock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist CMFAUnLock(I)V
    .locals 3

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

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->CMFAUnLock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call CMFAUnLock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist addAppPackageNameToAllowList(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->addAppPackageNameToAllowList(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "addAppPackageNameToAllowList failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 13

    move-object v1, p0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v11, p4

    int-to-long v3, v11

    move-object/from16 v12, p3

    :try_start_1
    invoke-virtual {v0, v12, v2, v3, v4}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object v8

    iget-object v0, v1, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p2

    :try_start_2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v3

    iget-object v0, v1, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v5

    iget-object v0, v1, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    move-object v4, p1

    move-object v7, p2

    move/from16 v9, p4

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/knox/ISemPersonaManager;->bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, p2

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v2, p2

    move-object/from16 v12, p3

    move/from16 v11, p4

    :goto_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    move-object v2, p2

    move-object/from16 v12, p3

    move/from16 v11, p4

    const/4 v0, 0x0

    return v0
.end method

.method public greylist broadcastIntentThroughPersona(Landroid/content/Intent;I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->broadcastIntentThroughPersona(Landroid/content/Intent;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not broadcastIntentThroughPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist createConfirmProfileCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .locals 2

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.samsung.android.knox.intent.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public whitelist exists(I)Z
    .locals 1

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method public whitelist getAllKnoxNamesAndIds(Z)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

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

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public greylist getContainerName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "Secure Folder"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.knox.securefolder"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v0, v2

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Dual Messenger"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.da.daagent"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v0, v2

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    return-object v1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSepLiteDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getContainerTypeForUserId(I)I
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    return v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    return v1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getCurrentContainerType()I
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    return v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    return v2

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    return v2

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public greylist getDualDARProfile()Landroid/os/Bundle;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "getDualDARProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getDualDARProfile()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getExcludeComponentList(ZZ)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v1

    const-string v2, "blockedcompcommon"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_2

    const-string v3, "blockedcompsecurefolder"

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    goto :goto_0

    :cond_2
    const-string v3, "blockedcompknox"

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    return-object v0
.end method

.method public whitelist getFocusedKnoxId()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public greylist getFocusedLauncherId()I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getFocusedLauncherId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFocusedLauncherId failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public greylist getFocusedUser()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getFocusedUser()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFocusedUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public greylist getFocusedUserId()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    return v0
.end method

.method public whitelist getKnoxId(IZ)I
    .locals 5

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getKnoxIds not null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

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

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    goto :goto_0

    :cond_2
    nop

    :goto_1
    return v1

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not getKnoxIds"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-object v0
.end method

.method public greylist getKnoxNameChangedAsUser(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "We will never get null from ui.name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string v3, "KNOX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "KNOX II"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public whitelist getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    const/16 v1, 0xe6

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getMoveToKnoxMenuList(I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call Persona service:getMoveToKnoxMenuList"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "appContext cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist getPersonaUserHasBeenShutdownBefore(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaUserHasBeenShutdownBefore(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getUserStateForKnox"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getRCPInterface()Landroid/content/IRCPInterface;
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "in getRCPInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string v1, "rcp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v1

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

    return-object v1

    :cond_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Received getRCPInterface as null from bridge manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getSeparatedAppsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getSeparatedAppsList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception has occured in getSeparatedAppsList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public greylist getUCMProfile()Landroid/os/Bundle;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "getUCMProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getUCMProfile()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getUpdatedListWithAppSeparation(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getUpdatedListWithAppSeparation(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception has occurred in getUpdatedListWithAppSeparationList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public greylist hasLicensePermission(ILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->hasLicensePermission(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call hasLicensePermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isAppSeparationPresent()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->isAppSeparationPresent()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception has occured in isAppSeparationPresent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isFOTAUpgrade()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->isFOTAUpgrade()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get FOTAUpgrade"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isFotaUpgradeVersionChanged()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->isFotaUpgradeVersionChanged()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get isFotaUpgradeVersionChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isInSeparatedAppsOnly(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isInSeparatedAppsOnly(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception has occurred in isInSeparatedAppsOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public greylist isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

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

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackages:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mdmPackages:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->approvedPackages:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v0, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :try_start_0
    const-string v2, "DisallowPackage"

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    return v1

    :cond_8
    goto :goto_3

    :cond_9
    if-nez v0, :cond_b

    const-string v4, "AllowPackage"

    move-object v2, v4

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_a

    const/4 v0, 0x1

    :cond_a
    goto :goto_4

    :cond_b
    goto :goto_5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-nez v0, :cond_10

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v2, v3

    if-nez v2, :cond_c

    return v1

    :cond_c
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

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

    :goto_6
    if-eqz v3, :cond_e

    if-eqz v6, :cond_e

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

    return v1

    :cond_e
    nop

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_f

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_10

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

    return v1

    :catch_1
    move-exception v3

    return v1

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_11

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p3, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->isPossibleAddAppsToContainer(Ljava/lang/String;I)Z

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return v1

    :catch_2
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Could not get isPossibleAddAppsToContainer , inside SemPersonaManager with exception:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    return v1

    :cond_12
    :goto_7
    return v1
.end method

.method public greylist isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/SemPersonaManager;->isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist isKioskModeEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isKnoxActivated()Z
    .locals 2

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

    const/4 v0, 0x0

    return v0
.end method

.method public greylist isKnoxReachedToMax()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    nop

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lt v2, v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v3

    :catch_0
    move-exception v2

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "getProfiles failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public greylist isProfileNameCustomized(I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfileName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call Persona service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public greylist isShareClipboardDataToContainerAllowed(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isShareClipboardDataToContainerAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isShareClipboardDataToOwnerAllowed(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isUserManaged()Z
    .locals 1

    nop

    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderMetaDataEnabled()Z

    move-result v0

    return v0
.end method

.method public greylist launchPersonaHome(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    const/4 p1, 0x0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {v2, v1}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return v0
.end method

.method public greylist lockPersona(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "knox.container.proxy.COMMAND_LOCK_PROFILE"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public greylist postPwdChangeNotificationForDeviceOwner(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->postPwdChangeNotificationForDeviceOwner(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not registerSystemPersonaObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist resetUCMProfile()I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "resetUCMProfile() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->resetUCMProfile()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "resetUCMProfile Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public greylist sendKnoxForesightBroadcast(Landroid/content/Intent;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->sendKnoxForesightBroadcast(Landroid/content/Intent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call sendKnoxForesightBroadcast"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist sendRequestKeyStatus(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->sendRequestKeyStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "sendRequestKeyStatus failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist setAppSeparationDefaultPolicy(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setAppSeparationDefaultPolicy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not call setAppSeparationDefaultPolicy , inside SemPersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist setDualDARProfile(Landroid/os/Bundle;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualDARProfile() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setDualDARProfile(Landroid/os/Bundle;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "setDualDARProfile Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public greylist setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "in PersonaPolicyManager, setRCPDataPolicy() is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get setRCPDataPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setUCMProfile(Landroid/os/Bundle;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUCMProfile() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setUCMProfile(Landroid/os/Bundle;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "setUCMProfile Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public greylist startActivityThroughPersona(Landroid/content/Intent;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->startActivityThroughPersona(Landroid/content/Intent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not startActivityThroughPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist startCountrySelectionActivity(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->startCountrySelectionActivity(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call startCountrySelectionActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist startTermsActivity()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->startTermsActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call startTermsActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist updateProfileActivityTimeFromKnox(IJ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->updateProfileActivityTimeFromKnox(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
