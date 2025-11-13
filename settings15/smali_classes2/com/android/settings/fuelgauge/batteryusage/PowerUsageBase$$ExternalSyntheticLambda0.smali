.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;

    return-void
.end method


# virtual methods
.method public final onBatteryChanged(I)V
    .locals 1

    const/4 v0, 0x6

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mIsBatteryPresent:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->restartBatteryStatsLoader(I)V

    return-void
.end method
