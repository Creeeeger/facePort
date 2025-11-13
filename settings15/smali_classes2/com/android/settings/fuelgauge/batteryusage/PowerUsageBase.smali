.class public abstract Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final KEY_INCLUDE_HISTORY:Ljava/lang/String; = "include_history"

.field static final KEY_REFRESH_TYPE:Ljava/lang/String; = "refresh_type"


# instance fields
.field public mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

.field mBatteryUsageStats:Landroid/os/BatteryUsageStats;

.field final mBatteryUsageStatsLoaderCallbacks:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;

.field public mIsBatteryPresent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mIsBatteryPresent:Z

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mBatteryUsageStatsLoaderCallbacks:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;

    return-void
.end method


# virtual methods
.method public final closeBatteryUsageStatsIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PowerUsageBase"

    const-string v3, "BatteryUsageStats.close() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    throw v0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const-string p0, "user"

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;)V

    iput-object v0, p1, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->register()V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->closeBatteryUsageStatsIfNeeded()V

    return-void
.end method

.method public abstract refreshUi(I)V
.end method

.method public restartBatteryStatsLoader(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refresh_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "include_history"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mBatteryUsageStatsLoaderCallbacks:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    return-void
.end method

.method public final restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V
    .locals 2

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManagerImpl;

    move-result-object p0

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    iget-boolean v1, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Landroidx/loader/content/Loader;->mReset:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/loader/app/LoaderManagerImpl;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/loader/app/LoaderManagerImpl;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called while creating a loader"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
