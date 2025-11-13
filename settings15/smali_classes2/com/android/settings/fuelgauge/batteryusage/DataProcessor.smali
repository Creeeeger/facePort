.class public abstract Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final APP_USAGE_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final BATTERY_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_USAGE_DURATION_FOR_INCOMPLETE_INTERVAL:J = 0x7530L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

.field public static final EMPTY_BATTERY_MAP:Ljava/util/Map;

.field static final SELECTED_INDEX_ALL:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static sDebug:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static sTestCurrentTimeMillis:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static sTestSystemAppsPackageNames:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/content/ContentValues;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->APP_USAGE_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->BATTERY_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sDebug:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sTestCurrentTimeMillis:J

    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    return-void
.end method

.method public static buildAppUsagePeriodList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;JJ)Ljava/util/Map;
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;",
            ">;JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;>;>;"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object v5

    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->ACTIVITY_RESUMED:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    if-eq v5, v6, :cond_3

    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->ACTIVITY_STOPPED:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->DEVICE_SHUTDOWN:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    if-ne v5, v6, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getInstanceId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    return-object v1

    :cond_6
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_7
    move-object/from16 v12, p0

    move-object/from16 v15, p2

    move-wide/from16 v10, p3

    move-wide/from16 v13, p5

    :cond_8
    move-object/from16 v17, v0

    goto :goto_3

    :cond_9
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getUserId()J

    move-result-wide v8

    sget-object v10, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v12, p0

    invoke-static {v12, v10, v11, v7}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getEffectivePackageName(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v10, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->APP_USAGE_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-wide/from16 v10, p3

    move-wide/from16 v13, p5

    invoke-static {v6, v10, v11, v13, v14}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->buildAppUsagePeriodListPerInstance(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v6

    move-object/from16 v15, p2

    invoke-static {v6, v15}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->excludePowerConnectedTimeFromAppUsagePeriodList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;

    move-object/from16 v17, v0

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v17

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v5}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    goto :goto_6

    :cond_e
    move-object v1, v3

    :goto_6
    return-object v1
.end method

.method public static buildAppUsagePeriodListPerInstance(Ljava/util/List;JJ)Ljava/util/List;
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object v7

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->ACTIVITY_RESUMED:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    if-ne v3, v4, :cond_1

    iget-object v0, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->hasStartTime()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setStartTime(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->ACTIVITY_STOPPED:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    const-wide/16 v8, 0x7530

    if-ne v3, v4, :cond_3

    invoke-virtual {v7, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setEndTime(J)V

    iget-object v0, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->hasStartTime()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getEndTime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-virtual {v7, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setStartTime(J)V

    :cond_2
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->validateAndAddToPeriodList(Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;JJ)V

    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object v0

    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->DEVICE_SHUTDOWN:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    if-ne v0, v3, :cond_0

    iget-object v0, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->hasStartTime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide v3

    add-long/2addr v3, v8

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setEndTime(J)V

    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->validateAndAddToPeriodList(Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;JJ)V

    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()V

    goto/16 :goto_0

    :cond_4
    iget-object p0, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->hasStartTime()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide v0

    cmp-long p0, v0, p3

    if-gez p0, :cond_5

    invoke-virtual {v7, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setEndTime(J)V

    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->validateAndAddToPeriodList(Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;JJ)V

    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()V

    :cond_5
    return-object v6
.end method

.method public static computeUsageDiffDataPerEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/Map;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clone()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageTimeInMs:J

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageTimeInMs:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageTimeInMs:J

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    iget-wide p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    add-double/2addr v2, p0

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    :goto_0
    return-void
.end method

.method public static convertToBatteryHistEntry(Ljava/util/List;Landroid/os/BatteryUsageStats;)Ljava/util/List;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;",
            "Landroid/os/BatteryUsageStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda4;-><init>(Landroid/os/BatteryUsageStats;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "DataProcessor"

    const-string p1, "batteryEntryList is null or empty in convertToBatteryHistEntry()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static excludePowerConnectedTimeFromAppUsagePeriodList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide v4

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const-wide/16 v7, 0x0

    if-ge v2, v6, :cond_6

    move-object/from16 v6, p1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;

    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getTimestamp()J

    move-result-wide v10

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide v12

    cmp-long v10, v10, v12

    sget-object v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->POWER_DISCONNECTED:Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    sget-object v12, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->POWER_CONNECTED:Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    if-gez v10, :cond_3

    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    move-result-object v10

    if-ne v10, v12, :cond_1

    :goto_2
    move-wide v4, v7

    goto :goto_3

    :cond_1
    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    move-result-object v7

    if-ne v7, v11, :cond_2

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide v4

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getTimestamp()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getEndTime()J

    move-result-wide v15

    cmp-long v10, v13, v15

    if-lez v10, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    move-result-object v10

    if-ne v10, v12, :cond_5

    cmp-long v10, v4, v7

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setStartTime(J)V

    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setEndTime(J)V

    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    move-result-object v7

    if-ne v7, v11, :cond_2

    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getTimestamp()J

    move-result-wide v4

    goto :goto_3

    :cond_6
    move-object/from16 v6, p1

    :goto_4
    cmp-long v7, v4, v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setStartTime(J)V

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getEndTime()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setEndTime(J)V

    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method public static findNearestTimestamp(Ljava/util/List;J)[J
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)[J"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    const-wide v5, 0x7fffffffffffffffL

    aput-wide v5, v0, v4

    new-instance v7, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v7, p1, p2, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda2;-><init>(J[J)V

    invoke-interface {p0, v7}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    aget-wide p0, v0, v1

    cmp-long p2, p0, v2

    const-wide/16 v2, 0x0

    if-nez p2, :cond_0

    move-wide p0, v2

    :cond_0
    aput-wide p0, v0, v1

    aget-wide p0, v0, v4

    cmp-long p2, p0, v5

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, p0

    :goto_0
    aput-wide v2, v0, v4

    return-object v0
.end method

.method public static generateBatteryDiffData(Landroid/content/Context;Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;JLjava/util/List;Ljava/util/Set;Ljava/util/Set;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
    .locals 42
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    if-eqz p4, :cond_6

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget v4, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object/from16 v4, p1

    iget-object v6, v4, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mVisibleUserIds:Ljava/util/List;

    iget-wide v7, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    :cond_2
    new-instance v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-object v12, v5

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v18

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageConsumePower:D

    move-wide/from16 v34, v6

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageConsumePower:D

    move-wide/from16 v36, v6

    iget-wide v14, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    move-wide/from16 v16, v6

    iget-boolean v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mIsHidden:Z

    move/from16 v19, v6

    iget v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    move/from16 v20, v6

    iget-object v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v6

    iget-object v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    move-object/from16 v22, v6

    iget v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    move/from16 v23, v6

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-wide/from16 v24, v6

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageTimeInMs:J

    move-wide/from16 v26, v6

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    move-wide/from16 v28, v6

    const-wide/16 v30, 0x0

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    move-wide/from16 v32, v6

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageConsumePower:D

    move-wide/from16 v38, v6

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mCachedUsageConsumePower:D

    move-wide/from16 v40, v6

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v41}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IJJJJDDDDD)V

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v15, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    sget-wide v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sTestCurrentTimeMillis:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_5

    move-wide v4, v2

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v4, v0

    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->getBatteryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v7

    const/4 v14, 0x0

    const/16 v6, 0x64

    const-wide/16 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v14}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;-><init>(Landroid/content/Context;JJIIJLjava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V

    return-object v15

    :cond_6
    :goto_2
    const-string v2, "DataProcessor"

    const-string v3, "batteryHistEntryList is null or empty in generateBatteryDiffData()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    sget-wide v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sTestCurrentTimeMillis:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_7

    move-wide v4, v2

    goto :goto_3

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v4, v0

    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->getBatteryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v7

    const/4 v14, 0x0

    const/16 v6, 0x64

    const-wide/16 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v14}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;-><init>(Landroid/content/Context;JJIIJLjava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V

    return-object v15
.end method

.method public static generateBatteryEntryListFromBatteryUsageStats(Landroid/content/Context;Landroid/os/BatteryUsageStats;)Ljava/util/List;
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v0, 0x0

    const-string v1, "DataProcessor"

    if-nez v9, :cond_0

    const-string v2, "batteryUsageStats is null content"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-instance v2, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v8}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    const-string v3, "screen.full.display"

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v4, v2, v4

    const/4 v11, 0x1

    if-ltz v4, :cond_1

    move v4, v11

    goto :goto_0

    :cond_1
    move v4, v10

    :goto_0
    if-nez v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "shouldShowBatteryAttributionList(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v4, :cond_3

    return-object v0

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getDischargePercentage()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v6

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    move v4, v10

    :goto_1
    if-ge v4, v5, :cond_7

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UidBatteryConsumer;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getRealUid(Landroid/os/UidBatteryConsumer;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideUidBatteryConsumerUnconditionally(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move/from16 v16, v4

    move/from16 v21, v5

    move-object/from16 v19, v6

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v12, v2, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideUidBatteryConsumer(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z

    move-result v16

    invoke-virtual {v14, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_5

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    const/16 v17, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v3

    move/from16 v3, v16

    move/from16 v16, v4

    move/from16 v4, v20

    move/from16 v21, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v18

    move/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    move/from16 v16, v4

    move/from16 v21, v5

    move-object/from16 v19, v6

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    invoke-virtual {v2}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide v5

    add-double/2addr v5, v3

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundMs:J

    invoke-virtual {v2, v11}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundMs:J

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundServiceMs:J

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundServiceMs:J

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInBackgroundMs:J

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v17

    add-long v3, v17, v3

    iput-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInBackgroundMs:J

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInForeground:D

    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->BATTERY_DIMENSIONS:[Landroid/os/BatteryConsumer$Dimensions;

    aget-object v1, v6, v10

    invoke-static {v2, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->safeGetConsumedPower(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v22

    add-double v3, v22, v3

    iput-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInForeground:D

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInForegroundService:D

    aget-object v1, v6, v11

    invoke-static {v2, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->safeGetConsumedPower(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v22

    add-double v3, v22, v3

    iput-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInForegroundService:D

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInBackground:D

    aget-object v1, v6, v5

    invoke-static {v2, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->safeGetConsumedPower(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v22

    add-double v3, v22, v3

    iput-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInBackground:D

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInCached:D

    const/4 v1, 0x3

    aget-object v1, v6, v1

    invoke-static {v2, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->safeGetConsumedPower(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v5

    add-double/2addr v5, v3

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInCached:D

    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    :cond_6
    :goto_2
    add-int/lit8 v4, v16, 0x1

    move-object/from16 v6, v19

    move/from16 v5, v21

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v9, v10}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v7

    move v5, v10

    :goto_3
    const/16 v0, 0x13

    if-ge v5, v0, :cond_a

    new-instance v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    invoke-virtual {v7, v5}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v3

    invoke-virtual {v7, v5}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v16

    const/4 v0, 0x7

    if-eq v5, v0, :cond_9

    const/16 v0, 0xc

    if-ne v5, v0, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v18, v10

    goto :goto_5

    :cond_9
    :goto_4
    move/from16 v18, v11

    :goto_5
    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v5

    move/from16 v19, v5

    move-object v10, v6

    move-wide/from16 v5, v16

    move-object/from16 v16, v7

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;IDJZ)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v7, v16

    const/4 v10, 0x0

    goto :goto_3

    :cond_a
    move-object/from16 v16, v7

    const/16 v6, 0x3e8

    move v7, v6

    :goto_6
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryConsumer;->getCustomPowerComponentCount()I

    move-result v0

    add-int/2addr v0, v6

    if-ge v7, v0, :cond_b

    new-instance v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    move-object/from16 v11, v16

    invoke-virtual {v11, v7}, Landroid/os/BatteryConsumer;->getCustomPowerComponentName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v7}, Landroid/os/BatteryConsumer;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;ILjava/lang/String;D)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getUserBatteryConsumers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v10, :cond_c

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UserBatteryConsumer;

    new-instance v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v17, v7

    move-object v7, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v17

    goto :goto_7

    :cond_c
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_d

    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->COMPARATOR:Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$$ExternalSyntheticLambda0;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v0

    const/4 v10, 0x0

    :goto_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_f

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    iget-wide v3, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, 0x0

    cmpl-double v7, v0, v5

    if-nez v7, :cond_e

    goto :goto_a

    :cond_e
    div-double/2addr v3, v0

    int-to-double v5, v13

    mul-double/2addr v5, v3

    :goto_a
    iput-wide v5, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPercent:D

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_f
    return-object v15
.end method

.method public static generateBatteryUsageMap(Landroid/content/Context;Ljava/util/Map;Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)Ljava/util/Map;
    .locals 10

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object p2, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    move v4, v2

    :goto_1
    move-object v5, p2

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mTimestamps:Ljava/util/List;

    move v7, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-ge v7, v8, :cond_3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    invoke-virtual {v6, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_5

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getAccumulatedUsageDiffData(Landroid/content/Context;Ljava/util/Collection;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;-><init>(Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {p2, v4}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getAccumulatedUsageDiffData(Landroid/content/Context;Ljava/util/Collection;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "DataProcessor"

    if-eqz p0, :cond_e

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_9

    :cond_7
    move p0, v2

    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_d

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v4, "no ["

    if-eqz p2, :cond_c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    iget-object p2, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mTimestamps:Ljava/util/List;

    move v6, v2

    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    if-ge v6, v7, :cond_b

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v0, "]["

    const-string v1, "] in batteryUsageMap, hourly size is: "

    invoke-static {v4, v0, p0, v6, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_c
    :goto_8
    const-string p2, "][SELECTED_INDEX_ALL] in batteryUsageMap, daily size is: "

    invoke-static {p0, v4, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_d
    return-object v0

    :cond_e
    :goto_9
    const-string p0, "no [SELECTED_INDEX_ALL][SELECTED_INDEX_ALL] in batteryUsageMap"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAccumulatedUsageDiffData(Landroid/content/Context;Ljava/util/Collection;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
    .locals 16

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    move-wide v9, v4

    move v7, v6

    move v8, v7

    move-wide v3, v2

    move-wide v5, v9

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v13, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mStartTimestamp:J

    cmp-long v15, v3, v13

    if-lez v15, :cond_2

    iget v7, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mStartBatteryLevel:I

    move-wide v3, v13

    :cond_2
    iget-wide v13, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mEndTimestamp:J

    cmp-long v15, v5, v13

    if-lez v15, :cond_3

    iget v8, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mEndBatteryLevel:I

    move-wide v5, v13

    :cond_3
    iget-wide v13, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mScreenOnTime:J

    add-long/2addr v9, v13

    iget-object v13, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-static {v14, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->computeUsageDiffDataPerEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    iget-object v2, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-static {v13, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->computeUsageDiffDataPerEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    const/4 v15, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v15}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;-><init>(Landroid/content/Context;JJIIJLjava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V

    return-object v0
.end method

.method public static getBatteryDiffDataMap(Landroid/content/Context;Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;
    .locals 82

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1b

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    move-object v0, v4

    move/from16 v31, v6

    goto/16 :goto_12

    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    iget-object v7, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mTimestamps:Ljava/util/List;

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    add-int/lit8 v11, v8, 0x1

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    iget-object v13, v13, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mLevels:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    iget-object v13, v13, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->mLevels:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v13, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    invoke-interface {v2, v9, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/settings/fuelgauge/batteryusage/TimestampUtils;->getSharpHourCalendar(J)Ljava/util/Calendar;

    move-result-object v5

    const/16 v1, 0xb

    invoke-virtual {v5, v1, v10}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v5, v16, v18

    if-gez v5, :cond_2

    sget-object v5, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/32 v18, 0x36ee80

    add-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    invoke-interface {v2, v12, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    if-eqz v3, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x0

    :goto_4
    const-wide/16 v22, 0x0

    if-eqz v5, :cond_9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v1, v24

    check-cast v1, Ljava/lang/Long;

    move/from16 v29, v11

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mVisibleUserIds:Ljava/util/List;

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v10, 0x1

    xor-int/2addr v2, v10

    if-nez v2, :cond_5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_5
    move-object/from16 v2, p3

    move/from16 v11, v29

    const/4 v10, 0x1

    goto :goto_5

    :cond_6
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_7

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_8
    move/from16 v29, v11

    invoke-static {v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getScreenOnTime(Ljava/util/List;)J

    move-result-wide v1

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_7

    :cond_9
    move/from16 v29, v11

    move-wide/from16 v1, v22

    :goto_7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map;

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_a

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    const-wide/16 v22, 0x0

    const/16 v28, 0x0

    move-object v14, v1

    move-object/from16 v15, p0

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v26, p5

    move-object/from16 v27, p6

    invoke-direct/range {v14 .. v28}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;-><init>(Landroid/content/Context;JJIIJLjava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V

    move-object v0, v4

    move/from16 v31, v6

    move-object/from16 v30, v7

    goto/16 :goto_11

    :cond_a
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v3, p4

    goto :goto_8

    :cond_b
    invoke-virtual {v11}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_c

    goto :goto_9

    :cond_c
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move-object/from16 v27, v3

    const/4 v3, 0x0

    :goto_a
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_e

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v30, v7

    move-object/from16 v7, v28

    check-cast v7, Ljava/util/Map;

    move-object/from16 v28, v15

    sget-object v15, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-interface {v7, v11, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_d

    if-eq v7, v15, :cond_d

    move-object v3, v7

    :cond_d
    move-object/from16 v15, v28

    move-object/from16 v7, v30

    goto :goto_a

    :cond_e
    move-object/from16 v30, v7

    move-object/from16 v28, v15

    if-nez v3, :cond_f

    move-object/from16 v3, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v30

    goto :goto_9

    :cond_f
    move v11, v6

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    iget v15, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    move/from16 v31, v11

    const/4 v11, 0x1

    if-ne v15, v11, :cond_10

    iget-object v11, v0, Lcom/android/settings/fuelgauge/batteryusage/UserIdsSeries;->mVisibleUserIds:Ljava/util/List;

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    if-eqz v0, :cond_10

    move-object/from16 v0, p1

    move-object/from16 v3, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v30

    move/from16 v6, v31

    goto :goto_9

    :cond_10
    const-wide/16 v32, 0x0

    move-wide/from16 v36, v1

    move-object/from16 v24, v8

    move-object/from16 v38, v9

    move-wide/from16 v1, v22

    move-wide v8, v1

    move-wide/from16 v34, v8

    move-wide/from16 v39, v32

    move-wide/from16 v41, v39

    move-wide/from16 v43, v41

    move-wide/from16 v45, v43

    move-wide/from16 v47, v45

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v26

    move-object/from16 v49, v4

    add-int/lit8 v4, v26, -0x1

    if-ge v0, v4, :cond_14

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v11, v26

    check-cast v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-object/from16 v26, v5

    move-wide/from16 v50, v6

    iget-wide v5, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-object v7, v12

    move-wide/from16 v52, v13

    iget-wide v12, v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    cmp-long v14, v12, v5

    if-lez v14, :cond_11

    sub-long/2addr v12, v5

    goto :goto_c

    :cond_11
    move-wide/from16 v12, v22

    :goto_c
    add-long v34, v12, v34

    iget-wide v5, v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageTimeInMs:J

    iget-wide v12, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageTimeInMs:J

    cmp-long v14, v5, v12

    if-lez v14, :cond_12

    sub-long/2addr v5, v12

    goto :goto_d

    :cond_12
    move-wide/from16 v5, v22

    :goto_d
    add-long/2addr v1, v5

    iget-wide v5, v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v12, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    cmp-long v14, v5, v12

    if-lez v14, :cond_13

    sub-long/2addr v5, v12

    goto :goto_e

    :cond_13
    move-wide/from16 v5, v22

    :goto_e
    add-long/2addr v8, v5

    iget-wide v5, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    iget-wide v12, v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    invoke-static {v5, v6, v12, v13}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(DD)D

    move-result-wide v5

    add-double v39, v5, v39

    iget-wide v5, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageConsumePower:D

    iget-wide v12, v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageConsumePower:D

    invoke-static {v5, v6, v12, v13}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(DD)D

    move-result-wide v5

    add-double v41, v5, v41

    iget-wide v5, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageConsumePower:D

    iget-wide v12, v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageConsumePower:D

    invoke-static {v5, v6, v12, v13}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(DD)D

    move-result-wide v5

    add-double v43, v5, v43

    iget-wide v5, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageConsumePower:D

    iget-wide v12, v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageConsumePower:D

    invoke-static {v5, v6, v12, v13}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(DD)D

    move-result-wide v5

    add-double v45, v5, v45

    iget-wide v4, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mCachedUsageConsumePower:D

    iget-wide v11, v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mCachedUsageConsumePower:D

    invoke-static {v4, v5, v11, v12}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(DD)D

    move-result-wide v4

    add-double v47, v4, v47

    move-object v12, v7

    move-object/from16 v5, v26

    move-object/from16 v4, v49

    move-wide/from16 v6, v50

    move-wide/from16 v13, v52

    const/4 v11, 0x1

    goto/16 :goto_b

    :cond_14
    move-object/from16 v26, v5

    move-wide/from16 v50, v6

    move-wide/from16 v52, v13

    const/4 v0, 0x3

    if-ne v15, v0, :cond_15

    iget v0, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    if-nez v0, :cond_15

    move-wide/from16 v4, v36

    goto :goto_f

    :cond_15
    move-wide/from16 v4, v34

    :goto_f
    cmp-long v0, v4, v22

    if-nez v0, :cond_16

    cmp-long v0, v1, v22

    if-nez v0, :cond_16

    cmp-long v0, v8, v22

    if-nez v0, :cond_16

    cmpl-double v0, v39, v32

    if-nez v0, :cond_16

    move-object/from16 v0, p1

    move-object/from16 v8, v24

    move-object/from16 v5, v26

    move-object/from16 v3, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v30

    move/from16 v6, v31

    move-wide/from16 v1, v36

    move-object/from16 v9, v38

    move-object/from16 v4, v49

    move-wide/from16 v13, v52

    goto/16 :goto_9

    :cond_16
    add-long v6, v4, v8

    add-long/2addr v6, v1

    long-to-float v0, v6

    move-wide/from16 v13, v52

    long-to-float v6, v13

    cmpl-float v7, v0, v6

    if-lez v7, :cond_18

    div-float/2addr v6, v0

    sget-boolean v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sDebug:Z

    if-eqz v0, :cond_17

    invoke-static {v4, v5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v8, v9}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v0, v7, v11, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v7, "abnormal usage time %d|%d|%d for:\n%s"

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "DataProcessor"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    long-to-float v0, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v4, v0

    long-to-float v0, v1

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v1, v0

    long-to-float v0, v8

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v8, v0

    float-to-double v6, v6

    mul-double v39, v39, v6

    mul-double v41, v41, v6

    mul-double v43, v43, v6

    mul-double v45, v45, v6

    mul-double v47, v47, v6

    :cond_18
    move-wide/from16 v64, v4

    move-wide/from16 v72, v39

    move-wide/from16 v74, v41

    move-wide/from16 v76, v43

    move-wide/from16 v78, v45

    move-wide/from16 v80, v47

    iget-object v0, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    move-object/from16 v5, v26

    move-wide/from16 v6, v50

    invoke-static {v5, v6, v7, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getScreenOnTime(Ljava/util/Map;JLjava/lang/String;)J

    move-result-wide v6

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide/from16 v70, v6

    sub-long v6, v13, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide/from16 v68, v8

    sub-long/2addr v6, v8

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v66

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-object/from16 v52, v0

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v58

    iget-object v1, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    move-object/from16 v62, v1

    iget v1, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    move/from16 v63, v1

    iget-wide v1, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    move-wide/from16 v54, v1

    iget-wide v1, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    move-wide/from16 v56, v1

    iget-boolean v1, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mIsHidden:Z

    move/from16 v59, v1

    iget v1, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    move/from16 v60, v1

    iget-object v1, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    move-object/from16 v61, v1

    move-object/from16 v53, p0

    invoke-direct/range {v52 .. v81}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IJJJJDDDDD)V

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v24

    goto :goto_10

    :cond_19
    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_10
    move-object/from16 v0, p1

    move-object v8, v1

    move-object/from16 v3, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v30

    move/from16 v6, v31

    move-wide/from16 v1, v36

    move-object/from16 v9, v38

    move-object/from16 v4, v49

    goto/16 :goto_9

    :cond_1a
    move-wide/from16 v36, v1

    move-object/from16 v49, v4

    move/from16 v31, v6

    move-object/from16 v30, v7

    move-object v1, v8

    move-object/from16 v38, v9

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    const/16 v28, 0x0

    move-object v14, v0

    move-object/from16 v15, p0

    move-wide/from16 v22, v36

    move-object/from16 v24, v1

    move-object/from16 v25, v10

    move-object/from16 v26, p5

    move-object/from16 v27, p6

    invoke-direct/range {v14 .. v28}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;-><init>(Landroid/content/Context;JJIIJLjava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V

    move-object v1, v0

    move-object/from16 v0, v49

    :goto_11
    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v0

    move/from16 v8, v29

    move-object/from16 v7, v30

    move/from16 v6, v31

    move-object/from16 v0, p1

    goto/16 :goto_1

    :goto_12
    add-int/lit8 v6, v31, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v0

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_1b
    move-object v0, v4

    return-object v0
.end method

.method public static getBatteryHistListFromFromStatsService(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    const-string v0, "DataProcessor"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v2

    const-class v3, Landroid/os/BatteryStatsManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStatsManager;

    invoke-virtual {v3, v2}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->generateBatteryEntryListFromBatteryUsageStats(Landroid/content/Context;Landroid/os/BatteryUsageStats;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->convertToBatteryHistEntry(Ljava/util/List;Landroid/os/BatteryUsageStats;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "BatteryUsageStats.close() failed"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v2, "load batteryUsageStats:"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method public static getCurrentBatteryHistoryMapFromStatsService(Landroid/content/Context;)Ljava/util/Map;
    .locals 3

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryHistListFromFromStatsService(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method public static getDiffValue(DD)D
    .locals 1

    cmpl-double v0, p2, p0

    if-lez v0, :cond_0

    sub-double/2addr p2, p0

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :goto_0
    return-wide p2
.end method

.method public static getHistoryMapWithExpectedTimestamps(Ljava/util/Map;)Ljava/util/Map;
    .locals 65

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const-string v6, "DataProcessor"

    if-eqz v5, :cond_0

    const-string v0, "empty batteryHistoryMap in getHistoryMapWithExpectedTimestamps()"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-wide v7, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sTestCurrentTimeMillis:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :goto_0
    invoke-static {v3, v7, v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getTimestampSlots(Ljava/util/List;J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move-wide/from16 v46, v1

    move-object v1, v4

    move-object/from16 v44, v6

    goto/16 :goto_16

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-virtual {v4, v11, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v12

    :goto_1
    if-ge v11, v7, :cond_1b

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->findNearestTimestamp(Ljava/util/List;J)[J

    move-result-object v15

    aget-wide v16, v15, v8

    aget-wide v18, v15, v12

    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    const/4 v8, 0x0

    if-nez v15, :cond_4

    const-string v15, "job scheduler is delayed"

    invoke-static {v15, v9, v10, v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v4, v14, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-wide/from16 v46, v1

    move-object/from16 v48, v3

    move-object v1, v4

    move-object/from16 v45, v5

    move-object/from16 v44, v6

    move/from16 v49, v7

    move/from16 v60, v11

    move-object/from16 v51, v13

    const-wide/16 v40, 0x0

    goto/16 :goto_15

    :cond_4
    sub-long v42, v18, v9

    const-wide/16 v20, 0x1388

    cmp-long v15, v42, v20

    const-string v12, "force align into the nearest slot"

    if-gez v15, :cond_5

    invoke-static {v12, v9, v10, v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-virtual {v4, v14, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-wide/16 v40, 0x0

    cmp-long v15, v16, v40

    if-nez v15, :cond_6

    const-string v12, "no lower timestamp slot data"

    invoke-static {v12, v9, v10, v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v4, v14, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v46, v1

    move-object/from16 v48, v3

    move-object v1, v4

    move-object/from16 v45, v5

    move-object/from16 v44, v6

    :goto_3
    move/from16 v49, v7

    move/from16 v60, v11

    move-object/from16 v51, v13

    goto/16 :goto_15

    :cond_6
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-object/from16 v45, v5

    move-object/from16 v44, v6

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTimestamp:J

    move-wide/from16 v46, v1

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBootTimestamp:J

    sub-long/2addr v5, v0

    cmp-long v0, v16, v5

    if-gez v0, :cond_7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    const-wide/32 v0, 0x927c0

    cmp-long v0, v42, v0

    if-gez v0, :cond_9

    const/4 v0, 0x0

    invoke-static {v12, v9, v10, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    invoke-virtual {v4, v14, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    const-string v1, "in the different booting section"

    invoke-static {v1, v9, v10, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v4, v14, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object/from16 v48, v3

    move-object v1, v4

    goto/16 :goto_3

    :goto_5
    const-string v1, "apply interpolation arithmetic"

    invoke-static {v1, v9, v10, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sub-long v1, v18, v16

    long-to-double v1, v1

    sub-long v5, v9, v16

    long-to-double v5, v5

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v48, v3

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v49, v7

    move-object/from16 v7, v16

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v50, v8

    move-object/from16 v8, v16

    check-cast v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    if-eqz v7, :cond_d

    move-object/from16 v52, v12

    move-object/from16 v51, v13

    iget-wide v12, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-object/from16 v53, v14

    move-object/from16 v16, v15

    iget-wide v14, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    cmp-long v12, v14, v12

    if-lez v12, :cond_a

    const/4 v12, 0x1

    goto :goto_7

    :cond_a
    const/4 v12, 0x0

    :goto_7
    iget-wide v13, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    move-wide/from16 v54, v1

    iget-wide v1, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    cmp-long v1, v13, v1

    if-lez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    if-nez v12, :cond_c

    if-eqz v1, :cond_e

    :cond_c
    invoke-virtual {v0, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "abnormal reset condition is found"

    invoke-static {v1, v9, v10, v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    move-object/from16 v15, v16

    move-object/from16 v3, v48

    move/from16 v7, v49

    move-object/from16 v8, v50

    move-object/from16 v13, v51

    move-object/from16 v12, v52

    move-object/from16 v14, v53

    :goto_9
    move-wide/from16 v1, v54

    goto :goto_6

    :cond_d
    move-wide/from16 v54, v1

    move-object/from16 v52, v12

    move-object/from16 v51, v13

    move-object/from16 v53, v14

    move-object/from16 v16, v15

    :cond_e
    div-double v1, v5, v54

    const-wide/16 v12, 0x0

    if-nez v7, :cond_f

    move-wide/from16 v17, v12

    goto :goto_a

    :cond_f
    iget-wide v14, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTotalPower:D

    move-wide/from16 v17, v14

    :goto_a
    iget-wide v14, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTotalPower:D

    move-wide/from16 v19, v14

    move-wide/from16 v21, v1

    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v23

    if-nez v7, :cond_10

    move-wide/from16 v17, v12

    goto :goto_b

    :cond_10
    iget-wide v14, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    move-wide/from16 v17, v14

    :goto_b
    iget-wide v14, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    move-wide/from16 v19, v14

    move-wide/from16 v21, v1

    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v25

    if-nez v7, :cond_11

    move-wide/from16 v17, v12

    goto :goto_c

    :cond_11
    iget-wide v14, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageConsumePower:D

    move-wide/from16 v17, v14

    :goto_c
    iget-wide v14, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageConsumePower:D

    move-wide/from16 v19, v14

    move-wide/from16 v21, v1

    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v27

    if-nez v7, :cond_12

    move-wide/from16 v17, v12

    goto :goto_d

    :cond_12
    iget-wide v14, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageConsumePower:D

    move-wide/from16 v17, v14

    :goto_d
    iget-wide v14, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageConsumePower:D

    move-wide/from16 v19, v14

    move-wide/from16 v21, v1

    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v29

    if-nez v7, :cond_13

    move-wide/from16 v17, v12

    goto :goto_e

    :cond_13
    iget-wide v14, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageConsumePower:D

    move-wide/from16 v17, v14

    :goto_e
    iget-wide v14, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageConsumePower:D

    move-wide/from16 v19, v14

    move-wide/from16 v21, v1

    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v31

    if-nez v7, :cond_14

    :goto_f
    move-wide/from16 v17, v12

    goto :goto_10

    :cond_14
    iget-wide v12, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mCachedUsageConsumePower:D

    goto :goto_f

    :goto_10
    iget-wide v12, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mCachedUsageConsumePower:D

    move-wide/from16 v19, v12

    move-wide/from16 v21, v1

    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v12

    if-nez v7, :cond_15

    move-wide/from16 v14, v40

    goto :goto_11

    :cond_15
    iget-wide v14, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    :goto_11
    long-to-double v14, v14

    move-wide/from16 v56, v5

    iget-wide v5, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    long-to-double v5, v5

    move-wide/from16 v17, v14

    move-wide/from16 v19, v5

    move-wide/from16 v21, v1

    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v5

    if-nez v7, :cond_16

    move-wide/from16 v14, v40

    goto :goto_12

    :cond_16
    iget-wide v14, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageTimeInMs:J

    :goto_12
    long-to-double v14, v14

    move-object/from16 v59, v3

    move-object/from16 v58, v4

    iget-wide v3, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageTimeInMs:J

    long-to-double v3, v3

    move-wide/from16 v17, v14

    move-wide/from16 v19, v3

    move-wide/from16 v21, v1

    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v3

    if-nez v7, :cond_17

    move-wide/from16 v14, v40

    goto :goto_13

    :cond_17
    iget-wide v14, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    :goto_13
    long-to-double v14, v14

    move/from16 v60, v11

    move-wide/from16 v61, v12

    iget-wide v11, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    long-to-double v11, v11

    move-wide/from16 v17, v14

    move-wide/from16 v19, v11

    move-wide/from16 v21, v1

    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v11

    iget v13, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryLevel:I

    if-nez v7, :cond_18

    int-to-double v1, v13

    move-wide/from16 v63, v9

    goto :goto_14

    :cond_18
    iget v14, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryLevel:I

    int-to-double v14, v14

    move-wide/from16 v63, v9

    int-to-double v9, v13

    move-wide/from16 v17, v14

    move-wide/from16 v19, v9

    move-wide/from16 v21, v1

    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v1

    :goto_14
    new-instance v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-object/from16 v10, v16

    move-object v15, v9

    iget-wide v13, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBootTimestamp:J

    sub-long v17, v13, v42

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v33

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v35

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v37

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    move/from16 v39, v1

    move-object/from16 v16, v8

    move-wide/from16 v19, v63

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v27

    move-wide/from16 v27, v29

    move-wide/from16 v29, v31

    move-wide/from16 v31, v61

    invoke-direct/range {v15 .. v39}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;JJDDDDDDJJJI)V

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v7, :cond_19

    const-string v1, "cannot find lower entry data"

    move-wide/from16 v2, v63

    invoke-static {v1, v2, v3, v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    move-object v15, v10

    move/from16 v7, v49

    move-object/from16 v8, v50

    move-object/from16 v13, v51

    move-object/from16 v12, v52

    move-object/from16 v14, v53

    move-wide/from16 v5, v56

    move-object/from16 v4, v58

    move/from16 v11, v60

    move-wide v9, v2

    move-object/from16 v3, v48

    goto/16 :goto_9

    :cond_19
    move-object v15, v10

    move-object/from16 v3, v48

    move/from16 v7, v49

    move-object/from16 v8, v50

    move-object/from16 v13, v51

    move-object/from16 v12, v52

    move-object/from16 v14, v53

    move-wide/from16 v1, v54

    move-wide/from16 v5, v56

    move-object/from16 v4, v58

    move/from16 v11, v60

    move-wide/from16 v9, v63

    goto/16 :goto_6

    :cond_1a
    move-object/from16 v48, v3

    move-object v1, v4

    move/from16 v49, v7

    move/from16 v60, v11

    move-object/from16 v51, v13

    invoke-virtual {v1, v14, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    add-int/lit8 v11, v60, 0x1

    move-object/from16 v0, p0

    move-object v4, v1

    move-wide/from16 v9, v40

    move-object/from16 v6, v44

    move-object/from16 v5, v45

    move-wide/from16 v1, v46

    move-object/from16 v3, v48

    move/from16 v7, v49

    move-object/from16 v13, v51

    const/4 v8, 0x0

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_1b
    move-wide/from16 v46, v1

    move-object v1, v4

    move-object/from16 v44, v6

    move-object/from16 v51, v13

    const-string v0, "CURRENT_TIME_BATTERY_HISTORY_PLACEHOLDER"

    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-static {v0, v2}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getHistoryMapWithExpectedTimestamps() size=%d in %d/ms"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v44

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getLevelDataThroughProcessedHistoryMap(Landroid/content/Context;Ljava/util/Map;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;
    .locals 7

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    const-string v3, "CURRENT_TIME_BATTERY_HISTORY_PLACEHOLDER"

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->getBatteryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget v6, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryLevel:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "abnormal entry list in the timestamp:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataProcessor"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static getRealUid(Landroid/os/UidBatteryConsumer;)I
    .locals 4

    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_1

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_1

    const-string v1, "mediaserver"

    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method public static getScreenOnTime(Ljava/util/List;)J
    .locals 8

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    move-result-object v6

    sget-object v7, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->START:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    if-ne v6, v7, :cond_3

    add-int/lit8 v6, v4, 0x1

    if-nez v4, :cond_2

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->getTimestamp()J

    move-result-wide v2

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_1

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v5, v2

    add-long/2addr v5, v0

    move-wide v0, v5

    goto :goto_0

    :cond_4
    :goto_1
    return-wide v0
.end method

.method public static getScreenOnTime(Ljava/util/Map;JLjava/lang/String;)J
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;>;>;J",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getScreenOnTime(Ljava/util/List;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getSystemAppsUids(Landroid/content/Context;)Ljava/util/Set;
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.uid.shared"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static getTimestampSlots(Ljava/util/List;J)Ljava/util/List;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-ltz v3, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/TimestampUtils;->getSharpHourCalendar(J)Ljava/util/Calendar;

    move-result-object p0

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    :goto_0
    cmp-long p0, v1, p1

    if-gez p0, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static isFromFullCharge(Ljava/util/Map;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "DataProcessor"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "entryList is null in isFromFullCharge()"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "empty entryList in isFromFullCharge()"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryStatus:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/16 v0, 0x64

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryLevel:I

    if-lt p0, v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static log(Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sDebug:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string v0, "%s %s:\n%s"

    goto :goto_0

    :cond_0
    const-string v0, "%s %s:%s"

    :goto_0
    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataProcessor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static validateAndAddToPeriodList(Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;JJ)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getEndTime()J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p1, p2, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    cmp-long p3, v0, p1

    if-gez p3, :cond_0

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object p3

    invoke-virtual {p3, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setStartTime(J)V

    invoke-virtual {p3, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setEndTime(J)V

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
