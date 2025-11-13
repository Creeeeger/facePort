.class public final Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/datastore/BackupRestoreEntity;


# instance fields
.field public final mAllowlistedApps:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/settings/fuelgauge/BatterySettingsStorage;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/BatterySettingsStorage;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity;->this$0:Lcom/android/settings/fuelgauge/BatterySettingsStorage;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity;->mAllowlistedApps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final backup(Lcom/android/settingslib/datastore/BackupContext;Ljava/io/OutputStream;)Lcom/android/settingslib/datastore/EntityBackupResult;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity;->this$0:Lcom/android/settings/fuelgauge/BatterySettingsStorage;

    iget-object v4, v3, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->mApplication:Landroid/app/Application;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getInstalledApplications(Landroid/content/Context;Landroid/content/pm/IPackageManager;)Landroid/util/ArraySet;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, [Landroid/content/pm/ApplicationInfo;

    new-instance v4, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticLambda1;

    const/4 v7, 0x2

    invoke-direct {v4, v7}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    array-length v4, v6

    const-string v7, "BatterySettingsStorage"

    if-nez v4, :cond_2

    const-string v0, "no data found in the getInstalledApplications()"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settingslib/datastore/EntityBackupResult;->DELETE:Lcom/android/settingslib/datastore/EntityBackupResult;

    return-object v0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->mApplication:Landroid/app/Application;

    const-class v9, Landroid/app/AppOpsManager;

    invoke-virtual {v8, v9}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager;

    iget-object v9, v3, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->mApplication:Landroid/app/Application;

    const-string v10, "battery_optimize_backup_historical_logs"

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iget-object v10, v3, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->mApplication:Landroid/app/Application;

    invoke-static {v10}, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->getAllEvents(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticLambda1;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v12, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticLambda1;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v11, v12}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    array-length v11, v6

    move v12, v5

    :goto_1
    if-ge v5, v11, :cond_6

    aget-object v13, v6, v5

    iget v14, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 p1, v11

    const/16 v11, 0x46

    invoke-virtual {v8, v11, v14, v15}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    iget v14, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget v11, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->getResetOptimizationMode()I

    move-result v11

    goto :goto_2

    :cond_3
    iget-object v14, v0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity;->mAllowlistedApps:Ljava/util/List;

    iget-object v15, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v11, v14}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(IZ)I

    move-result v11

    :goto_2
    const/4 v14, 0x3

    if-eq v11, v14, :cond_5

    if-eqz v11, :cond_5

    iget-object v14, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v15, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v3, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->mApplication:Landroid/app/Application;

    move-object/from16 v16, v3

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object v3

    invoke-static {v0, v3, v14, v15}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "backupOptimizationMode: "

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->BACKUP:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    iget-object v3, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mode: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v0, v3, v11}, Lcom/android/settings/fuelgauge/BatteryOptimizeLogUtils;->writeLog(Landroid/content/SharedPreferences;Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v16, v3

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v3, v16

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    move-object/from16 v3, p2

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    array-length v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "backup getInstalledApplications():%d count=%d in %d/ms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settingslib/datastore/EntityBackupResult;->UPDATE:Lcom/android/settingslib/datastore/EntityBackupResult;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "optimization_mode_list"

    return-object p0
.end method

.method public final restore(Lcom/android/settingslib/datastore/RestoreContext;Ljava/io/InputStream;)V
    .locals 0

    invoke-virtual {p2}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity;->this$0:Lcom/android/settings/fuelgauge/BatterySettingsStorage;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->mOptimizationModeBytes:[B

    return-void
.end method
