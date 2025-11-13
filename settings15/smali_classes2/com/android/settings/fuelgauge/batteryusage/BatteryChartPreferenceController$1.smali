.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

.field public final synthetic val$visibility:I


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;->val$visibility:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;->val$visibility:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;->val$visibility:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
