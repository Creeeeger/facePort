.class public abstract Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static sUsageSource:I = -0x1


# direct methods
.method public static convertToBatteryDiffEntry(Landroid/content/Context;Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
    .locals 31

    move-object/from16 v1, p0

    new-instance v30, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-object/from16 v0, v30

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getUid()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getUserId()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getIsHidden()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getComponentId()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getConsumerType()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getForegroundUsageTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getForegroundServiceUsageTime()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getBackgroundUsageTime()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getScreenOnTime()J

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getConsumePower()D

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getForegroundUsageConsumePower()D

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getForegroundServiceUsageConsumePower()D

    move-result-wide v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getBackgroundUsageConsumePower()D

    move-result-wide v26

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->getCachedUsageConsumePower()D

    move-result-wide v28

    invoke-direct/range {v0 .. v29}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IJJJJDDDDD)V

    return-object v30
.end method

.method public static convertToBatteryUsageDiff(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationModeCache;)Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;
    .locals 3

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUid:J

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetUid(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;J)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserId:J

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetUserId(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;J)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsHidden:Z

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetIsHidden(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;Z)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mComponentId:I

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetComponentId(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;I)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumerType:I

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetConsumerType(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;I)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;D)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetForegroundUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;D)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetBackgroundUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;D)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetForegroundServiceUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;D)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetCachedUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;D)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetForegroundUsageTime(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;J)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageTimeInMs:J

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetForegroundServiceUsageTime(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;J)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetBackgroundUsageTime(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;J)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetScreenOnTime(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;J)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetKey(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mLegacyPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetPackageName(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mLegacyLabel:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->-$$Nest$msetLabel(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    return-object p0
.end method

.method public static getEffectivePackageName(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->sUsageSource:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "battery_usage_shared_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_usage_source"

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/app/usage/IUsageStatsManager;->getUsageSource()I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "DatabaseUtils"

    const-string v3, "Failed to getUsageSource"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v2

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    move p0, p1

    :goto_1
    sput p0, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->sUsageSource:I

    :cond_2
    sget p0, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->sUsageSource:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    if-eq p0, v2, :cond_3

    const-string p1, "Unexpected usage source: "

    const-string p3, "ConvertUtils"

    invoke-static {p0, p1, p3}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p2

    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    move-object p2, p3

    :cond_5
    return-object p2
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static utcToLocalTimeForLogging(J)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "MMM dd,yyyy HH:mm:ss"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
