.class public final Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$BatteryUsageStatsLoaderCallbacks;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$BatteryUsageStatsLoaderCallbacks;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0

    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageStatsLoader;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$BatteryUsageStatsLoaderCallbacks;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageStatsLoader;-><init>(Landroid/content/Context;Z)V

    return-object p1
.end method

.method public final onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/os/BatteryUsageStats;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$BatteryUsageStatsLoaderCallbacks;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->-$$Nest$mcloseBatteryUsageStats(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->-$$Nest$monLoadFinished(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0

    return-void
.end method
