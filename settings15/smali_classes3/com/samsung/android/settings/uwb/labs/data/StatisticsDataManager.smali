.class public final Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static INSTANCE:Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager; = null

.field public static mPrevDayRangingTime:J = 0x0L

.field public static mRangingTimeSum:J = 0x0L

.field public static mStateChangedTime:J = 0x0L

.field public static mTodayRangingTime:J = 0x0L

.field public static mUwbState:I = 0x1

.field public static final mWeeklyPackageUsage:[[J

.field public static final mWeeklyPackageUsageCnt:[[J

.field public static final mWeeklyRangingCnt:[J

.field public static final mWeeklyRangingUsage:[J


# instance fields
.field public final mUwbDbReader:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mStateChangedTime:J

    const/4 v0, 0x7

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyRangingCnt:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyRangingUsage:[J

    const/4 v0, 0x3

    new-array v1, v0, [J

    fill-array-data v1, :array_2

    new-array v2, v0, [J

    fill-array-data v2, :array_3

    new-array v3, v0, [J

    fill-array-data v3, :array_4

    new-array v4, v0, [J

    fill-array-data v4, :array_5

    new-array v5, v0, [J

    fill-array-data v5, :array_6

    new-array v6, v0, [J

    fill-array-data v6, :array_7

    new-array v7, v0, [J

    fill-array-data v7, :array_8

    filled-new-array/range {v1 .. v7}, [[J

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsage:[[J

    new-array v2, v0, [J

    fill-array-data v2, :array_9

    new-array v3, v0, [J

    fill-array-data v3, :array_a

    new-array v4, v0, [J

    fill-array-data v4, :array_b

    new-array v5, v0, [J

    fill-array-data v5, :array_c

    new-array v6, v0, [J

    fill-array-data v6, :array_d

    new-array v7, v0, [J

    fill-array-data v7, :array_e

    new-array v8, v0, [J

    fill-array-data v8, :array_f

    filled-new-array/range {v2 .. v8}, [[J

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsageCnt:[[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->INSTANCE:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "/data/uwb/uwb.db"

    invoke-direct {v1, p1, v4, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string p1, "UwbDbHelper"

    const-string v2, "BigDataDbHelper is created"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v1, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->INSTANCE:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;

    :cond_0
    sget-object p1, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->INSTANCE:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UwbDbReader"

    if-nez p1, :cond_1

    const-string p1, "database is not found"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "database is opened : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mUwbDbReader:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->INSTANCE:Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->INSTANCE:Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->INSTANCE:Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getUwbUsage()Z
    .locals 30

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyRangingUsage:[J

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    sget-object v5, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyRangingCnt:[J

    invoke-static {v5, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    sget-object v7, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsageCnt:[[J

    sget-object v8, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsage:[[J

    const/4 v9, 0x7

    if-ge v0, v9, :cond_0

    aget-object v8, v8, v0

    invoke-static {v8, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    aget-object v7, v7, v0

    invoke-static {v7, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v12, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    const/4 v13, 0x2

    const/4 v14, 0x6

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    move v15, v14

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v13

    move v15, v0

    move-object/from16 v0, p0

    :goto_1
    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mUwbDbReader:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "UwbDbReader"

    const-string v4, "SELECT * FROM uwb_usage"

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "cursor is NULL"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    sget-object v3, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->INSTANCE:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    new-instance v3, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v26}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;-><init>(IIIJJLjava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v9, v4

    goto :goto_3

    :goto_2
    const-string v4, "Error reading uwb.db file using SQLite3"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-nez v9, :cond_5

    return v6

    :cond_5
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v3, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Ljava/util/Date;

    move-object/from16 v21, v7

    iget-wide v6, v9, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mUpdatedTime:J

    invoke-direct {v14, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    sub-int/2addr v13, v1

    sub-long v23, v10, v6

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->getHours(J)J

    move-result-wide v23

    const-wide/16 v25, 0x18

    move-object/from16 v27, v2

    div-long v1, v23, v25

    const-wide/16 v23, 0x7

    cmp-long v23, v1, v23

    const-string v14, "StatisticsDataManager"

    if-ltz v23, :cond_6

    const-string v9, "exclude data: today - "

    const-string v13, ", comparedDay - "

    invoke-static {v10, v11, v9, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ,diff - "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 p0, v0

    move v14, v15

    const/4 v1, 0x2

    const/16 v20, 0x0

    goto/16 :goto_a

    :cond_6
    iget-wide v1, v9, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mRangingDuration:J

    add-long v18, v18, v1

    move/from16 v23, v15

    const/4 v15, 0x7

    if-lt v13, v15, :cond_7

    const-string v15, "failed to update: ranging time data is wrong."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    aget-wide v24, v27, v13

    add-long v24, v24, v1

    aput-wide v24, v27, v13

    :goto_5
    const-string v15, "\\."

    iget-object v9, v9, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v15, v9

    if-nez v15, :cond_8

    const-string v9, ""

    goto :goto_6

    :cond_8
    const/16 v24, 0x1

    add-int/lit8 v15, v15, -0x1

    aget-object v9, v9, v15

    :goto_6
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v25, 0x1

    const-string/jumbo v15, "uwbtest"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    const-string/jumbo v15, "settings"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    aget-object v9, v8, v13

    const/4 v15, 0x2

    aget-wide v28, v9, v15

    add-long v28, v28, v1

    aput-wide v28, v9, v15

    aget-object v9, v21, v13

    aget-wide v28, v9, v15

    add-long v28, v28, v25

    aput-wide v28, v9, v15

    :goto_7
    const/16 v20, 0x0

    goto :goto_8

    :cond_9
    aget-object v9, v8, v13

    const/4 v15, 0x1

    aget-wide v28, v9, v15

    add-long v28, v28, v1

    aput-wide v28, v9, v15

    aget-object v9, v21, v13

    aget-wide v28, v9, v15

    add-long v28, v28, v25

    aput-wide v28, v9, v15

    goto :goto_7

    :cond_a
    aget-object v15, v8, v13

    const/16 v20, 0x0

    aget-wide v28, v15, v20

    add-long v28, v28, v1

    aput-wide v28, v15, v20

    aget-object v15, v21, v13

    aget-wide v28, v15, v20

    add-long v28, v28, v25

    aput-wide v28, v15, v20

    :goto_8
    aget-wide v28, v5, v13

    add-long v28, v28, v25

    aput-wide v28, v5, v13

    const-string v15, "DAY["

    const-string v9, "] package0 : "

    invoke-static {v13, v15, v9}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v15, v8, v13

    move-wide/from16 v25, v3

    aget-wide v3, v15, v20

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " package1 : "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v8, v13

    move-object/from16 p0, v0

    move-wide/from16 v28, v1

    const/4 v4, 0x1

    aget-wide v0, v3, v4

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " package2 : "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v8, v13

    const/4 v1, 0x2

    aget-wide v3, v0, v1

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Read Table: uwb_usage curtime ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "] today ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] updatetime ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "] updateday ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] rangingdurationtime ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-static {v0, v6, v14}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v13, v12, :cond_b

    add-long v6, v25, v3

    move/from16 v14, v23

    goto :goto_9

    :cond_b
    move/from16 v14, v23

    move-wide/from16 v6, v25

    :goto_9
    if-ne v13, v14, :cond_c

    add-long v16, v16, v3

    :cond_c
    move-wide v3, v6

    :goto_a
    move-object/from16 v0, p0

    move v13, v1

    move v15, v14

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v2, v27

    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_d
    move-wide/from16 v25, v3

    sput-wide v25, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mTodayRangingTime:J

    sput-wide v16, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mPrevDayRangingTime:J

    sput-wide v18, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mRangingTimeSum:J

    const/4 v1, 0x1

    return v1
.end method
