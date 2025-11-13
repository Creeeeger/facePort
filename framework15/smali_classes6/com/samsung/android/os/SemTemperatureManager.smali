.class public Lcom/samsung/android/os/SemTemperatureManager;
.super Ljava/lang/Object;
.source "SemTemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    }
.end annotation


# static fields
.field private static blacklist LOG_TAG:Ljava/lang/String; = null

.field private static final blacklist SDHMS_VALUE_SIOP_LEVEL:I = 0x1

.field public static final whitelist UNSUPPORTED:I = -0x3e7

.field private static blacklist mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

.field private static blacklist mThermistorList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/os/SemTemperatureManager$Thermistor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputmService(Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .locals 1

    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/os/SemTemperatureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemTemperatureManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getAllTemperatures()[I
    .locals 5

    const/16 v0, 0xc

    new-array v1, v0, [I

    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getAllTemperatures(I)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const/16 v4, -0x3e7

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static whitelist getOverheatingProtectionLevel(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSsrmStatus(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/16 v1, -0x3e7

    return v1
.end method

.method private static declared-synchronized blacklist getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .locals 4

    const-class v0, Lcom/samsung/android/os/SemTemperatureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v1, :cond_0

    const-string v1, "sdhms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    sget-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Lcom/samsung/android/os/SemTemperatureManager$1;

    invoke-direct {v2}, Lcom/samsung/android/os/SemTemperatureManager$1;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static whitelist getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    .locals 1

    sget-object v0, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->initThermistorList()V

    :cond_1
    sget-object v0, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    return-object v0
.end method

.method public static whitelist getThermistorList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/os/SemTemperatureManager$Thermistor;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->initThermistorList()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static declared-synchronized blacklist initThermistorList()V
    .locals 6

    const-class v0, Lcom/samsung/android/os/SemTemperatureManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->getAllTemperatures()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    new-instance v3, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;-><init>(ILcom/samsung/android/os/SemTemperatureManager$Thermistor-IA;)V

    aget v4, v1, v2

    const/16 v5, -0x3e7

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
