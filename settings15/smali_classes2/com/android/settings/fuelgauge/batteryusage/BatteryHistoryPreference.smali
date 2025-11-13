.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

.field public mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

.field public mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0080

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0x7f0a03d1

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0488

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v3, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setCompanionTextView(Landroid/widget/TextView;)V

    const v3, 0x7f0a0788

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setCompanionTextView(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p1, v2, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setBatteryChartView(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    :cond_0
    const-string p0, "BatteryHistoryPreference"

    const-string p1, "onBindViewHolder"

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
