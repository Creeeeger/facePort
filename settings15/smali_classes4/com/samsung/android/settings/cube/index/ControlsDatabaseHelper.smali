.class public final Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sSingleton:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "controls_index.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->sSingleton:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->sSingleton:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->sSingleton:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE VIRTUAL TABLE controls_index USING fts4(key, title, summary, screen_title, keywords, icon_uri, fragment, controller, control_type, recoverable, restore_key);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ControlsDatabaseHelper"

    const-string p1, "Created databases"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    const-string v0, "Reconstructing DB from "

    const-string/jumbo v1, "to "

    const-string v2, "ControlsDatabaseHelper"

    invoke-static {v0, v1, p2, p3, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    const-string v0, "Reconstructing DB from "

    const-string v1, " to "

    const-string v2, "ControlsDatabaseHelper"

    invoke-static {v0, v1, p2, p3, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public final reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v0, "controls_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "DROP TABLE IF EXISTS controls_index"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE VIRTUAL TABLE controls_index USING fts4(key, title, summary, screen_title, keywords, icon_uri, fragment, controller, control_type, recoverable, restore_key);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ControlsDatabaseHelper"

    const-string p1, "Created databases"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setIndexedState()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "controls_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
