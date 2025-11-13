.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelect(I)V
    .locals 4

    const-string v0, "BatteryChartPreferenceController"

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget p0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget p0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "onHourlyChartSelect:"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()V

    iget-object p0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    if-ne p1, v1, :cond_2

    const/16 p1, 0x6e7

    goto :goto_0

    :cond_2
    const/16 p1, 0x6e6

    :goto_0
    iget v0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    iget-object v1, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    iget-object p0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mOnSelectedIndexUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_3

    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->onSelectedSlotDataUpdated()V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget p0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    if-ne p0, p1, :cond_4

    goto :goto_3

    :cond_4
    const-string p0, "onDailyChartSelect:"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    iput v1, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()V

    iget-object p0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    if-ne p1, v1, :cond_5

    const/16 p1, 0x708

    goto :goto_2

    :cond_5
    const/16 p1, 0x707

    :goto_2
    iget v0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    iget-object v1, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    iget-object p0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mOnSelectedIndexUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_6

    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->onSelectedSlotDataUpdated()V

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
