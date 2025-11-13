.class public Lcom/samsung/android/knox/deviceinfo/DeviceInventory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_SIM_CARD_CHANGED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SIM_CARD_CHANGED"

.field public static final EXTRA_SIM_CHANGE_INFO:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SIM_CHANGE_INFO"

.field public static TAG:Ljava/lang/String; = "DeviceInventory"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mExternalDependencyInjector:Lcom/samsung/android/knox/ExternalDependencyInjector;

.field public mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

.field public mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;Lcom/samsung/android/knox/ExternalDependencyInjector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mExternalDependencyInjector:Lcom/samsung/android/knox/ExternalDependencyInjector;

    return-void
.end method


# virtual methods
.method public dataUsageTimerActivation()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final externalSdCardAvailable()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getExternalSdCardDirectory()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const-string v0, "mounted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAvailableCapacityExternal()J
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getAvailableCapacityExternal"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->externalSdCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getExternalSdCardDirectory()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getAvailableMemorySize(Landroid/os/StatFs;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    sget-object v2, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v3, "getAvailableCapacityExternal"

    invoke-static {v3, p0, v2}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    return-wide v0
.end method

.method public getAvailableCapacityInternal()J
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getAvailableCapacityInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getAvailableMemorySize(Landroid/os/StatFs;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    sget-object v2, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v3, "getAvailableCapacityInternal"

    invoke-static {v3, p0, v2}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-wide v0
.end method

.method public final getAvailableMemorySize(Landroid/os/StatFs;)J
    .locals 2

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide p0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getDeviceOS"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDeviceOS(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getDeviceOSVersion"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDeviceOSVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDroppedCallsCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getDroppedCallsCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDroppedCallsCount(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getExternalSdCardDirectory()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mExternalDependencyInjector:Lcom/samsung/android/knox/ExternalDependencyInjector;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subsystem : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mExternalDependencyInjector:Lcom/samsung/android/knox/ExternalDependencyInjector;

    invoke-interface {p0, v0}, Lcom/samsung/android/knox/ExternalDependencyInjector;->storageVolumeGetSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final getInternalSdCardPath()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKnoxServiceId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getKnoxServiceId"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getKnoxServiceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getKnoxServicePackageList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getKnoxServicePackageList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getKnoxServicePackageList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLastSimChangeInfo()Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getLastSimChangeInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/IMiscPolicy;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public final getMiscService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_0

    const-string v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object p0
.end method

.method public getMissedCallsCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getMissedCallsCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getMissedCallsCount(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSalesCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getSalesCode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getSalesCode(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getSerialNumber"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getSerialNumber(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    if-nez v0, :cond_0

    const-string v0, "device_info"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    return-object p0
.end method

.method public getSuccessCallsCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getSuccessCallsCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getSuccessCallsCount(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getTotalCapacityExternal()J
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getTotalCapacityExternal"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->externalSdCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getExternalSdCardDirectory()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getTotalMemorySize(Landroid/os/StatFs;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    sget-object v2, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v3, "getTotalCapacityExternal"

    invoke-static {v3, p0, v2}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    return-wide v0
.end method

.method public getTotalCapacityInternal()J
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.getTotalCapacityInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getTotalMemorySize(Landroid/os/StatFs;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    sget-object v2, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v3, "getTotalCapacityInternal"

    invoke-static {v3, p0, v2}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-wide v0
.end method

.method public final getTotalMemorySize(Landroid/os/StatFs;)J
    .locals 2

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide p0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public isDeviceLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isDeviceLocked"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.isDeviceLocked"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->isDeviceLocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDeviceSecure()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isDeviceSecure"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.isDeviceSecure"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->isDeviceSecure(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resetCallsCount()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.resetCallsCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device info policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setKnoxServiceId(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceInventory.setKnoxServiceID"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->setKnoxServiceId(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with device info policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with device inventory policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with device info policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getService()Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->mService:Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with device info policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
