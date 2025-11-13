.class public final Lcom/android/settings/fuelgauge/batteryusage/bugreport/BugReportContentProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "unsupported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const/4 p1, 0x0

    const/4 p3, 0x1

    const-string v0, "LogUtils"

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "BugReportContentProvider"

    if-nez p0, :cond_0

    const-string p0, "failed to dump BatteryUsage state: null context"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "failed to dump BatteryUsage state: null application context"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isWorkProfile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "ignore battery usage states dump in the work profile"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v1, "dump BatteryUsage and AppUsage states:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->DUMP_TIME_OFFSET:Ljava/time/Duration;

    const-string v1, "\n\tApp Optimization Mode Event History:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->getAllEvents(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p2, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->dumpListItems(Ljava/io/PrintWriter;Ljava/util/List;Ljava/util/function/Function;)V

    :try_start_0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryReattributeDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryReattributeDao;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->dumpBatteryReattributeDatabaseHist(Lcom/android/settings/fuelgauge/batteryusage/db/BatteryReattributeDao;Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "failed to run dumpBatteryReattributeDatabaseHist()"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v1, "\nBattery PeriodicJob History:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/BatteryUsageLogUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "battery_usage_logs_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLog;->getDefaultInstance()Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->parseProtoFromString(Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLog;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLog;->getLogEntryList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "\tnothing to dump"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/bugreport/BatteryUsageLogUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/BatteryUsageLogUtils$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v1, "BatteryLevelChanged"

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-static {p0, p2, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BatteryPlugging"

    const-string v2, "com.android.settings.battery.action.ACTION_BATTERY_PLUGGING"

    invoke-static {p0, p2, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BatteryUnplugging"

    const-string v2, "com.android.settings.battery.action.ACTION_BATTERY_UNPLUGGING"

    invoke-static {p0, p2, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ClearBatteryCacheData"

    const-string v2, "com.android.settings.battery.action.CLEAR_BATTERY_CACHE_DATA"

    invoke-static {p0, p2, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LastLoadFullChargeTime"

    const-string v2, "last_load_full_charge_time"

    invoke-static {p0, p2, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LastUploadFullChargeTime"

    const-string v2, "last_upload_full_charge_time"

    invoke-static {p0, p2, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "battery_usage_shared_prefs"

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const-string v3, "dismissed_power_anomaly_keys"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t\tDismissedPowerAnomalyKeys: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryStateDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;

    move-result-object v1

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->DUMP_TIME_OFFSET:Ljava/time/Duration;

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$$ExternalSyntheticLambda1;-><init>(IJ)V

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v1, p3, p1, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "\n\tBattery DatabaseHistory:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "distinct timestamp count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    :goto_3
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->appUsageEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;

    move-result-object v0

    const-string v1, "\n\tApp DatabaseHistory:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->DUMP_TIME_OFFSET_FOR_ENTRY:Ljava/time/Duration;

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl$$ExternalSyntheticLambda1;-><init>(J)V

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v0, p3, p1, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->dumpListItems(Ljava/io/PrintWriter;Ljava/util/List;Ljava/util/function/Function;)V

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryUsageSlotDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n\tBattery Usage Slot TimeZone ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "\n\tBattery Usage Slot DatabaseHistory:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->getLastFullChargeTimestamp(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl$$ExternalSyntheticLambda1;-><init>(J)V

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v0, p3, p1, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->dumpListItems(Ljava/io/PrintWriter;Ljava/util/List;Ljava/util/function/Function;)V

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;

    move-result-object v0

    const-string v1, "\n\tBattery Event DatabaseHistory:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->getLastFullChargeTimestamp(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl$$ExternalSyntheticLambda2;-><init>(J)V

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v0, p3, p1, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->dumpListItems(Ljava/io/PrintWriter;Ljava/util/List;Ljava/util/function/Function;)V

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryStateDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;

    move-result-object p0

    const-string v0, "\n\tBatteryState DatabaseHistory:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$$ExternalSyntheticLambda1;-><init>(IJ)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p0, p3, p1, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p2, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->dumpListItems(Ljava/io/PrintWriter;Ljava/util/List;Ljava/util/function/Function;)V

    return-void
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "unsupported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "unsupported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "unsupported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "unsupported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
