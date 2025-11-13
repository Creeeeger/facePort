.class public final Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static INSTANCE:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string p0, "UwbDbHelper"

    const-string v0, "create Table"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CREATE TABLE IF NOT EXISTS uwb_state(ID INTEGER PRIMARY KEY AUTOINCREMENT, update_time BIGINT, current_state INTEGER);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS uwb_usage(ID INTEGER PRIMARY KEY AUTOINCREMENT, session_id BIGINT, package_name TEXT, service_type INTEGER, channel_no INTEGER, ranging_duration_time BIGINT, update_time BIGINT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
