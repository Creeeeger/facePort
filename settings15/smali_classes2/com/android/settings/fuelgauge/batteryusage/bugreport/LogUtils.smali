.class public abstract Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DUMP_TIME_OFFSET:Ljava/time/Duration;

.field public static final DUMP_TIME_OFFSET_FOR_ENTRY:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->DUMP_TIME_OFFSET:Ljava/time/Duration;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils;->DUMP_TIME_OFFSET_FOR_ENTRY:Ljava/time/Duration;

    return-void
.end method

.method public static dumpBatteryReattributeDatabaseHist(Lcom/android/settings/fuelgauge/batteryusage/db/BatteryReattributeDao;Ljava/io/PrintWriter;)V
    .locals 0

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getPowerUsageFeatureProvider()Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "\n\tBatteryReattribute is disabled!"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dumpListItems(Ljava/io/PrintWriter;Ljava/util/List;Ljava/util/function/Function;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    :try_start_0
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda5;-><init>(Ljava/io/PrintWriter;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "LogUtils"

    const-string v0, "dumpListItems() error: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public static getLastFullChargeTimestamp(Landroid/content/Context;)J
    .locals 5

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;

    move-result-object p0

    const-wide/16 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v3, v4, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-wide v0

    :goto_1
    const-string v2, "LogUtils"

    const-string v3, "getLastFullChargeTimestamp() error: "

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method
