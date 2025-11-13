.class public final Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    const-string v0, "onBatteryContentChange: "

    const-string v1, "AdvancedBatteryUsage"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->restartBatteryStatsLoader(I)V

    return-void
.end method
