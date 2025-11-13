.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$1;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$1;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->-$$Nest$fgetmSpinnerPosition(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)I

    move-result p1

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$1;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    invoke-static {p1, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->-$$Nest$fputmSpinnerPosition(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;I)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$1;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->-$$Nest$fgetmHandler(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda1;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
