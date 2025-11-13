.class public Lcom/samsung/android/knox/container/KnoxContainerManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;
    }
.end annotation


# static fields
.field public static final ACTION_CONTAINER_ADMIN_LOCK:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_ADMIN_LOCK"

.field public static final ACTION_CONTAINER_CREATION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_CREATION_STATUS"

.field public static final ACTION_CONTAINER_REMOVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_REMOVED"

.field public static final ACTION_CONTAINER_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_STATE_CHANGED"

.field public static final APP_SEPARATION_APP_LIST:Ljava/lang/String; = "APP_SEPARATION_APP_LIST"

.field public static final APP_SEPARATION_COEXISTANCE_LIST:Ljava/lang/String; = "APP_SEPARATION_COEXISTANCE_LIST"

.field public static final APP_SEPARATION_OUTSIDE:Ljava/lang/String; = "APP_SEPARATION_OUTSIDE"

.field public static final CONFIGURATION_TYPE_DO_BASIC:Ljava/lang/String; = "knox-do-basic"

.field public static final CONFIGURATION_TYPE_PO_BASIC:Ljava/lang/String; = "knox-po-basic"

.field public static final CONTAINER_ACTIVE:I = 0x5b

.field public static final CONTAINER_CREATION_FAILED_SPECIFIC_ERROR_TYPE:Ljava/lang/String; = "specificErrorCode"

.field public static final CONTAINER_CREATION_IN_PROGRESS:I = 0x5d

.field public static final CONTAINER_CREATION_REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final CONTAINER_CREATION_STATUS_CODE:Ljava/lang/String; = "code"

.field public static final CONTAINER_DOESNT_EXISTS:I = -0x1

.field public static final CONTAINER_ID:Ljava/lang/String; = "containerid"

.field public static final CONTAINER_INACTIVE:I = 0x5a

.field public static final CONTAINER_LAYOUT_TYPE_CLASSIC:I = 0x2

.field public static final CONTAINER_LAYOUT_TYPE_FOLDER:I = 0x1

.field public static final CONTAINER_LOCKED:I = 0x5f

.field public static final CONTAINER_NEW_STATE:Ljava/lang/String; = "container_new_state"

.field public static final CONTAINER_OLD_STATE:Ljava/lang/String; = "container_old_state"

.field public static final CONTAINER_REMOVE_IN_PROGRESS:I = 0x5e

.field public static final DEBUG:Z

.field public static final ERROR_ADMIN_ACTIVATION_FAILED:I = -0x3f1

.field public static final ERROR_ADMIN_INSTALLATION_FAILED:I = -0x3f0

.field public static final ERROR_CONTAINER_MODE_CREATION_FAILED_BYOD_NOT_ALLOWED:I = -0x3ff

.field public static final ERROR_CONTAINER_MODE_CREATION_FAILED_CONTAINER_EXIST:I = -0x3fd

.field public static final ERROR_CONTAINER_MODE_CREATION_FAILED_KIOSK_ON_OWNER_EXIST:I = -0x3fe

.field public static final ERROR_CONTAINER_TYPE_NOT_ALLOWED:I = -0x270f

.field public static final ERROR_CREATION_ALREADY_IN_PROGRESS:I = -0x3f8

.field public static final ERROR_CREATION_CANCELLED:I = -0x3f9

.field public static final ERROR_CREATION_FAILED_CONTAINER_MODE_EXIST:I = -0x3fc

.field public static final ERROR_CREATION_FAILED_DO_EXISTS:I = -0x4b1

.field public static final ERROR_CREATION_FAILED_EMERGENCY_MODE:I = -0x407

.field public static final ERROR_CREATION_FAILED_GENERATE_CMK:I = -0x40a

.field public static final ERROR_CREATION_FAILED_INVALID_KNOX_CONFIGURATION_TYPE:I = -0x406

.field public static final ERROR_CREATION_FAILED_INVALID_PARAM:I = -0x402

.field public static final ERROR_CREATION_FAILED_INVALID_PARAM_LIST:I = -0x405

.field public static final ERROR_CREATION_FAILED_INVALID_USER_INFO:I = -0x408

.field public static final ERROR_CREATION_FAILED_RESERVED_CONFIGURATION_TYPE_USED:I = -0x404

.field public static final ERROR_CREATION_FAILED_SUB_USER:I = -0x403

.field public static final ERROR_CREATION_FAILED_TIMA_DISABLED:I = -0x3fa

.field public static final ERROR_CREATION_FAILED_TIMA_PWD_KEY:I = -0x409

.field public static final ERROR_DOES_NOT_EXIST:I = -0x4b2

.field public static final ERROR_EC_MAX_LIMIT_REACHED:I = -0x40d

.field public static final ERROR_FILESYSTEM_ERROR:I = -0x3f3

.field public static final ERROR_HANDLER_INSTALLATION_FAILED:I = -0x3ee

.field public static final ERROR_INTEGRITY_CHECK_FAILED:I = -0x400

.field public static final ERROR_INTERNAL_ERROR:I = -0x3f6

.field public static final ERROR_INVALID_PASSWORD_RESET_TOKEN:I = -0x401

.field public static final ERROR_KLMS_LICENCE_CHECK_ERROR:I = -0x3f7

.field public static final ERROR_MAX_LIMIT_REACHED:I = -0x3f4

.field public static final ERROR_NOT_CONTAINER_OWNER:I = -0x4b3

.field public static final ERROR_NO_ADMIN_APK:I = -0x3ec

.field public static final ERROR_NO_CONFIGURATION_TYPE:I = -0x3ed

.field public static final ERROR_NO_HANDLER_APK:I = -0x3ea

.field public static final ERROR_NO_NAME:I = -0x3e9

.field public static final ERROR_NO_SETUPWIZARD_APK:I = -0x3eb

.field public static final ERROR_PLATFORM_VERSION_MISMATCH_IN_CONFIGURATION_TYPE:I = -0x3fb

.field public static final ERROR_POLICY_ENFORCEMENT_FAILED:I = -0x3f5

.field public static final ERROR_REMOVE_FAILED:I = -0x4b1

.field public static final ERROR_SDP_NOTSUPPORTED:I = -0x400

.field public static final ERROR_SECURE_FOLDER_MAX_LIMIT_REACHED:I = -0x40c

.field public static final ERROR_SETUPWIZARD_INSTALLATION_FAILED:I = -0x3ef

.field public static final ERROR_SYSTEM_APP_INSTALLATION_FAILED:I = -0x3f2

.field public static final EXTRA_ADMIN_UID:Ljava/lang/String; = "com.samsung.knox.container.adminUid"

.field public static final EXTRA_CONFIG_TYPE:Ljava/lang/String; = "com.samsung.knox.container.configType"

.field public static final EXTRA_CONTAINER_ID:Ljava/lang/String; = "containerid"

.field public static final EXTRA_IS_CL_TYPE:Ljava/lang/String; = "com.samsung.knox.container.isCLType"

.field public static final EXTRA_IS_MY_KNOX:Ljava/lang/String; = "com.samsung.knox.container.isMyKnox"

.field public static final EXTRA_PWD_RST_TOKEN:Ljava/lang/String; = "com.samsung.knox.container.pwdRstToken"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "com.samsung.knox.container.requestId"

.field public static final FEATURE_TYPE_MY_KNOX:Ljava/lang/String; = "MY_KNOX"

.field public static final FLAG_ADMIN_TYPE_APK:I = 0x10

.field public static final FLAG_ADMIN_TYPE_NONE:I = 0x40

.field public static final FLAG_ADMIN_TYPE_PACKAGENAME:I = 0x20

.field public static final FLAG_BASE:I = 0x1

.field public static final FLAG_CREATOR_SELF_DESTROY:I = 0x8

.field public static final FLAG_ECRYPT_FILESYSTEM:I = 0x2

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_SECURE_FOLDER_CONTAINER:I = 0x2000

.field public static final FLAG_TIMA_STORAGE:I = 0x4

.field public static final INTENT_BUNDLE:Ljava/lang/String; = "intent"

.field public static final INTENT_CONTAINER_CREATION_STATUS:Ljava/lang/String; = "com.samsung.knox.container.creation.status"

.field public static final MAX_CONTAINERS:I = 0x2

.field public static final PROV_STATE_BASE:I = 0x0

.field public static final PROV_STATE_CANCELLED:I = 0xc

.field public static final PROV_STATE_FAILED:I = 0xb

.field public static final PROV_STATE_FINISHED:I = 0xa

.field public static final PROV_STATE_IDLE:I = 0x0

.field public static final PROV_STATE_KNOXCORE_EXTENSION:I = 0x3

.field public static final PROV_STATE_MANAGED_PROVISIONING:I = 0x2

.field public static final PROV_STATE_REQUESTED:I = 0x1

.field public static final PROV_STATE_SILENT_PROVISIONING:I = 0x2

.field public static final REMOVE_CONTAINER_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "KnoxContainerManager"

.field public static final TIMA_VALIDATION_SUCCESS_CODE:I = 0x0

.field public static final TZ_COMMON_CLOSE_COMMUNICATION_ERROR:I = -0x10002

.field public static final TZ_COMMON_COMMUNICATION_ERROR:I = -0x10001

.field public static final TZ_COMMON_INIT_ERROR:I = -0x1000a

.field public static final TZ_COMMON_INIT_ERROR_TAMPER_FUSE_FAIL:I = -0x1000c

.field public static final TZ_COMMON_INIT_MSR_MISMATCH:I = -0x1000d

.field public static final TZ_COMMON_INIT_MSR_MODIFIED:I = -0x1000e

.field public static final TZ_COMMON_INIT_UNINITIALIZED_SECURE_MEM:I = -0x1000b

.field public static final TZ_COMMON_INTERNAL_ERROR:I = -0x10005

.field public static final TZ_COMMON_NULL_POINTER_EXCEPTION:I = -0x10006

.field public static final TZ_COMMON_RESPONSE_REQUEST_MISMATCH:I = -0x10003

.field public static final TZ_COMMON_UNDEFINED_ERROR:I = -0x10007

.field public static final TZ_KEYSTORE_ERROR:I = -0x1

.field public static final TZ_KEYSTORE_INIT_FAILED:I = -0x2

.field public static mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;


# instance fields
.field public volatile mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

.field public volatile mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

.field public volatile mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

.field public volatile mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

.field public volatile mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

.field public volatile mBootBanner:Lcom/samsung/android/knox/lockscreen/BootBanner;

.field public volatile mBrowserPolicy:Lcom/samsung/android/knox/browser/BrowserPolicy;

.field public volatile mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field public volatile mCertificateProvisioning:Lcom/samsung/android/knox/keystore/CertificateProvisioning;

.field public volatile mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

.field public mContainerConfigurationPolicy:Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

.field public final mContext:Landroid/content/Context;

.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public volatile mDateTimePolicy:Lcom/samsung/android/knox/datetime/DateTimePolicy;

.field public volatile mDeviceAccountPolicy:Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

.field public volatile mDeviceInventory:Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

.field public volatile mDualDARPolicy:Lcom/samsung/android/knox/ddar/DualDARPolicy;

.field public volatile mEasAccountPolicy:Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

.field public volatile mEmailAccountPolicy:Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

.field public volatile mEmailPolicy:Lcom/samsung/android/knox/accounts/EmailPolicy;

.field public mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

.field public volatile mEnterpriseBillingPolicyCreated:Z

.field public volatile mFirewall:Lcom/samsung/android/knox/net/firewall/Firewall;

.field public volatile mGeofencing:Lcom/samsung/android/knox/location/Geofencing;

.field public volatile mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

.field public volatile mLDAPAccountPolicy:Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

.field public volatile mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

.field public mNAPCreated:Z

.field public mNap:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

.field public volatile mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field public mRCPPolicy:Lcom/samsung/android/knox/container/RCPPolicy;

.field public volatile mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field public volatile mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    sput-boolean v0, Lcom/samsung/android/knox/container/KnoxContainerManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const-string v0, "Container with Id "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicyCreated:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mNAPCreated:Z

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/knox/container/KnoxContainerManager;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " does not exists"

    if-nez v1, :cond_1

    :try_start_1
    iget v1, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 v3, 0x20

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->checkContainerType(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NoSuchFieldException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget v1, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const v3, 0x20020

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->checkContainerType(II)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_2

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    return-void

    :cond_2
    :try_start_2
    new-instance p0, Ljava/lang/NoSuchFieldException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    new-instance p1, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exists. / "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static addConfigurationType(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p0, "type object is NULL!!, returning.."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "Context is NULL!!, returning.."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    invoke-static {p0, p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processNewTypeObject(Landroid/content/Context;Lcom/samsung/android/knox/container/KnoxConfigurationType;)V

    filled-new-array {p2}, [Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed at KnoxContainerManager API addContainer:"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public static addConfigurationType(Landroid/content/Context;Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.addConfigurationType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->addConfigurationType(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    move-result p0

    return p0
.end method

.method public static cancelCreateContainer(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->cancelCreateContainer(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed at KnoxContainerManager API cancelCreateContainer "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public static checkProvisioningPreCondition(Ljava/lang/String;I)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3f6

    return p0

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->checkProvisioningPreCondition(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed at KnoxContainerManager API getProvisioningCondition "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/16 v2, -0x3f6

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/CreationParams;->getPasswordResetToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/CreationParams;->getAdminPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/16 v3, 0x46

    goto :goto_0

    :cond_3
    const/16 v3, 0x2e

    :goto_0
    :try_start_0
    invoke-interface {v0, p0, p1, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed at KnoxContainerManager API createContainer "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move p0, v2

    :goto_1
    return p0

    :cond_4
    :goto_2
    const/16 p0, -0x401

    return p0
.end method

.method public static createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/16 v2, -0x3f6

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v3, Lcom/samsung/android/knox/container/CreationParams;

    invoke-direct {v3}, Lcom/samsung/android/knox/container/CreationParams;-><init>()V

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/container/CreationParams;->setConfigurationName(Ljava/lang/String;)V

    const/16 p1, 0x46

    :try_start_0
    invoke-interface {v0, p0, v3, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed at KnoxContainerManager API createContainer "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move p0, v2

    :goto_0
    return p0
.end method

.method public static createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/16 v2, -0x3f6

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v3, Lcom/samsung/android/knox/container/CreationParams;

    invoke-direct {v3}, Lcom/samsung/android/knox/container/CreationParams;-><init>()V

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/container/CreationParams;->setConfigurationName(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/container/CreationParams;->setAdminPackageName(Ljava/lang/String;)V

    const/16 p1, 0x1e

    :try_start_0
    invoke-interface {v0, p0, v3, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed at KnoxContainerManager API createContainer "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move p0, v2

    :goto_0
    return p0
.end method

.method public static createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/IEnterpriseContainerCallback;)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/16 v2, -0x3f6

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v3, Lcom/samsung/android/knox/container/CreationParams;

    invoke-direct {v3}, Lcom/samsung/android/knox/container/CreationParams;-><init>()V

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/container/CreationParams;->setConfigurationName(Ljava/lang/String;)V

    const/16 p1, 0x46

    :try_start_0
    invoke-interface {v0, p0, v3, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainerWithCallback(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;ILcom/samsung/android/knox/IEnterpriseContainerCallback;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed at KnoxContainerManager API createContainer "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move p0, v2

    :goto_0
    return p0
.end method

.method public static createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/16 v2, -0x3f6

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v3, Lcom/samsung/android/knox/container/CreationParams;

    invoke-direct {v3}, Lcom/samsung/android/knox/container/CreationParams;-><init>()V

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/container/CreationParams;->setConfigurationName(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/samsung/android/knox/container/CreationParams;->setAdminPackageName(Ljava/lang/String;)V

    const-string/jumbo p2, "secure-folder"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x202e

    goto :goto_0

    :cond_1
    const/16 p1, 0x2e

    :goto_0
    :try_start_0
    invoke-interface {v0, p0, v3, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed at KnoxContainerManager API createContainer "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move p0, v2

    :goto_1
    return p0
.end method

.method public static createContainer(Lcom/samsung/android/knox/container/CreationParams;)I
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.createContainer(CreationParams)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;)I

    move-result p0

    return p0
.end method

.method public static createContainer(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.createContainer(String)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static createContainer(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.createContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)I

    move-result p0

    return p0
.end method

.method public static createContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.createContainer(String, String)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static createContainerForMigration(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/16 v2, -0x3f6

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v3, Lcom/samsung/android/knox/container/CreationParams;

    invoke-direct {v3}, Lcom/samsung/android/knox/container/CreationParams;-><init>()V

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/container/CreationParams;->setConfigurationName(Ljava/lang/String;)V

    const/16 p1, 0x146

    :try_start_0
    invoke-interface {v0, p0, v3, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed at KnoxContainerManager API createContainerForMigration "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move p0, v2

    :goto_0
    return p0
.end method

.method public static createContainerForMigration(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/16 v2, -0x3f6

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v3, Lcom/samsung/android/knox/container/CreationParams;

    invoke-direct {v3}, Lcom/samsung/android/knox/container/CreationParams;-><init>()V

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/container/CreationParams;->setConfigurationName(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/container/CreationParams;->setAdminPackageName(Ljava/lang/String;)V

    const/16 p1, 0x11e

    :try_start_0
    invoke-interface {v0, p0, v3, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed at KnoxContainerManager API createContainerForMigration "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move p0, v2

    :goto_0
    return p0
.end method

.method public static createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/16 v1, -0x3f6

    const-string v2, "KnoxContainerManager"

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed at KnoxContainerManager API createContainerInternal "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public static createContainerMarkSuccess(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainerMarkSuccess(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed at KnoxContainerManager API createContainerMarkSuccess "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public static doSelfUninstall()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    if-nez v0, :cond_0

    const-string v0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->doSelfUninstall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed at KnoxContainerManager API getContainers :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getAppSeparationConfig()Landroid/os/Bundle;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to call isAppSeparationEnabled "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "KnoxContainerManager"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getConfigurationType(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationType(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigurationType(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getConfigurationType(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed at KnoxContainerManager API getConfigurationType by id:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed at KnoxContainerManager API getContainer("

    const-string v3, ") :"

    invoke-static {v0, p1, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static getConfigurationTypeByName(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigurationTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigurationTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getConfigurationTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed at KnoxContainerManager API getConfigurationType:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public static getContainerCreationParams(I)Lcom/samsung/android/knox/container/ContainerCreationParams;
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "KnoxContainerManager"

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getContainerCreationParams(I)Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed at KnoxContainerManager API getConfigurationType by id:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/container/KnoxContainerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "mum_container_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static getContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainers(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getContainers(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    const-string v2, "KnoxContainerManager"

    if-nez v1, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getContainers(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed at KnoxContainerManager API getContainers :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getCustomResource(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "KnoxContainerManager"

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed at KnoxContainerManager API getCustomResource: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDefaultConfigurationTypes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getDefaultConfigurationTypes()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed at KnoxContainerManager API getConfigurationType by id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public static getProvisioningState()Landroid/os/Bundle;
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    if-nez v0, :cond_0

    const-string v0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getProvisioningState()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed at KnoxContainerManager API getProvisioningState "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public static isEmergencyModeSupported()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "KnoxContainerManager"

    if-nez v0, :cond_0

    const-string v0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed at KnoxContainerManager API isEmergencyModeSupported "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public static processCreateReturn(I)I
    .locals 1

    const/16 v0, -0x3f5

    if-eq p0, v0, :cond_0

    const/16 v0, -0x3f2

    if-eq p0, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p0, v0, :cond_0

    const/16 v0, -0x3ee

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return p0

    :cond_0
    :pswitch_0
    const/16 p0, -0x3f6

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x3eb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static processNewTypeObject(Landroid/content/Context;Lcom/samsung/android/knox/container/KnoxConfigurationType;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Images before copy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KnoxContainerManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Images value conditions:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, ""

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "icon"

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v3

    :goto_3
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    move-object v5, v3

    :goto_4
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v5

    const-string v6, "folder header icon: "

    invoke-static {v6, v5, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {p0, v5, v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "folder header icon after copy: "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Images after copy:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static processRemoveReturn(I)I
    .locals 1

    const/16 v0, -0x4b1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/16 p0, -0x3f6

    return p0
.end method

.method public static removeConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p0, "type string is NULL!!, returning.."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed at KnoxContainerManager API removeConfigurationType:"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public static removeConfigurationType(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.removeConfigurationType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->removeConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static removeContainer(I)I
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.removeContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->removeContainer(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    return p0
.end method

.method public static removeContainer(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/16 v2, -0x4b1

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeContainer(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed at KnoxContainerManager API removeContainer "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public static removeContainerInternal(I)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/16 v1, -0x3f6

    const-string v2, "KnoxContainerManager"

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeContainerInternal(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed at KnoxContainerManager API removeContainerInternal "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public static setAppSeparationCoexistentApps(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setAppSeparationCoexistentApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call setAppSeparationCoexistentApps "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "KnoxContainerManager"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setAppSeparationConfig(Landroid/os/Bundle;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setAppSeparationConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call setAppSeparationWhiteList "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "KnoxContainerManager"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setAppSeparationWhitelistedApps(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setAppSeparationWhitelistedApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call setAppSeparationWhitelistedApps "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "KnoxContainerManager"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static updateProvisioningState(Landroid/os/Bundle;)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "KnoxContainerManager"

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->updateProvisioningState(Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed at KnoxContainerManager API updateProvisioningState "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public activateDevicePermissions(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "enterprise_policy"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->activateDevicePermissions(Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KnoxContainerManager"

    const-string v0, "Failed talking with enterprise policy service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final checkContainerType(II)Z
    .locals 5

    const-string/jumbo p0, "persist.sys.knox.userinfo"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v3, p1, :cond_0

    and-int/2addr v2, p2

    if-lez v2, :cond_0

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public enforceMultifactorAuthentication(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KnoxContainerManager.enforceMultifactorAuthentication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    if-nez v0, :cond_0

    const-string p0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enforceMultifactorAuthentication(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed at KnoxContainerManager API unlock "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    const-string p1, "enforceMultifactorAuthentication result = "

    invoke-static {p1, v1, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public getAPMPolicy()Lcom/samsung/android/knox/devicesecurity/APMPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    return-object p0
.end method

.method public getAdvancedRestrictionPolicy()Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/application/ApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/knox/ExternalDependencyInjectorImpl;

    invoke-direct {v3}, Lcom/samsung/android/knox/ExternalDependencyInjectorImpl;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/application/ApplicationPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;Lcom/samsung/android/knox/ExternalDependencyInjector;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getAuditLogPolicy()Lcom/samsung/android/knox/log/AuditLog;
    .locals 2

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/knox/log/AuditLog;->createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    return-object p0

    :cond_2
    const-string p0, "KnoxContainerManager"

    const-string v0, "KnoxContainerManager.getAuditLogPolicy() : This device doesn\'t support this API."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/container/BasePasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/container/BasePasswordPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getBootBanner()Lcom/samsung/android/knox/lockscreen/BootBanner;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBootBanner:Lcom/samsung/android/knox/lockscreen/BootBanner;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBootBanner:Lcom/samsung/android/knox/lockscreen/BootBanner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/lockscreen/BootBanner;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/lockscreen/BootBanner;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBootBanner:Lcom/samsung/android/knox/lockscreen/BootBanner;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getBrowserPolicy()Lcom/samsung/android/knox/browser/BrowserPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBrowserPolicy:Lcom/samsung/android/knox/browser/BrowserPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBrowserPolicy:Lcom/samsung/android/knox/browser/BrowserPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/browser/BrowserPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/browser/BrowserPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBrowserPolicy:Lcom/samsung/android/knox/browser/BrowserPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/keystore/CertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/keystore/CertificatePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getCertificateProvisioning()Lcom/samsung/android/knox/keystore/CertificateProvisioning;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mCertificateProvisioning:Lcom/samsung/android/knox/keystore/CertificateProvisioning;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mCertificateProvisioning:Lcom/samsung/android/knox/keystore/CertificateProvisioning;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mCertificateProvisioning:Lcom/samsung/android/knox/keystore/CertificateProvisioning;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getClientCertificateManagerPolicy()Lcom/samsung/android/knox/keystore/ClientCertificateManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerConfigurationPolicy:Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerConfigurationPolicy:Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerConfigurationPolicy:Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getDateTimePolicy()Lcom/samsung/android/knox/datetime/DateTimePolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDateTimePolicy:Lcom/samsung/android/knox/datetime/DateTimePolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDateTimePolicy:Lcom/samsung/android/knox/datetime/DateTimePolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/datetime/DateTimePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/datetime/DateTimePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDateTimePolicy:Lcom/samsung/android/knox/datetime/DateTimePolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getDeviceAccountPolicy()Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDeviceAccountPolicy:Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDeviceAccountPolicy:Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDeviceAccountPolicy:Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getDualDARPolicy()Lcom/samsung/android/knox/ddar/DualDARPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDualDARPolicy:Lcom/samsung/android/knox/ddar/DualDARPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDualDARPolicy:Lcom/samsung/android/knox/ddar/DualDARPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ddar/DualDARPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDualDARPolicy:Lcom/samsung/android/knox/ddar/DualDARPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getEmailAccountPolicy()Lcom/samsung/android/knox/accounts/EmailAccountPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEmailAccountPolicy:Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEmailAccountPolicy:Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEmailAccountPolicy:Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getEmailPolicy()Lcom/samsung/android/knox/accounts/EmailPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEmailPolicy:Lcom/samsung/android/knox/accounts/EmailPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEmailPolicy:Lcom/samsung/android/knox/accounts/EmailPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/accounts/EmailPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/accounts/EmailPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEmailPolicy:Lcom/samsung/android/knox/accounts/EmailPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getEnterpriseBillingPolicy()Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;
    .locals 4

    const-string v0, "Added Client : "

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicyCreated:Z

    if-nez v1, :cond_1

    const-class v1, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicyCreated:Z

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    const-string v2, "EnterpriseBillingPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicyCreated:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    return-object p0
.end method

.method public getEnterpriseCertEnrollPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->getInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getExchangeAccountPolicy()Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEasAccountPolicy:Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEasAccountPolicy:Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEasAccountPolicy:Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getFirewall()Lcom/samsung/android/knox/net/firewall/Firewall;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mFirewall:Lcom/samsung/android/knox/net/firewall/Firewall;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mFirewall:Lcom/samsung/android/knox/net/firewall/Firewall;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/net/firewall/Firewall;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mFirewall:Lcom/samsung/android/knox/net/firewall/Firewall;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getGeofencing()Lcom/samsung/android/knox/location/Geofencing;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mGeofencing:Lcom/samsung/android/knox/location/Geofencing;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mGeofencing:Lcom/samsung/android/knox/location/Geofencing;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/knox/location/Geofencing;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/location/Geofencing;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mGeofencing:Lcom/samsung/android/knox/location/Geofencing;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getKioskMode()Lcom/samsung/android/knox/kiosk/KioskMode;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getKnoxCustomBadgePolicy()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getKnoxCustomBadgePolicy()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed at KnoxContainerManager API getKnoxCustomBadgePolicy "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "KnoxContainerManager"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLDAPAccountPolicy()Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mLDAPAccountPolicy:Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mLDAPAccountPolicy:Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mLDAPAccountPolicy:Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getLocationPolicy()Lcom/samsung/android/knox/location/LocationPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/location/LocationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/location/LocationPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getNetworkAnalytics()Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .locals 3

    const-class v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mNAPCreated:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mNap:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mNAPCreated:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mNap:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mRCPPolicy:Lcom/samsung/android/knox/container/RCPPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mRCPPolicy:Lcom/samsung/android/knox/container/RCPPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/container/RCPPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/container/RCPPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mRCPPolicy:Lcom/samsung/android/knox/container/RCPPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getStatus()I
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const-string p0, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed at KnoxContainerManager API getStatus("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") :"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public isMultifactorAuthenticationEnforced()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isMultifactorAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed at KnoxContainerManager API unlock "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public lock()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KnoxContainerManager.lock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->lockContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed at KnoxContainerManager API lock "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public lock(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KnoxContainerManager.lock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->lockContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed at KnoxContainerManager API lock "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public registerBroadcastReceiverIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KnoxContainerManager.registerBroadcastReceiverIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->registerBroadcastReceiverIntent(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed at KnoxContainerManager API registerBroadcastReceiverIntent "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public unlock()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KnoxContainerManager.unlock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->unlockContainer(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed at KnoxContainerManager API unlock "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public unregisterBroadcastReceiverIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KnoxContainerManager.unregisterBroadcastReceiverIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-string v1, "KnoxContainerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->unregisterBroadcastReceiverIntent(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed at KnoxContainerManager API unregisterBroadcastReceiverIntent "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method
