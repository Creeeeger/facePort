.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static sTestCalendar:Ljava/util/Calendar;


# instance fields
.field public final mDailyBatteryLevels:Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

.field public final mHourlyBatteryLevelsPerDay:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object v2, v1

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "batteryLevelMap size:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/util/Preconditions;->checkArgument(Ljava/lang/Object;Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->sTestCalendar:Ljava/util/Calendar;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getTimestampSixDaysAgo(Ljava/util/Calendar;)J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-lez v2, :cond_2

    move v2, v6

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_2
    invoke-static {v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getDailyTimestamps(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    if-ge v7, v8, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v11}, Lcom/android/settings/fuelgauge/batteryusage/TimestampUtils;->getSharpHourCalendar(J)Ljava/util/Calendar;

    move-result-object v9

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v15, 0x2

    rem-int/2addr v11, v15

    if-nez v11, :cond_3

    goto :goto_4

    :cond_3
    move v15, v6

    :goto_4
    invoke-virtual {v9, v10, v15}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    :goto_5
    cmp-long v11, v9, v13

    if-gez v11, :cond_4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 v15, 0x6ddd00

    add-long/2addr v9, v15

    goto :goto_5

    :cond_4
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    invoke-direct {v7, v3, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;-><init>(Ljava/util/List;Ljava/util/Map;Z)V

    iput-object v7, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mDailyBatteryLevels:Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    move v3, v5

    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iget-object v8, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    new-instance v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    if-eqz v2, :cond_6

    if-nez v3, :cond_6

    move v10, v6

    goto :goto_7

    :cond_6
    move v10, v5

    :goto_7
    invoke-direct {v9, v7, v1, v10}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;-><init>(Ljava/util/List;Ljava/util/Map;Z)V

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method public static getDailyTimestamps(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "timestampList size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/core/util/Preconditions;->checkArgument(Ljava/lang/Object;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, p0}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/TimestampUtils;->getSharpHourCalendar(J)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mDailyBatteryLevels:Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dailyBatteryLevels: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; hourlyBatteryLevelsPerDay: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
