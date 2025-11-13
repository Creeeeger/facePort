.class public Lcom/samsung/android/knox/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# static fields
.field private static TAG:Ljava/lang/String; = "EnterpriseDeviceManager"

.field private static final mSync:Ljava/lang/Object;

.field private static sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# instance fields
.field private volatile mCmfaManager:Lcom/samsung/android/knox/cmfa/CmfaManager;

.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private volatile mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

.field private volatile mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private volatile mPhoneRestrictionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;",
            ">;"
        }
    .end annotation
.end field

.field mProfilePolicyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field private mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field private volatile mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 292
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/IEnterpriseDeviceManager;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 362
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)V

    .line 363
    iput-object p3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)V
    .locals 5

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1823
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mProfilePolicyMap:Ljava/util/HashMap;

    .line 322
    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    .line 324
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz p2, :cond_1

    .line 327
    iget p1, p3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 328
    iget p2, p3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 329
    iget v0, p3, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 331
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 333
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") callerUid is SYSTEM_UID but Binder.getCallingUid() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "STACK TRACE"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    :cond_0
    iget-boolean p3, p3, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 341
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(IIZI)V

    move-object p3, v1

    .line 345
    :cond_1
    iput-object p3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getAPILevel()I
    .locals 2

    .line 2981
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isOfficiallySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2982
    invoke-static {}, Lcom/samsung/android/knox/EdmUtils;->getAPILevelForInternal()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0

    :catch_0
    move-exception v0

    .line 2987
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 6

    .line 370
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 372
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 373
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    .line 374
    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v4, :cond_0

    .line 375
    new-instance v4, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-direct {v4, p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 376
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstance() : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") create an instance with UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq p0, v1, :cond_1

    .line 380
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstance() : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") currentUid is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but mCallerUid is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v1, v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 386
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "enterprise_policy"

    .line 441
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 440
    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 443
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-object p0
.end method

.method private static guardianMUsed()Z
    .locals 1

    const-string v0, ""

    .line 3022
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static inHouseManufacturing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static isOfficiallySupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2996
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sepBasicSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2998
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sepLiteSupported()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sepLiteNewSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3016
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unexpected SEP category : sep_basic"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2999
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->inHouseManufacturing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 3005
    :cond_3
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->jdmManufacturing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3006
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->guardianMUsed()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0

    .line 3012
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unexpected manufacturing type : in_house"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static jdmManufacturing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static sepBasicSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static sepLiteNewSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static sepLiteSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAdminRemovable(Ljava/lang/String;)Z
    .locals 2

    .line 1240
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getAdminRemovable"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 1241
    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1245
    sget-object p1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with enterprise policy service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getCmfaManager()Lcom/samsung/android/knox/cmfa/CmfaManager;
    .locals 2

    .line 2501
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mCmfaManager:Lcom/samsung/android/knox/cmfa/CmfaManager;

    if-nez v0, :cond_1

    .line 2503
    monitor-enter p0

    .line 2504
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mCmfaManager:Lcom/samsung/android/knox/cmfa/CmfaManager;

    if-nez v0, :cond_0

    .line 2506
    new-instance v0, Lcom/samsung/android/knox/cmfa/CmfaManager;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mCmfaManager:Lcom/samsung/android/knox/cmfa/CmfaManager;

    .line 2508
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getEnterpriseSdkVer()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;
    .locals 0

    .line 1328
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    move-result-object p0

    return-object p0
.end method

.method public getKioskMode()Lcom/samsung/android/knox/kiosk/KioskMode;
    .locals 3

    .line 1913
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    if-nez v0, :cond_1

    .line 1915
    monitor-enter p0

    .line 1916
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    if-nez v0, :cond_0

    .line 1918
    new-instance v0, Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/kiosk/KioskMode;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 1920
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 3

    .line 2123
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_1

    .line 2125
    monitor-enter p0

    .line 2126
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_0

    .line 2128
    new-instance v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 2130
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;
    .locals 1

    const/4 v0, 0x0

    .line 2368
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getPhoneRestrictionPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2381
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    .line 2385
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2386
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    goto :goto_0

    .line 2388
    :cond_2
    new-instance v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2389
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 905
    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 909
    sget-object p1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with device policy service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .locals 3

    .line 2041
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v0, :cond_1

    .line 2043
    monitor-enter p0

    .line 2044
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v0, :cond_0

    .line 2046
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 2048
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;
    .locals 2

    .line 2275
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    if-nez v0, :cond_1

    .line 2277
    monitor-enter p0

    .line 2278
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    if-nez v0, :cond_0

    .line 2280
    new-instance v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    .line 2282
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public isMdmAdminPresent()Z
    .locals 2

    .line 3156
    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "Failed talking with enterprise policy service"

    if-eqz v0, :cond_0

    .line 3158
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isMdmAdminPresent()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3160
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3163
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 1

    .line 877
    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 881
    sget-object p1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with enterprise policy service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 1

    .line 831
    invoke-direct {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 833
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 835
    sget-object p1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with enterprise policy service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
