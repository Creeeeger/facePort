.class public Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_UCM_CONFIG_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_CONFIG_STATUS"

.field public static final ACTION_UCM_KEYGUARD_SET:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_KEYGUARD_SET"

.field public static final ACTION_UCM_KEYGUARD_UNSET:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_KEYGUARD_UNSET"

.field public static final ACTION_UCM_NOTIFY_EVENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_NOTIFY_EVENT"

.field public static final ACTION_UCM_REFRESH_AGENT_DONE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_REFRESH_AGENT_DONE"

.field public static final APPLET_FORM_FACTOR_ESE:Ljava/lang/String; = "eSE"

.field public static final APPLET_FORM_FACTOR_ESE1:Ljava/lang/String; = "eSE1"

.field public static final APPLET_FORM_FACTOR_SD:Ljava/lang/String; = "SD"

.field public static final APPLET_FORM_FACTOR_SD1:Ljava/lang/String; = "SD1"

.field public static final APPLET_FORM_FACTOR_SIM:Ljava/lang/String; = "SIM"

.field public static final APPLET_FORM_FACTOR_SIM1:Ljava/lang/String; = "SIM1"

.field public static final APPLET_FORM_FACTOR_SIM2:Ljava/lang/String; = "SIM2"

.field public static final BUNDLE_CA_CERT_TYPE:Ljava/lang/String; = "cert_type"

.field public static final BUNDLE_EXTRA_ACCESS_TYPE:Ljava/lang/String; = "access_type"

.field public static final BUNDLE_EXTRA_ADD_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "add_pin_cache_exemptlist"

.field public static final BUNDLE_EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final BUNDLE_EXTRA_ALLOW_WIFI:Ljava/lang/String; = "allow_wifi"

.field public static final BUNDLE_EXTRA_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field public static final BUNDLE_EXTRA_CREDENTIAL_STORAGE:Ljava/lang/String; = "credential_storage"

.field public static final BUNDLE_EXTRA_ENFORCE_LOCK_TYPE_DIRECT_SET:Ljava/lang/String; = "enforce_lock_type_direct_set"

.field public static final BUNDLE_EXTRA_ESE_STORAGE_OPTION:Ljava/lang/String; = "ese_storage_option"

.field public static final BUNDLE_EXTRA_EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final BUNDLE_EXTRA_ODE_CA_CERT:Ljava/lang/String; = "ode_ca_cert"

.field public static final BUNDLE_EXTRA_PACKAGE:Ljava/lang/String; = "package_name"

.field public static final BUNDLE_EXTRA_PIN_CACHE:Ljava/lang/String; = "pin_cache"

.field public static final BUNDLE_EXTRA_PIN_CACHE_TIMEOUT_MINUTES:Ljava/lang/String; = "timeout"

.field public static final BUNDLE_EXTRA_REMOVE_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "remove_pin_cache_exemptlist"

.field public static final BUNDLE_EXTRA_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final BUNDLE_EXTRA_STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final BUNDLE_EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field public static final ERROR_UCM_ALIAS_ALREADY_EXIST:I = -0x14

.field public static final ERROR_UCM_ALIAS_EMPTY:I = -0x10

.field public static final ERROR_UCM_ALIAS_NOT_EXIST:I = -0xe

.field public static final ERROR_UCM_APP_SIGNATURE_INVALID:I = -0x12

.field public static final ERROR_UCM_CALLER_NOT_ALLOWED_TO_MANAGE_STORAGE:I = -0x17

.field public static final ERROR_UCM_CALLER_NOT_CONTAINER_OWNER:I = -0x18

.field public static final ERROR_UCM_FAILURE:I = -0x1

.field public static final ERROR_UCM_INSTALL_DELEGATION_NOT_ALLOWED:I = -0x1d

.field public static final ERROR_UCM_INVALID_ACCESS_TYPE:I = -0xf

.field public static final ERROR_UCM_INVALID_AUTH_TYPE:I = -0x11

.field public static final ERROR_UCM_INVALID_CERTIFICATE:I = -0x19

.field public static final ERROR_UCM_INVALID_EXEMPT_TYPE:I = -0x15

.field public static final ERROR_UCM_INVALID_STORAGE_OPTION:I = -0x13

.field public static final ERROR_UCM_KEYGUARD_CONFIGURED:I = -0x1a

.field public static final ERROR_UCM_MISSING_ARGUMENT:I = -0xb

.field public static final ERROR_UCM_PASSWORD_QUALITY_NOT_UNSPECIFIED:I = -0x1c

.field public static final ERROR_UCM_PASSWORD_UNSUPPORTED_STORAGE:I = -0x1b

.field public static final ERROR_UCM_STORAGE_ALREADY_CONFIGURED:I = -0xa

.field public static final ERROR_UCM_STORAGE_DELEGATION_NOT_ALLOWED:I = -0x1e

.field public static final ERROR_UCM_STORAGE_NOT_ENABLED:I = -0xc

.field public static final ERROR_UCM_STORAGE_NOT_MANAGEABLE:I = -0x16

.field public static final ERROR_UCM_STORAGE_NOT_VALID:I = -0xd

.field public static EVENT_PLUGIN_APPLET_DELETE_COMPLETED:I = 0x3f3

.field public static EVENT_PLUGIN_APPLET_DELETE_FAILED:I = 0x3f4

.field public static EVENT_PLUGIN_APPLET_INSTALL_COMPLETED:I = 0x3e9

.field public static EVENT_PLUGIN_APPLET_INSTALL_FAILED:I = 0x3ea

.field public static EVENT_PLUGIN_APPLET_UPDATE_COMPLETED:I = 0x3fd

.field public static EVENT_PLUGIN_APPLET_UPDATE_FAILED:I = 0x3fe

.field public static final EVENT_PLUGIN_LICENSE_EXPIRED:I = 0x2

.field public static final EVENT_PLUGIN_UNINSTALLED:I = 0x1

.field public static KEY_PLUGIN_EVENT:Ljava/lang/String; = "key_plugin_event"

.field public static final PIN_CACHE_KEYGUARD_TIMEOUT:I = 0x2

.field public static final PIN_CACHE_TIMEOUT:I = 0x1

.field public static final RESET_APPLET_FORM_FACTOR:Ljava/lang/String; = "reset"

.field public static final SCP_SD:Ljava/lang/String; = "SCP_SD"

.field public static TAG:Ljava/lang/String; = "UniversalCredentialManager"

.field public static final UCM_ACCESS_TYPE_CERTIFICATE:I = 0x68

.field public static final UCM_ACCESS_TYPE_INSTALL:I = 0x6b

.field public static final UCM_ACCESS_TYPE_STORAGE:I = 0x67

.field public static final UCM_APPLET_DELETE:Ljava/lang/String; = "DELETE_APPLET"

.field public static final UCM_APPLET_ID:Ljava/lang/String; = "applet_id"

.field public static final UCM_APPLET_INSTALL_LOCATION:Ljava/lang/String; = "applet_location"

.field public static final UCM_APPLET_UPGRADE:Ljava/lang/String; = "UPGRADE_APPLET"

.field public static final UCM_AUTH_TYPE_LOCKED:I = 0x64

.field public static final UCM_AUTH_TYPE_NONE:I = 0x69

.field public static final UCM_EXEMPT_TYPE_AUTH:I = 0x6a

.field public static final UCM_STORAGE_OPTION_INSIDE:I = 0x65

.field public static final UCM_STORAGE_OPTION_OUTSIDE:I = 0x66

.field public static final UCM_SUCCESS:I = 0x0

.field public static final UCM_SUCCESS_KEYGUARD_ALREADY_CONFIGURED:I = 0xa

.field public static final WIFI_VIRTUAL_PACKAGE:Ljava/lang/String; = "com.samsung.knox.virtual.wifi"

.field public static mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "UniversalCredentialStorageManager API ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized getUCMManager(Landroid/content/Context;)Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
    .locals 5

    const-string v0, "getUCMManager : Invalid user request userId-"

    const-class v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "getUCMManager : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p0, v2}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isValidUser(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v3

    :cond_1
    :try_start_2
    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_0
    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized getUCMManager(Landroid/content/Context;I)Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
    .locals 4

    const-string v0, "getUCMManager : Invalid user request userId-"

    const-class v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getUCMManager : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isValidUser(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v3

    :cond_1
    :try_start_2
    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_0
    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v1, :cond_0

    const-string v1, "knox_ucsm_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static isValidUser(Landroid/content/Context;I)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "isValidUser userId-"

    invoke-static {p1, v1, v0}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "persona"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_0
    move v1, v0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "isValidUser status-"

    invoke-static {p1, p0, v1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method


# virtual methods
.method public addPackagesToExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.addPackagesToExemptList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.addPackagesToExemptList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "addPackagesToExemptList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.addPackagesToExemptList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public addPackagesToWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.addPackagesToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.addPackagesToWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "addPackagesToWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.addPackagesToWhiteList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public addPackagesToWhiteListInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "UniversalCredentialManager.addPackagesToWhiteListInternal"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialManager.addPackagesToWhiteListInternal is called...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    const/4 v0, -0x1

    if-gez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "addPackagesToWhiteListInternal : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToWhiteListInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.addPackagesToWhiteListInternal getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public changeKeyguardPin(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.changeKeyguardPin"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.changeKeyguardPin is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->changeKeyguardPin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.changeKeyguardPin getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public clearWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.clearWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "clearWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->clearWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.clearWhiteList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public configureCredentialStorageForODESettings(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.configureCredentialStorageForODESettings is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->configureCredentialStorageForODESettings(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.configureCredentialStorageForODESettings getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public configureCredentialStoragePlugin(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.configureCredentialStoragePlugin is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "configureCredentialStoragePlugin : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->configureCredentialStoragePlugin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.configureCredentialStoragePlugin getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public deleteCACertificate(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.deleteCACertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.deleteCACertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "deleteCACertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.deleteCACertificate getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public deleteCertificate(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.deleteCertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "deleteCertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.deleteCertificate getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public deleteCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "UniversalCredentialManager.deleteCertificateInternal"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialManager.deleteCertificateInternal is called...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    const/4 v0, -0x1

    if-gez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "deleteCertificateInternal : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.deleteCertificateInternal getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public enableCredentialStorageForLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.enableCredentialStorageForLockType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.enableCredentialStorageForLockType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "enableCredentialStorageForLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->enableCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.enableCredentialStorageForLockType getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.enforceCredentialStorageAsLockType(CredentialStorage)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v2, "UniversalCredentialManager.enforceCredentialStorageAsLockType(CredentialStorage) is called...."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.enforceCredentialStorageAsLockType(CredentialStorage, Bundle)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.enforceCredentialStorageAsLockType(CredentialStorage, Bundle) is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "enforceCredentialStorageAsLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.enforceCredentialStorageAsLockType getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public getAliases(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getAliases is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getAliases : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAliases(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getAliases getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getAuthType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getAuthType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/16 v1, 0x69

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getAuthType : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getStorageOption getAuthType is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public getAvailableCredentialStorages()[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getAvailableCredentialStorages is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "getAvailableCredentialStorages : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialStorageManager.getAvailableCredentialStorages getUCMService is null...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The exception occurs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getCACertificate(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getCACertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getCACertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getCACertificate getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getCACertificateAliases(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getCACertificateAliases"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getCACertificateAliases is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getCACertificateAliases : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCACertificateAliases(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getCACertificateAliases getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getCredentialStoragePluginConfiguration(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getCredentialStoragePluginConfiguration"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getCredentialStoragePluginConfiguration is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getCredentialStoragePluginConfiguration : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStoragePluginConfiguration(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getCredentialStoragePluginConfiguration getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getCredentialStorageProperty(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getCredentialStorageProperty"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getCredentialStorageProperty is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getPackageSetting : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getStorageOption getCredentialStorageProperty is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getCredentialStorages(Ljava/lang/String;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getCredentialStorages"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getCredentialStorages is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getCredentialStorages : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getCredentialStorages getUCMService"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getDefaultInstallStorage()Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getDefaultInstallStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getDefaultInstallStorage is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "getDefaultInstallStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialStorageManager.getDefaultInstallStorage getUCMService is null...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The exception occurs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getEnforcedCredentialStorageForLockType()Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getEnforcedCredentialStorageForLockType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "getEnforcedCredentialStorageForLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getEnforcedCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialStorageManager.getEnforcedCredentialStorageForLockType getUCMService is null...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The exception occurs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getKeyguardPinCurrentRetryCount(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getKeyguardPinCurrentRetryCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getKeyguardPinCurrentRetryCount is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinCurrentRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getKeyguardPinCurrentRetryCount getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public getKeyguardPinMaximumLength(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getKeyguardPinMaximumLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getKeyguardPinMaximumLength is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinMaximumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getKeyguardPinMaximumLength getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public getKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getKeyguardPinMaximumRetryCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getKeyguardPinMaximumRetryCount is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getKeyguardPinMaximumRetryCount getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public getKeyguardPinMinimumLength(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getKeyguardPinMinimumLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getKeyguardPinMinimumLength is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinMinimumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getKeyguardPinMinimumLength getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public getODESettingsConfiguration()Landroid/os/Bundle;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "IUniversalCredentialManager.getODESettingsConfiguration is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getODESettingsConfiguration(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialManager.getODESettingsConfiguration getUCMService is null...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getPackagesFromExemptList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getPackagesFromExemptList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getPackagesFromExemptList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getPackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getPackagesFromExemptList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getPackagesFromWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getPackagesFromWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getPackagesFromWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getPackagesFromWhiteList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getSupportedAlgorithms(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getSupportedAlgorithms is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getSupportedAlgorithms : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getSupportedAlgorithms(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getSupportedAlgorithms getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public initKeyguardPin(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.initKeyguardPin"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.initKeyguardPin is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->initKeyguardPin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.initKeyguardPin getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public installCACertificate([BLjava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.installCACertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.installCACertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "installCACertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCACertificate(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.installCACertificate getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public installCertificate(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 9

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.installCertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "installCertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.installCertificate getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public installCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Landroid/os/Bundle;Z)I
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.installCertificateInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.installCertificateInternal is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v2, "installCertificateInternal : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Landroid/os/Bundle;Z)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v2, "UniversalCredentialStorageManager.installCertificateInternal getUCMService is null...."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The exception occurs "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public isCredentialStorageEnabledForLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.isCredentialStorageEnabledForLockType"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.isCredentialStorageEnabledForLockType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "isCredentialStorageEnabledForLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageEnabledForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.isCredentialStorageEnabledForLockType getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public isCredentialStorageLocked(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.isCredentialStorageLocked"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.isCredentialStorageLocked is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "isCredentialStorageLocked : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageLocked(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getStorageOption isCredentialStorageLocked is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public isCredentialStorageManaged(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.isCredentialStorageManaged is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "isCredentialStorageManaged : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.isCredentialStorageManaged getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public final isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkSdkVersion : support above "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public lockCredentialStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.lockCredentialStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.lockCredentialStorage is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "lockCredentialStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->lockCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.lockCredentialStorage getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public manageCredentialStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.manageCredentialStorage is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "manageCredentialStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.manageCredentialStorage getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public removePackagesFromExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.removePackagesFromExemptList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.removePackagesFromExemptList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removePackagesFromExemptList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->removePackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.removePackagesFromExemptList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public removePackagesFromWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.removePackagesFromWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removePackagesFromWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->removePackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.removePackagesFromWhiteList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public setAuthType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setAuthType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setAuthType : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setAuthType getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public setCredentialStorageProperty(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setCredentialStorageProperty is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setPackageSetting : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setCredentialStorageProperty getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public setDefaultInstallStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.setDefaultInstallStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setDefaultInstallStorage is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setDefaultInstallStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setDefaultInstallStorage getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public setKeyguardPinMaximumLength(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.setKeyguardPinMaximumLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setKeyguardPinMaximumLength is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyguardPinMaximumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setKeyguardPinMaximumLength getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public setKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.setKeyguardPinMaximumRetryCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setKeyguardPinMaximumRetryCount is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setKeyguardPinMaximumRetryCount getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public setKeyguardPinMinimumLength(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.setKeyguardPinMinimumLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setKeyguardPinMinimumLength is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyguardPinMinimumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setKeyguardPinMinimumLength getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method
