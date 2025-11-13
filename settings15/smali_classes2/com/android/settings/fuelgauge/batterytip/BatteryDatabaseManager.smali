.class public final Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;


# instance fields
.field public final mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    const-class v0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "battery_settings.db"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-direct {v1, p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;
    .locals 2

    const-class v0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static setUpForTest(Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;)V
    .locals 0

    sput-object p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    return-void
.end method


# virtual methods
.method public final declared-synchronized deleteAction(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "action"

    const-string v1, "action_type = ? AND uid = ? AND package_name = ? "

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized insertAction(JILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "package_name"

    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "action_type"

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "time_stamp_ms"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "action"

    const/4 p2, 0x0

    const/4 p3, 0x5

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateAnomalies(Ljava/util/List;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "anomaly_state"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "anomaly"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package_name IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v6, "?"

    invoke-static {p1, v6}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
