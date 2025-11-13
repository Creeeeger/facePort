.class public Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ERROR_INTERNAL_ERROR:I = -0x2

.field public static final ERROR_INVALID_KEY:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final FIDO_REQUEST_URI:Ljava/lang/String; = "fido_request_uri"

.field public static final FIDO_RESPONSE_URI:Ljava/lang/String; = "fido_response_uri"

.field public static final KEY_IMAGE:Ljava/lang/String; = "key-image"

.field public static final KEY_NAME:Ljava/lang/String; = "key-name"

.field public static final OPTION_CALLER_INFO:Ljava/lang/String; = "option_callerinfo"

.field public static final RES_TYPE_BADGE:I = 0x1

.field public static final RES_TYPE_NAME_ICON:I = 0x3

.field public static final RES_TYPE_PERSONAL_MODE_NAME:I = 0x5

.field public static final RES_TYPE_PROFILE_NAME:I = 0x4

.field public static final RES_TYPE_PROFILE_SWITCH_ICON:I = 0x2

.field public static TAG:Ljava/lang/String; = "ContainerConfigurationPolicy"

.field public static gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field public static mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;


# instance fields
.field public mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mDPMService:Landroid/app/admin/IDevicePolicyManager;

.field public mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static declared-synchronized getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "mum_container_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v1, :cond_0

    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "ContainerConfigurationPolicy.addCrossProfileIntentFilter"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addCrossProfileIntentFilter is deprecated from Knox 3.4.1, This API is not available since Android 13."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addHomeShortcutToPersonal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.addHomeShortcutToPersonal"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addHomeShortcutToPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Application PolicyService API addHomeShortcutToPersonal "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public addNetworkSSID(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.addNetworkSSID"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API addNetworkSSID"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public addPackageToExternalStorageSBABlackList(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.addPackageToExternalStorageSBABlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addPackageToExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API addPackageToExternalStorageSBABlackList"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public addPackageToExternalStorageWhiteList(Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.addPackageToExternalStorageWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    const-string v2, ""

    if-eqz p2, :cond_3

    array-length v3, p2

    if-lez v3, :cond_3

    array-length v2, p2

    new-array v2, v2, [Ljava/lang/String;

    move v3, v1

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    aget-object v4, p2, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    const-string p2, ","

    invoke-static {p2, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance p2, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {p2, p1, v2}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addPackageToExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at ContainerConfigurationPolicy API addPackageToExternalStorageWhiteList"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.addPackageToInstallWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addPackageToInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API addPackageToInstallWhiteList "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public allowLayoutSwitching(Z)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "allowLayoutSwitching: allowSwitch "

    invoke-static {v1, v0, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.allowLayoutSwitching"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->allowLayoutSwitching(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PolicyService API allowLayoutSwitching "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public allowRemoteControl(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.allowRemoteControl"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Remote Control Service is not yet ready"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API allowRemoteControl "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public final checkBluetoothAndNFCAPICallerPermission()Z
    .locals 3

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Bluetooth And NFC caller permission check"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Required version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkContactsSharingAPICallerPermission()Z
    .locals 3

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Knox Phone Book Access Profile permission check"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Required version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkExternalSDCardAPICallerPermission()Z
    .locals 3

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "External SDCard API caller permission check"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Required version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkUsbHostModeAPICallerPermission()Z
    .locals 3

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Usb Host Mode permission check"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Required version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "ContainerConfigurationPolicy.clearCrossProfileIntentFilters"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "clearCrossProfileIntentFilters is deprecated from Knox 3.4.1, This API is not available since Android 13."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearNetworkSSID()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.clearNetworkSSID"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->clearNetworkSSID(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API clearNetworkSSID"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public clearPackagesFromExternalStorageSBABlackList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.clearPackagesFromExternalStorageSBABlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->clearPackagesFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API clearPackagesFromExternalStorageSBABlackList"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public clearPackagesFromExternalStorageWhiteList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.clearPackagesFromExternalStorageWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->clearPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API clearPackagesFromExternalStorageWhiteList"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public deleteHomeShortcutFromPersonal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.deleteHomeShortcutFromPersonal"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->deleteHomeShortcutFromPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Application PolicyService API deleteHomeShortcutFromPersonal "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public enableBluetooth(ZLandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.enableBluetooth"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableBluetooth(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at ContainerConfigurationPolicy API enableBluetooth"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public enableExternalStorage(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.enableExternalStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableExternalStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API enableExternalStorage"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public enableNFC(ZLandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.enableNFC"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableNFC(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at ContainerConfigurationPolicy API enableNFC"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public enableUsbAccess(ZLandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.enableUsbHostMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkUsbHostModeAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableUsbAccess(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at ContainerConfigurationPolicy API enableUsbAccess"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public enforceMultifactorAuthentication(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.enforceMultifactorAuthentication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enforceMultifactorAuthentication(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at KnoxContainerManager API unlock "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "enforceMultifactorAuthentication result = "

    invoke-static {v0, p1, p0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_0

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object p0
.end method

.method public final getDPMService()Landroid/app/admin/IDevicePolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    return-object p0
.end method

.method public getEnforceAuthForContainer()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getEnforceAuthForContainer(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at KnoxContainerManager API unlock "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public getFIDOInfo()Landroid/os/Bundle;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PolicyService is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getFIDOInfo(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PolicyService API getFIDOInfo "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getHibernationTimeout()J
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getHibernationTimeout(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with ContainerPolicy "

    invoke-static {v0, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-wide v1
.end method

.method public getNetworkSSID()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getNetworkSSID(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API getNetworkSSID"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public getPackageSignaturesFromExternalStorageWhiteList(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackageSignaturesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/pm/Signature;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    new-instance v2, Landroid/content/pm/Signature;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, p1, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    return-object p1

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API getPackageSignaturesFromExternalStorageWhiteList"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getPackagesFromExternalStorageSBABlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API getPackagesFromExternalStorageSBABlackList"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getPackagesFromExternalStorageWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API getPackagesFromExternalStorageWhiteList"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getPackagesFromInstallWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API getPackagesFromInstallWhiteList "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method public final getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    if-nez v0, :cond_0

    const-string/jumbo v0, "remoteinjection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    return-object p0
.end method

.method public isBluetoothEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API isBluetoothEnabled"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isBluetoothEnabledBeforeFOTA()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isBluetoothEnabledBeforeFOTA(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API isBluetoothEnabled"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isContactsSharingEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkContactsSharingAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isContactsSharingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API isContactsSharingEnabled"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isExternalStorageEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API enableExternalStorage"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isLayoutSwitchingAllowed()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "isLayoutSwitchingAllowed is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PolicyService is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isLayoutSwitchingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PolicyService API isLayoutSwitchingAllowed "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isMultifactorAuthenticationEnforced()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isMultifactorAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at KnoxContainerManager API unlock "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public isNFCEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isNFCEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API isNFCEnabled"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isPackageInInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API isPackageInInstallWhiteList "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public isRemoteControlAllowed()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Remote Control Service is not yet ready"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API isRemoteControlAllowed "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public isResetContainerOnRebootEnabled()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isResetContainerOnRebootEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with ContainerConfigurationPolicy "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public isSettingsOptionEnabled(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isSettingsOptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API isSettingsOptionEnabled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isUsbAccessEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkUsbHostModeAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isUsbAccessEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ContainerConfigurationPolicy API isUsbAccessEnabled"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isUseSecureKeypadEnabled()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public removeNetworkSSID(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.removeNetworkSSID"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API removeNetworkSSID"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public removePackageFromExternalStorageSBABlackList(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.removePackageFromExternalStorageSBABlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removePackageFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API removePackageFromExternalStorageSBABlackList"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public removePackageFromExternalStorageWhiteList(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.removePackageFromExternalStorageWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removePackageFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API removePackageFromExternalStorageWhiteList"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.removePackageFromInstallWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removePackageFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API removePackageFromInstallWhiteList "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public resetContainerOnReboot(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.resetContainerOnReboot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->resetContainerOnReboot(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with ContainerConfigurationPolicy "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public resetContainerPassword(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.resetPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->forceResetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with ContainerConfigurationPolicy "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public resetContainerPassword()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.resetPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->forceResetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with ContainerConfigurationPolicy "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x2

    :goto_0
    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public setContactsSharingEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setContactsSharingEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkContactsSharingAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setContactsSharingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at ContainerConfigurationPolicy API setContactsSharingEnabled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public setCustomResource(ILandroid/os/Bundle;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCustomResource is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setCustomResource"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p1, p0, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setCustomResource(ILcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "PolicyService API setCustomResource "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public setEnforceAuthForContainer(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setEnforceAuthForContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setEnforceAuthForContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at KnoxContainerManager API unlock "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public setFIDOInfo(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setFIDOInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setFIDOInfo(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "PolicyService API setFIDOSinfo "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public setHibernationTimeout(J)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setHibernationTimeout"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const-wide/32 v2, 0x5265c00

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setHibernationTimeout(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with ContainerPolicy "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public setSettingsOptionEnabled(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setSettingsOptionEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setSettingsOptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at ContainerConfigurationPolicy API setSettingsOptionEnabled"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public setUseSecureKeypad(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setUseSecureKeypad"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method
