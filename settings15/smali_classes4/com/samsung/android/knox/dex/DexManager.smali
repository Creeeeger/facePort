.class public Lcom/samsung/android/knox/dex/DexManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dex/DexManager$SetWallpaperFlags;
    }
.end annotation


# static fields
.field public static final DEX_APP_ALREADY_SET_POLICY:I = 0x3

.field public static final DEX_APP_NOT_INSTALLED:I = 0x2

.field public static final DEX_APP_NOT_SET_POLICY:I = 0x4

.field public static final DEX_POLICY_FAIL:I = 0x1

.field public static final DEX_POLICY_SUCCESS:I = 0x0

.field public static final FLAG_DEX:I = 0x8

.field public static final FLAG_LOCK:I = 0x2

.field public static final FLAG_PHONE:I = 0x4

.field public static final FLAG_SYSTEM:I = 0x1

.field public static TAG:Ljava/lang/String; = "DexPolicy"

.field public static sDexManager:Lcom/samsung/android/knox/dex/DexManager;


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

.field public mService:Lcom/samsung/android/knox/dex/IDexPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/dex/DexManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/dex/DexManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->sDexManager:Lcom/samsung/android/knox/dex/DexManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/dex/DexManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/dex/DexManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/dex/DexManager;->sDexManager:Lcom/samsung/android/knox/dex/DexManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->sDexManager:Lcom/samsung/android/knox/dex/DexManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addPackageToDisableList(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.addPackageToDisableList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->addPackageToDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Dex policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public addShortcut(IILandroid/content/ComponentName;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.addShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexShortcut(IILandroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public addURLShortcut(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.addURLShortcut(int, int, String, String, ComponentName)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexURLShortcut(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public addURLShortcut(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;)I
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "DexManager.addURLShortcut(int, int, String, String, String, ComponentName, ParcelFileDescriptor)"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x6

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, v0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexURLShortcutExtend(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public allowAutoOpenLastApp(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.allowAutoOpenLastApp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->allowDexAutoOpenLastApp(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public allowScreenTimeoutChange(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.allowScreenTimeoutChange"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->allowScreenTimeoutChange(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed at dex policy API"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public clearLoadingLogo()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.clearLoadingLogo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->clearDexLoadingLogo()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public enforceEthernetOnly(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.enforceEthernetOnly"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->enforceEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed at dex policy API"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public enforceVirtualMacAddress(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.enforceVirtualMacAddress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->enforceVirtualMacAddress(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed at dex policy API"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getForegroundModePackageList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexForegroundModePackageList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getHDMIAutoEnterState()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getHomeAlignment()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHomeAlignment()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method

.method public getPackagesFromDisableList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/dex/IDexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with Dex policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenTimeout()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexScreenTimeout()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public final getService()Lcom/samsung/android/knox/dex/IDexPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    if-nez v0, :cond_0

    const-string v0, "dex_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dex/IDexPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    return-object p0
.end method

.method public getShowIMEWithHardKeyboard()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getShowIMEWithHardKeyboard()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getVirtualMacAddress()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/dex/IDexPolicy;->getVirtualMacAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed at dex policy API"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public isAutoOpenLastAppAllowed()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isDexActivated()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isDexActivated()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed at dex policy API"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDexDisabled()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isDexDisabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed at dex policy API"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isEthernetOnlyEnforced()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isEthernetOnlyEnforced()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed at dex policy API"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isScreenTimeoutChangeAllowed()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isScreenTimeoutChangeAllowed()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed at dex policy API"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isVirtualMacAddressEnforced()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.isVirtualMacAddressEnforced"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isVirtualMacAddressEnforced()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed at dex policy API"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackageFromDisableList(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.removePackageFromDisableList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->removePackageFromDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Dex policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public removeShortcut(Landroid/content/ComponentName;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.removeShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeDexShortcut(Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public removeURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.removeURLShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeDexURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setDexDisabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setDexDisabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->setDexDisabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed at dex policy API"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setForegroundModePackageList(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setForegroundModePackageList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexForegroundModePackageList(ILjava/util/List;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setHDMIAutoEnterState(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setHDMIAutoEnterState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexHDMIAutoEnterState(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setHomeAlignment(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setHomeAlignment"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexHomeAlignment(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setLoadingLogo(Landroid/os/ParcelFileDescriptor;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setLoadingLogo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexLoadingLogo(Landroid/os/ParcelFileDescriptor;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setScreenTimeout(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setScreenTimeout"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexScreenTimeout(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setShowIMEWithHardKeyboard(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setShowIMEWithHardKeyboard"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setShowIMEWithHardKeyboard(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setWallpaper(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "DexManager.setWallpaper"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    and-int/lit8 p1, p5, 0x8

    if-nez p1, :cond_1

    const/16 p0, -0x32

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bitmapData"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p2, p3, p4, p5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWallpaper(Landroid/os/Bundle;Landroid/graphics/Rect;ZI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with EnterpriseDeviceManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string p2, "The calling process does not have the knox custom dex permission"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v0
.end method
