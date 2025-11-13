.class public final Lcom/android/settings/fuelgauge/BatteryInfo$2;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$batteryUsageStats:Landroid/os/BatteryUsageStats;

.field public final synthetic val$callback:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda1;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$shortString:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda1;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$batteryUsageStats:Landroid/os/BatteryUsageStats;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$callback:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    iget-object v0, v1, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$batteryUsageStats:Landroid/os/BatteryUsageStats;

    const/4 v2, 0x1

    const-string v3, "BatteryInfo"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    const-class v5, Landroid/os/BatteryStatsManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsManager;

    invoke-virtual {v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "getBatteryInfo() from getBatteryUsageStats()"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/os/BatteryUsageStats$Builder;

    new-array v5, v4, [Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "time for getStats"

    invoke-static {v6, v7, v3, v8}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getPowerUsageFeatureProvider()Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sget v9, Lcom/android/settingslib/utils/PowerUtil;->$r8$clinit:I

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "plugged"

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    move v2, v4

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getBatteryTimeRemainingMs()J

    move-result-wide v10

    :goto_3
    move-wide v13, v10

    goto :goto_4

    :cond_3
    const-wide/16 v10, 0x0

    goto :goto_3

    :goto_4
    new-instance v2, Lcom/android/settingslib/fuelgauge/Estimate;

    const/16 v17, 0x0

    const-wide/16 v15, -0x1

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JJZ)V

    const-string v4, "time for regular BatteryInfo"

    invoke-static {v6, v7, v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v9, v0, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settingslib/fuelgauge/Estimate;)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v1

    if-eqz v5, :cond_4

    :try_start_1
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v2, v0

    const-string v0, "BatteryUsageStats.close() failed"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_5
    return-object v1

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No feature factory configured"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$callback:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->$r8$lambda$5bxiOjP3LXMGm8DHQzAUIJmj7sE(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    const-string p0, "BatteryInfo"

    const-string p1, "time for callback"

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
