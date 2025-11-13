.class public Landroid/os/health/SystemHealthManager;
.super Ljava/lang/Object;
.source "SystemHealthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/health/SystemHealthManager$PendingUidSnapshots;
    }
.end annotation


# static fields
.field private static final blacklist POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/os/PowerMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAKE_UID_SNAPSHOT_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private final greylist-max-o mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final blacklist mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

.field private blacklist mPowerMonitorsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PowerMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPowerMonitorsLock:Ljava/lang/Object;

.field private final blacklist mPowerStats:Landroid/os/IPowerStatsService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPowerMonitorsLock(Landroid/os/health/SystemHealthManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPowerMonitorsInfo(Landroid/os/health/SystemHealthManager;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Landroid/os/health/SystemHealthManager;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 2

    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    const-string/jumbo v1, "powerstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerStatsService;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/os/health/SystemHealthManager;-><init>(Lcom/android/internal/app/IBatteryStats;Landroid/os/IPowerStatsService;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/IBatteryStats;Landroid/os/IPowerStatsService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;-><init>(Landroid/os/health/SystemHealthManager$PendingUidSnapshots-IA;)V

    iput-object v0, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object p1, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iput-object p2, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    return-void
.end method

.method public static greylist-max-p from(Landroid/content/Context;)Landroid/os/health/SystemHealthManager;
    .locals 1

    const-string/jumbo v0, "systemhealth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/health/SystemHealthManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$getPowerMonitorReadings$2(Landroid/os/OutcomeReceiver;Ljava/lang/IllegalArgumentException;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getSupportedPowerMonitors$0(Ljava/util/function/Consumer;Ljava/util/List;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$static$1(Landroid/os/PowerMonitor;)I
    .locals 1

    iget v0, p0, Landroid/os/PowerMonitor;->index:I

    return v0
.end method


# virtual methods
.method public whitelist getPowerMonitorReadings(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerMonitor;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/PowerMonitorReadings;",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported power monitor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3, v0}, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/IllegalArgumentException;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/PowerMonitor;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/PowerMonitor;

    sget-object v1, Landroid/os/health/SystemHealthManager;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [I

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    iget v2, v2, Landroid/os/PowerMonitor;->index:I

    aput v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v8, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    new-instance v9, Landroid/os/health/SystemHealthManager$2;

    const/4 v3, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/health/SystemHealthManager$2;-><init>(Landroid/os/health/SystemHealthManager;Landroid/os/Handler;[Landroid/os/PowerMonitor;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v8, v7, v9}, Landroid/os/IPowerStatsService;->getPowerMonitorReadings([ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getSupportedPowerMonitors(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/os/PowerMonitor;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    new-instance v0, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, v1}, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    new-instance v2, Landroid/os/health/SystemHealthManager$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1, p2}, Landroid/os/health/SystemHealthManager$1;-><init>(Landroid/os/health/SystemHealthManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2}, Landroid/os/IPowerStatsService;->getSupportedPowerMonitors(Landroid/os/ResultReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist takeMyUidSnapshot()Landroid/os/health/HealthStats;
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/health/SystemHealthManager;->takeUidSnapshot(I)Landroid/os/health/HealthStats;

    move-result-object v0

    return-object v0
.end method

.method public whitelist takeUidSnapshot(I)Landroid/os/health/HealthStats;
    .locals 3

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->onewayBatteryStatsService()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/health/SystemHealthManager;->takeUidSnapshots([I)[Landroid/os/health/HealthStats;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist takeUidSnapshots([I)[Landroid/os/health/HealthStats;
    .locals 6

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->onewayBatteryStatsService()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    move-result-object v0

    array-length v1, p1

    new-array v2, v1, [Landroid/os/health/HealthStats;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iget-object v1, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->uids:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iget-object v1, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->uids:[I

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    new-instance v2, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v3, "takeUidSnapshots"

    invoke-direct {v2, v3}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    iput-object v2, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1, v3}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshotsAsync([ILandroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v1, v3

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-wide/16 v2, 0x2710

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v1, v2, v3}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v2
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v3, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    monitor-enter v3

    :try_start_5
    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iget-object v4, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    if-ne v4, v1, :cond_3

    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object v0, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->uids:[I

    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object v0, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    :cond_3
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    array-length v0, p1

    new-array v0, v0, [Landroid/os/health/HealthStats;

    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string/jumbo v4, "uid_snapshots"

    const-class v5, Landroid/os/health/HealthStatsParceler;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/health/HealthStatsParceler;

    if-eqz v3, :cond_4

    array-length v4, v3

    array-length v5, p1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_4

    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_7
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    iget-object v3, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    monitor-enter v3

    :try_start_8
    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iget-object v4, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    if-ne v4, v1, :cond_5

    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object v0, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->uids:[I

    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object v0, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    :cond_5
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catch_2
    move-exception v1

    :try_start_a
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1
.end method
