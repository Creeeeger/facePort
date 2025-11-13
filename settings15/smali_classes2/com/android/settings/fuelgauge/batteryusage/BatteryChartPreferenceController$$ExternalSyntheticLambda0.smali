.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

.field public final synthetic f$1:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

.field public final synthetic f$2:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iput-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setOnSelectListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;)V

    iput-object p0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setOnSelectListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;)V

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()V

    return-void
.end method
