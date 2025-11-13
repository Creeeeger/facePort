.class public Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_NOTIFY_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFY_STATUS"

.field public static final BUNDLE_EXTRA_CONFIG_VIEWER_KEY:Ljava/lang/String; = "ConfigViewer"

.field public static final BUNDLE_EXTRA_UNENROLL_VIEWER_KEY:Ljava/lang/String; = "UnEnrollViewer"

.field public static final ERROR_BAD_STATE:I = -0xa

.field public static final ERROR_INTERNAL:I = -0x8

.field public static final ERROR_INVALID_JSON_FORMAT:I = -0x3

.field public static final ERROR_MANAGED_USER_NOT_SUPPORTED:I = -0xe

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NULL_PARAMETER:I = -0x7

.field public static final ERROR_PACKAGE_NOT_REGISTERED:I = -0x5

.field public static final ERROR_PROFILE_LIMIT_REACHED:I = -0x6

.field public static final ERROR_PROFILE_NAME_EXISTS_DIFFERENT_OWNER:I = -0xc

.field public static final ERROR_PROFILE_NOT_FOUND:I = -0x2

.field public static final ERROR_PROFILE_RUNNING:I = -0x9

.field public static final ERROR_REGION_NOT_SUPPORTED:I = -0xf

.field public static final ERROR_USER_DISAGREE:I = -0xb

.field public static final ERROR_USER_NOT_SUPPORTED:I = -0xd

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_CODE"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.STATUS"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TYPE"

.field public static final RESULT_API_PAUSE:I = 0x66

.field public static final RESULT_API_REMOVED:I = 0x67

.field public static final RESULT_API_START:I = 0x64

.field public static final RESULT_API_STOP:I = 0x65

.field public static final STATUS_PACKAGE_AUTHORIZED:I = 0x7

.field public static final STATUS_PACKAGE_REGISTERED:I = 0x1

.field public static final STATUS_PACKAGE_UNREGISTERED:I = 0x2

.field public static final STATUS_PROFILE_IDLE:I = 0x6

.field public static final STATUS_PROFILE_PAUSED:I = 0x4

.field public static final STATUS_PROFILE_RUNNING:I = 0x3

.field public static final STATUS_PROFILE_STOPPED:I = 0x5

.field public static final TAG:Ljava/lang/String; = "knoxNwFilter-NetworkFilterService"

.field public static final TYPE_BOOT_COMPLETED:I = 0x2

.field public static final TYPE_LOCK_BOOT_COMPLETED:I = 0x1

.field public static mNfs:Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;

.field public static mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static enforceCountryIsoCode()V
    .locals 3

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCountryIso  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "knoxNwFilter-NetworkFilterService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static enforceUser(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;,
            Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;
        }
    .end annotation

    const-string v0, "knoxNwFilter-NetworkFilterService"

    const-string/jumbo v1, "prepare filtering failed since device owner is configured for user "

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string/jumbo v3, "vpn_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v3

    :try_start_0
    invoke-interface {v3, v2}, Landroid/net/IVpnManager;->isDoEnabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;

    invoke-direct {v1}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RemoteException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v1

    const-string/jumbo v3, "prepare filtering failed since wpc configured for user "

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;-><init>()V

    throw p0

    :cond_2
    if-nez v1, :cond_5

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_4

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "prepare filtering failed since wpp configured for user "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "prepare filtering failed since user is unmanaged other than primary user "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "prepare filtering failed since user is secure folder user "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;-><init>()V

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {v0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getInstanceValidation()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNfs:Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;

    if-nez v1, :cond_0

    const-string v1, "knoxNwFilter-NetworkFilterService"

    const-string v2, "getInstance API creating new object"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNfs:Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNfs:Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0

    :catch_0
    move-exception p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unknown error occured while fetching the instance "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string p0, "knoxNwFilter-NetworkFilterService"

    const-string v0, "getInstance API failed since service not started yet"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getIntentForConfirmation(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x104036f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    if-nez v0, :cond_0

    const-string v0, "knox_nwFilterMgr_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.app.networkfilter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static prepare(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;,
            Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;,
            Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedRegionException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->enforceUser(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->enforceCountryIsoCode()V

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_1

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->isAuthorized()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getIntentForConfirmation(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "Failed due to remote exception during isAuthorized call"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "internal error"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "Failed due to service null during isAuthorized call"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "service not started"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAllProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getAllProfiles()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Failed to getAllProfiles"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "getAllProfiles API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Failed to getConfig"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "getConfig API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getProfileStatus(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getProfileStatus(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed at getProfileStatus"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "getProfileStatus API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x8

    :goto_0
    return p0
.end method

.method public getRegisteredListeners(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getRegisteredListeners(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Failed at getRegisteredListeners"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "getRegisteredListeners API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public pause(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->pause(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to pause"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "pause API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x8

    :goto_0
    return p0
.end method

.method public registerListeners(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->registerListeners(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed at registerListeners"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "registerListeners API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x8

    :goto_0
    return p0
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to setConfig"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "setConfig API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x8

    :goto_0
    return p0
.end method

.method public start(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->start(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to start"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "start API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x8

    :goto_0
    return p0
.end method

.method public stop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->stop(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to stop"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "stop API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x8

    :goto_0
    return p0
.end method
