.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageStatsLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBatteryStatsManager:Landroid/os/BatteryStatsManager;

.field public final mIncludeBatteryHistory:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    const-class v0, Landroid/os/BatteryStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStatsManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageStatsLoader;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageStatsLoader;->mIncludeBatteryHistory:Z

    return-void
.end method


# virtual methods
.method public final loadInBackground()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageStatsLoader;->mIncludeBatteryHistory:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageStatsLoader;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BatteryUsageStatsLoader"

    const-string v1, "loadInBackground() for getBatteryUsageStats()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Landroid/os/BatteryUsageStats$Builder;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/BatteryUsageStats;

    return-void
.end method
