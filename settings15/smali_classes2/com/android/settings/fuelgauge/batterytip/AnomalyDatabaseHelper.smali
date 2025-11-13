.class public final Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sSingleton:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE anomaly(uid INTEGER NOT NULL, package_name TEXT, anomaly_type INTEGER NOT NULL, anomaly_state INTEGER NOT NULL, time_stamp_ms INTEGER NOT NULL,  PRIMARY KEY (uid,anomaly_type,anomaly_state,time_stamp_ms))"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE action(uid INTEGER NOT NULL, package_name TEXT, action_type INTEGER NOT NULL, time_stamp_ms INTEGER NOT NULL,  PRIMARY KEY (action_type,uid,package_name))"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "BatteryDatabaseHelper"

    const-string p1, "Bootstrapped database"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string p0, "Detected schema version \'"

    const-string v0, "\'. Index needs to be rebuilt for schema version \'"

    const-string v1, "\'."

    invoke-static {p0, v0, p2, p3, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "BatteryDatabaseHelper"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "DROP TABLE IF EXISTS anomaly"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS action"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE anomaly(uid INTEGER NOT NULL, package_name TEXT, anomaly_type INTEGER NOT NULL, anomaly_state INTEGER NOT NULL, time_stamp_ms INTEGER NOT NULL,  PRIMARY KEY (uid,anomaly_type,anomaly_state,time_stamp_ms))"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE action(uid INTEGER NOT NULL, package_name TEXT, action_type INTEGER NOT NULL, time_stamp_ms INTEGER NOT NULL,  PRIMARY KEY (action_type,uid,package_name))"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "Bootstrapped database"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 p0, 0x5

    if-ge p2, p0, :cond_0

    const-string p0, "Detected schema version \'"

    const-string v0, "\'. Index needs to be rebuilt for schema version \'"

    const-string v1, "\'."

    invoke-static {p0, v0, p2, p3, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "BatteryDatabaseHelper"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "DROP TABLE IF EXISTS anomaly"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS action"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE anomaly(uid INTEGER NOT NULL, package_name TEXT, anomaly_type INTEGER NOT NULL, anomaly_state INTEGER NOT NULL, time_stamp_ms INTEGER NOT NULL,  PRIMARY KEY (uid,anomaly_type,anomaly_state,time_stamp_ms))"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE action(uid INTEGER NOT NULL, package_name TEXT, action_type INTEGER NOT NULL, time_stamp_ms INTEGER NOT NULL,  PRIMARY KEY (action_type,uid,package_name))"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "Bootstrapped database"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
