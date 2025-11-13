.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALL_BATTERY_EVENT_TYPES:Ljava/util/List;

.field public static final QUERY_DURATION_HOURS:Ljava/time/Duration;

.field public static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field public mAppUsageEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;

.field public mBatteryEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;

.field public mBatteryStateDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;

.field public mBatteryUsageSlotDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl;

.field public mClock:Ljava/time/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->QUERY_DURATION_HOURS:Ljava/time/Duration;

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->values()[Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->ALL_BATTERY_EVENT_TYPES:Ljava/util/List;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "BatteryState"

    const/4 v2, 0x1

    const-string v3, "com.android.settings.battery.usage.provider"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "appUsageLatestTimestamp"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "AppUsageEvent"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "BatteryEvent"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "lastFullChargeTimestamp"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "batteryStateLatestTimestamp"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "BatteryUsageSlot"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static getQueryValueFromUri(Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 3

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "BatteryUsageContentProvider"

    if-eqz p1, :cond_0

    const-string p0, "empty query value"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid query value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide p2
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "unsupported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getQueryTimestamp(Landroid/net/Uri;)J
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getQueryTimestamp from uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryUsageContentProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->QUERY_DURATION_HOURS:Ljava/time/Duration;

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string p0, "timestamp"

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryValueFromUri(Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    const-string v0, "unknown URI: "

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    const/4 v5, 0x7

    const-wide/16 v6, 0x0

    const-string v8, "timestamp"

    if-eq v2, v5, :cond_5

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    :try_start_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :cond_0
    const-string v0, "batteryEventType"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const-string v2, "batteryLevel"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;

    invoke-direct {v2, v0, p2, v6, v7}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;-><init>(IIJ)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p0, v3, v4, p2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mAppUsageEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;

    invoke-static {p2}, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->create(Landroid/content/ContentValues;)Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p0, v3, v4, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryUsageSlotDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl;

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :cond_6
    const-string v0, "batteryUsageSlot"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    move-object p2, v1

    :goto_2
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotEntity;

    invoke-direct {v0, v6, v7, p2}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotEntity;-><init>(JLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl;Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotEntity;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p0, v3, v4, p2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryStateDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;

    invoke-static {p2}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->create(Landroid/content/ContentValues;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p0, v3, v4, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    return-object p1

    :goto_4
    instance-of p2, p0, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "insert() from:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " error:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryUsageContentProvider"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_9
    throw p0
.end method

.method public final onCreate()Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isWorkProfile(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "BatteryUsageContentProvider"

    if-eqz v0, :cond_0

    const-string p0, "do not create provider for work profile"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryStateDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryStateDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->appUsageEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mAppUsageEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryUsageSlotDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryUsageSlotDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "create content provider from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const-string p3, "userid"

    const-string p4, "invalid query value: "

    const-string p5, ","

    const/4 v0, 0x0

    const-string v1, "/ms"

    const/4 v2, 0x1

    const-string v3, " error:"

    const-string v4, "query() from:"

    const/4 v5, 0x0

    const-string v6, "BatteryUsageContentProvider"

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unknown URI: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryTimestamp(Landroid/net/Uri;)J

    move-result-wide p2

    iget-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p4}, Ljava/time/Clock;->millis()J

    move-result-wide p4

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryUsageSlotDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "SELECT * FROM BatteryUsageSlotEntity WHERE timestamp >= ? ORDER BY timestamp ASC"

    invoke-static {v2, v7}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v7

    invoke-virtual {v7, v2, p2, p3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p2, v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v7, v5}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getBatteryUsageSlots() in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p2

    sub-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryTimestamp(Landroid/net/Uri;)J

    move-result-wide p2

    iget-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p4}, Ljava/time/Clock;->millis()J

    move-result-wide p4

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryStateDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SELECT MAX(timestamp) FROM BatteryState WHERE timestamp <= ?"

    invoke-static {v2, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    invoke-virtual {v1, v2, p2, p3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p2

    sub-long/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getBatteryStateLatestTimestamp() no later than %d in %d/ms"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :pswitch_2
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide p2

    :try_start_2
    iget-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p5, "SELECT MAX(timestamp) FROM BatteryEventEntity WHERE batteryEventType = 3"

    invoke-static {v0, p5}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object p5

    iget-object p4, p4, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4, p5, v5}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p0

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getLastFullChargeTimestamp() in %d/ms"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :pswitch_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "getQueryBatteryEventTypes from uri: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "batteryEventType"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    :goto_3
    move-object p3, v5

    goto :goto_5

    :cond_0
    :try_start_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    array-length v2, p5

    :goto_4
    if-ge v0, v2, :cond_1

    aget-object v7, p5, v0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_3
    move-exception p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_1
    :goto_5
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    sget-object p3, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->ALL_BATTERY_EVENT_TYPES:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryTimestamp(Landroid/net/Uri;)J

    move-result-wide p4

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    :try_start_4
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;

    invoke-virtual {p2, p3, p4, p5}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->getAllAfter(Ljava/util/List;J)Landroid/database/Cursor;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getBatteryEvents() in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p2

    sub-long/2addr p2, v7

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :pswitch_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "getQueryUserIds from uri: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    :goto_7
    move-object p3, v5

    goto :goto_9

    :cond_4
    :try_start_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    array-length v2, p5

    :goto_8
    if-ge v0, v2, :cond_5

    aget-object v7, p5, v0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catch_5
    move-exception p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_5
    :goto_9
    if-eqz p3, :cond_7

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_b

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryTimestamp(Landroid/net/Uri;)J

    move-result-wide p4

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    :try_start_6
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mAppUsageEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;

    invoke-virtual {p2, p3, p4, p5}, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;->getAllForUsersAfter(Ljava/util/List;J)Landroid/database/Cursor;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_a

    :catch_6
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getAppUsageEvents() in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p2

    sub-long/2addr p2, v7

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_b
    return-object v5

    :pswitch_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "getQueryUserId from uri: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 p4, -0x80000000

    invoke-static {p1, p3, p4, p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryValueFromUri(Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p2

    cmp-long p4, p2, p4

    if-nez p4, :cond_8

    goto :goto_d

    :cond_8
    iget-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p4}, Ljava/time/Clock;->millis()J

    move-result-wide p4

    :try_start_7
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mAppUsageEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SELECT MAX(timestamp) as timestamp FROM AppUsageEventEntity WHERE userId = ?"

    invoke-static {v2, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    invoke-virtual {v1, v2, p2, p3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p2

    sub-long/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getAppUsageLatestTimestamp() for user %d in %d/ms"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-object v5

    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryTimestamp(Landroid/net/Uri;)J

    move-result-wide p2

    iget-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p4}, Ljava/time/Clock;->millis()J

    move-result-wide p4

    :try_start_8
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryStateDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SELECT * FROM BatteryState WHERE timestamp >= ? ORDER BY timestamp ASC"

    invoke-static {v2, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    invoke-virtual {v1, v2, p2, p3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p2

    sub-long/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getBatteryStates() after %d in %d/ms"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setClock(Ljava/time/Clock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "unsupported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
