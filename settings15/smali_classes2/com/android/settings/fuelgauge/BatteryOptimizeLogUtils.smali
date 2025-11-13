.class public abstract Lcom/android/settings/fuelgauge/BatteryOptimizeLogUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final MAX_ENTRIES:I = 0x28


# direct methods
.method public static getPackageNameWithUserId(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "battery_optimize_historical_logs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static writeLog(Landroid/content/SharedPreferences;Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;->newBuilder()Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;

    invoke-static {v1, p2}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;->-$$Nest$msetPackageName(Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p2, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;

    invoke-static {p2, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;->-$$Nest$msetAction(Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;)V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;

    invoke-static {p1, p3}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;->-$$Nest$msetActionDescription(Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p3, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p3, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;

    invoke-static {p3, p1, p2}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;->-$$Nest$msetTimestamp(Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;J)V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;

    const-string p2, ""

    const-string p3, "battery_optimize_logs_key"

    invoke-interface {p0, p3, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog;->getDefaultInstance()Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->parseProtoFromString(Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog;

    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Lcom/google/protobuf/GeneratedMessageLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    sget-object v2, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    check-cast v0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog$Builder;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog;->getLogEntryCount()I

    move-result p2

    const/16 v1, 0x28

    if-lt p2, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p2, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog;

    invoke-static {p2}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog;->-$$Nest$mremoveLogEntry(Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p2, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog;

    invoke-static {p2, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog;->-$$Nest$maddLogEntry(Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog;Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry;)V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLog;

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
