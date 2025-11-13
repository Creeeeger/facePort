.class public Landroid/os/health/SystemHealthManager;
.super Ljava/lang/Object;
.source "SystemHealthManager.java"


# instance fields
.field private final greylist-max-o mBatteryStats:Lcom/android/internal/app/IBatteryStats;


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 57
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/health/SystemHealthManager;-><init>(Lcom/android/internal/app/IBatteryStats;)V

    .line 58
    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/internal/app/IBatteryStats;)V
    .locals 0
    .param p1, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 63
    return-void
.end method

.method public static greylist-max-p from(Landroid/content/Context;)Landroid/os/health/SystemHealthManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    const-string/jumbo v0, "systemhealth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/health/SystemHealthManager;

    return-object v0
.end method


# virtual methods
.method public whitelist takeMyUidSnapshot()Landroid/os/health/HealthStats;
    .locals 1

    .line 108
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/health/SystemHealthManager;->takeUidSnapshot(I)Landroid/os/health/HealthStats;

    move-result-object v0

    return-object v0
.end method

.method public whitelist takeUidSnapshot(I)Landroid/os/health/HealthStats;
    .locals 2
    .param p1, "uid"    # I

    .line 92
    :try_start_0
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v0

    .line 93
    .local v0, "parceler":Landroid/os/health/HealthStatsParceler;
    invoke-virtual {v0}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 94
    .end local v0    # "parceler":Landroid/os/health/HealthStatsParceler;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist takeUidSnapshots([I)[Landroid/os/health/HealthStats;
    .locals 5
    .param p1, "uids"    # [I

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    move-result-object v0

    .line 128
    .local v0, "parcelers":[Landroid/os/health/HealthStatsParceler;
    array-length v1, p1

    new-array v1, v1, [Landroid/os/health/HealthStats;

    .line 129
    .local v1, "results":[Landroid/os/health/HealthStats;
    array-length v2, p1

    .line 130
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 131
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v3    # "i":I
    :cond_0
    return-object v1

    .line 134
    .end local v0    # "parcelers":[Landroid/os/health/HealthStatsParceler;
    .end local v1    # "results":[Landroid/os/health/HealthStats;
    .end local v2    # "N":I
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
