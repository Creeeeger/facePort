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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized blacklist getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .locals 3

    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v0, :cond_0

    .line 518
    const-string/jumbo v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 519
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 520
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    if-eqz v1, :cond_0

    .line 523
    :try_start_1
    new-instance v1, Lcom/samsung/android/sdhms/SemDeviceHealthManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager$1;-><init>(Lcom/samsung/android/sdhms/SemDeviceHealthManager;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    goto :goto_0

    .line 529
    .end local p0    # "this":Lcom/samsung/android/sdhms/SemDeviceHealthManager;
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 535
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public whitelist getBatteryEventHistory(JJI)Ljava/util/List;
    .locals 8
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J
    .param p5, "historyTypes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryEventHistory;",
            ">;"
        }
    .end annotation

    .line 187
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 192
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 194
    nop

    .line 195
    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getBatteryEventHistory(JJI)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryEventHistory;>;"
    return-object v1

    .line 197
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryEventHistory;>;"
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 199
    return-object v7

    .line 202
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v7
.end method

.method public whitelist getBatteryStats(IJJZ)Ljava/util/List;
    .locals 9
    .param p1, "intervalType"    # I
    .param p2, "startTimestamp"    # J
    .param p4, "endTimestamp"    # J
    .param p6, "includeDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats;",
            ">;"
        }
    .end annotation

    .line 134
    cmp-long v0, p2, p4

    if-lez v0, :cond_0

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 139
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 141
    nop

    .line 142
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

    .line 143
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats;>;"
    return-object v1

    .line 144
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats;>;"
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 146
    return-object v8

    .line 149
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v8
.end method

.method public whitelist getNetworkUsageStats(JJ)Ljava/util/List;
    .locals 3
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemNetworkUsageStats;",
            ">;"
        }
    .end annotation

    .line 344
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 345
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 349
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 351
    nop

    .line 352
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getNetworkUsageStats(JJ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemNetworkUsageStats;>;"
    return-object v1

    .line 354
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemNetworkUsageStats;>;"
    :catch_0
    move-exception v2

    .line 355
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 356
    return-object v1

    .line 359
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method public whitelist getProcessUsageStats(JJ)Ljava/util/List;
    .locals 3
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemProcessUsageStats;",
            ">;"
        }
    .end annotation

    .line 313
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 314
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 318
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 320
    nop

    .line 321
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getProcessUsageStats(JJ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemProcessUsageStats;>;"
    return-object v1

    .line 323
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemProcessUsageStats;>;"
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 325
    return-object v1

    .line 328
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method public whitelist getSupportedHistoryTypes()I
    .locals 3

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 219
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSupportedHistoryTypes()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 224
    const/4 v2, -0x1

    return v2

    .line 227
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getSupportedThermalThrottlingDelta()I
    .locals 3

    .line 459
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 460
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    .line 462
    :try_start_0
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSupportedThermalThrottlingDelta()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 463
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 465
    const/16 v2, -0x378

    return v2

    .line 468
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v1, -0x3e7

    return v1
.end method

.method public whitelist getThermalStats(JJ)Ljava/util/List;
    .locals 3
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemThermalStats;",
            ">;"
        }
    .end annotation

    .line 282
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 287
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 289
    nop

    .line 290
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getThermalStats(JJ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemThermalStats;>;"
    return-object v1

    .line 292
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemThermalStats;>;"
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 294
    return-object v1

    .line 297
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method public whitelist getThermalThrottlingDelta()I
    .locals 3

    .line 438
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 439
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    .line 441
    :try_start_0
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getThermalThrottlingDelta()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 444
    const/16 v2, -0x378

    return v2

    .line 447
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v1, -0x3e7

    return v1
.end method

.method public whitelist setAnomalyConfig(Landroid/app/PendingIntent;)Z
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 504
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 505
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 507
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->setAnomalyConfig(Landroid/app/PendingIntent;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 508
    :catch_0
    move-exception v2

    .line 509
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 510
    return v1

    .line 513
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return v1
.end method

.method public whitelist setThermalThrottlingDelta(I)Z
    .locals 3
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 383
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 385
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->setThermalThrottlingDelta(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 386
    :catch_0
    move-exception v2

    .line 387
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 388
    return v1

    .line 391
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return v1
.end method

.method public whitelist setThermalThrottlingDelta(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .line 413
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 414
    return v0

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    .line 418
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v1, :cond_1

    .line 420
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "pkgName":Ljava/lang/String;
    invoke-interface {v1, v2, p2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->setThermalThrottlingDeltaWithPackageName(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 422
    .end local v2    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 423
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 424
    return v0

    .line 427
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return v0
.end method
