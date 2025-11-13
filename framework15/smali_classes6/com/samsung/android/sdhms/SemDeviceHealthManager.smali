.class public Lcom/samsung/android/sdhms/SemDeviceHealthManager;
.super Ljava/lang/Object;
.source "SemDeviceHealthManager.java"


# static fields
.field public static final whitelist ACTION_THERMAL_THROTTLING_DELTA_CHANGED:Ljava/lang/String; = "com.sec.android.sdhms.action.THERMAL_THROTTLING_DELTA_CHANGED"

.field public static final whitelist DRAIN_TYPE_AMBIENT_DISPLAY:I = 0x3

.field public static final whitelist DRAIN_TYPE_BLUETOOTH:I = 0x6

.field public static final whitelist DRAIN_TYPE_CELL_STANDBY:I = 0x4

.field public static final whitelist DRAIN_TYPE_IDLE:I = 0x7

.field public static final whitelist DRAIN_TYPE_PHONE:I = 0x1

.field public static final whitelist DRAIN_TYPE_POWERSHARING:I = 0x8

.field public static final whitelist DRAIN_TYPE_SCREEN:I = 0x2

.field public static final whitelist DRAIN_TYPE_WIFI:I = 0x5

.field public static final whitelist EXTRA_ANOMALY_TYPE_APP_ERROR:Ljava/lang/String; = "AERR"

.field public static final whitelist EXTRA_ANOMALY_TYPE_BG_CAMERA:Ljava/lang/String; = "CAM_28"

.field public static final whitelist EXTRA_ANOMALY_TYPE_BG_CPU:Ljava/lang/String; = "CPU_27"

.field public static final whitelist EXTRA_ANOMALY_TYPE_BG_MOBILE:Ljava/lang/String; = "MOB_16"

.field public static final whitelist EXTRA_ANOMALY_TYPE_BG_MOBILE_WAKEUP:Ljava/lang/String; = "MWUP_16"

.field public static final whitelist EXTRA_ANOMALY_TYPE_CPU_KILL:Ljava/lang/String; = "KILL_27"

.field public static final whitelist EXTRA_ANOMALY_TYPE_WAKELOCK:Ljava/lang/String; = "WLOCK_3009"

.field public static final whitelist EXTRA_THROTTLING_DELTA:Ljava/lang/String; = "delta"

.field public static final whitelist EXTRA_THROTTLING_TIME:Ljava/lang/String; = "time"

.field public static final whitelist INTERVAL_TYPE_DAILY:I = 0x1

.field public static final whitelist INTERVAL_TYPE_PERIODICALLY:I


# instance fields
.field private blacklist mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmService(Lcom/samsung/android/sdhms/SemDeviceHealthManager;Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized blacklist getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v0, :cond_0

    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    iget-object v1, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/samsung/android/sdhms/SemDeviceHealthManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager$1;-><init>(Lcom/samsung/android/sdhms/SemDeviceHealthManager;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public whitelist getBatteryEventHistory(JJI)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryEventHistory;",
            ">;"
        }
    .end annotation

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    nop

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getBatteryEventHistory(JJI)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v7

    :cond_1
    return-object v7
.end method

.method public whitelist getBatteryStats(IJJZ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats;",
            ">;"
        }
    .end annotation

    cmp-long v0, p2, p4

    if-lez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    nop

    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    :try_start_0
    invoke-interface/range {v1 .. v7}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getBatteryStats(IJJZ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v8

    :cond_1
    return-object v8
.end method

.method public whitelist getNetworkUsageStats(JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemNetworkUsageStats;",
            ">;"
        }
    .end annotation

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    nop

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getNetworkUsageStats(JJ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1

    :cond_1
    return-object v1
.end method

.method public whitelist getProcessUsageStats(JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemProcessUsageStats;",
            ">;"
        }
    .end annotation

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    nop

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getProcessUsageStats(JJ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1

    :cond_1
    return-object v1
.end method

.method public whitelist getSupportedHistoryTypes()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSupportedHistoryTypes()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v2, -0x1

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getSupportedThermalThrottlingDelta()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSupportedThermalThrottlingDelta()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/16 v2, -0x378

    return v2

    :cond_0
    const/16 v1, -0x3e7

    return v1
.end method

.method public whitelist getThermalStats(JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemThermalStats;",
            ">;"
        }
    .end annotation

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    nop

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getThermalStats(JJ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1

    :cond_1
    return-object v1
.end method

.method public whitelist getThermalThrottlingDelta()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getThermalThrottlingDelta()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/16 v2, -0x378

    return v2

    :cond_0
    const/16 v1, -0x3e7

    return v1
.end method

.method public whitelist setAnomalyConfig(Landroid/app/PendingIntent;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->setAnomalyConfig(Landroid/app/PendingIntent;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    :cond_0
    return v1
.end method

.method public whitelist setThermalThrottlingDelta(Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->setThermalThrottlingDeltaWithPackageName(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    return v0

    :cond_1
    return v0
.end method
