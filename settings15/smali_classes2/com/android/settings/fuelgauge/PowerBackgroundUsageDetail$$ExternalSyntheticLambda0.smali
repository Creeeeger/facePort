.class public final synthetic Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;II)V
    .locals 0

    iput p3, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;

    iput p2, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "unknown"

    :cond_0
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getLoggingPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "extra_power_usage_amount"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v2, 0x815

    const/16 v4, 0x807

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;

    iget p0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mOptimizationMode:I

    if-eq p0, v1, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    iget v1, v1, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->deleteAppOptimizationModeEventByUid(Landroid/content/Context;I)V

    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->LEAVE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, "unknown"

    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3, v2}, Lcom/android/settings/fuelgauge/BatteryOptimizeLogUtils;->getPackageNameWithUserId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mLogStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeLogUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeLogUtils;->writeLog(Landroid/content/SharedPreferences;Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
