.class public final Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# instance fields
.field public mRefreshType:I

.field public final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1

    const-string p1, "refresh_type"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;->mRefreshType:I

    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageStatsLoader;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "include_history"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageStatsLoader;-><init>(Landroid/content/Context;Z)V

    return-object p1
.end method

.method public final onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/os/BatteryUsageStats;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->closeBatteryUsageStatsIfNeeded()V

    iput-object p2, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;->mRefreshType:I

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->refreshUi(I)V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0

    return-void
.end method
