.class public final Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;

.field public static final appOptimizationModeLock:Ljava/lang/Object;

.field public static final defaultInstance:Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->appOptimizationModeLock:Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->defaultInstance:Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    return-void
.end method

.method public static final deleteAppOptimizationModeEventByUid(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->appOptimizationModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getAllEvents(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->appOptimizationModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->getAppOptModeEventsMap(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v1, "<get-values>(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getAppOptModeEventsMap(Landroid/content/Context;)Landroid/util/ArrayMap;
    .locals 5

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0

    :cond_2
    new-instance v1, Landroid/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->defaultInstance:Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-static {v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->parseProtoFromString(Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    const-string v4, "parseProtoFromString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "app_optimization_mode_shared_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic getUNLIMITED_EXPIRE_TIME$annotations()V
    .locals 0

    return-void
.end method

.method public static updateSharedPreferences(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v2, "encodeToString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final updateAppOptModeExpirationInternal(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;[JLkotlin/jvm/functions/Function2;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[J",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "uids"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "packageNames"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "optimizationModes"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "expirationTimes"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "getBatteryOptimizeUtils"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->appOptimizationModeLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->getAppOptModeEventsMap(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v14

    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v7, :cond_3

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;

    sget-object v16, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->EXTERNAL_UPDATE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    move-object/from16 v2, p1

    move/from16 p0, v3

    move v3, v5

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v5, p0

    move/from16 v20, v6

    move-object/from16 v6, v16

    move/from16 v16, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->updateBatteryOptimizationMode(Landroid/content/Context;ILjava/lang/String;ILcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;)I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->getResetOptimizationMode()I

    move-result v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    move v2, v1

    :goto_1
    aget-wide v3, v11, v20

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    const-string v5, "AppOptModeSharedPreferencesUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setOptimizationMode("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v18

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with expiration time "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    move/from16 v8, v19

    invoke-static {v6, v8}, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->-$$Nest$msetUid(Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;I)V

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-static {v6, v7}, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->-$$Nest$msetPackageName(Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-static {v6, v2}, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->-$$Nest$msetResetOptimizationMode(Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;I)V

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-static {v2, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->-$$Nest$msetExpirationTime(Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;J)V

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v8, p2

    move/from16 v7, v16

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v15}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    invoke-static {v0, v15}, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->updateSharedPreferences(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v13

    return-void

    :goto_3
    monitor-exit v13

    throw v0
.end method

.method public final updateBatteryOptimizationMode(Landroid/content/Context;ILjava/lang/String;ILcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;)I
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "packageName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "action"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "batteryOptimizeUtils"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isDisabledForOptimizeModeOnly()Z

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-nez p0, :cond_0

    invoke-virtual {p6}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp()Z

    move-result p0

    if-nez p0, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    const-string v0, "AppOptModeSharedPreferencesUtils"

    if-nez p0, :cond_1

    const-string p0, "Fail to update immutable optimization mode for: "

    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    invoke-virtual {p6, p2}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(Z)I

    move-result p0

    invoke-virtual {p6, p4, p5}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppUsageState(ILcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;)V

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setAppUsageState("

    const-string p5, ") to "

    const-string p6, " with action = "

    invoke-static {p4, p2, p3, p5, p6}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
