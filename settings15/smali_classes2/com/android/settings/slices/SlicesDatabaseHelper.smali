.class public final Lcom/android/settings/slices/SlicesDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sSingleton:Lcom/android/settings/slices/SlicesDatabaseHelper;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa

    const-string v2, "slices_index.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/slices/SlicesDatabaseHelper;
    .locals 2

    const-class v0, Lcom/android/settings/slices/SlicesDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/slices/SlicesDatabaseHelper;->sSingleton:Lcom/android/settings/slices/SlicesDatabaseHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/slices/SlicesDatabaseHelper;->sSingleton:Lcom/android/settings/slices/SlicesDatabaseHelper;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->sSingleton:Lcom/android/settings/slices/SlicesDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBuildTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object p0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE VIRTUAL TABLE slices_index USING fts4(key, slice_uri, title, summary, screentitle, keywords, icon, fragment, controller, slice_type, unavailable_slice_subtitle, public_slice, highlight_menu, user_restriction INTEGER DEFAULT 0 );"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "SlicesDatabaseHelper"

    const-string p1, "Created databases"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    const-string v0, "Reconstructing DB from "

    const-string v1, " to "

    const-string v2, "SlicesDatabaseHelper"

    invoke-static {v0, v1, p2, p3, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const-string p2, "slices_shared_prefs"

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "DROP TABLE IF EXISTS slices_index"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE VIRTUAL TABLE slices_index USING fts4(key, slice_uri, title, summary, screentitle, keywords, icon, fragment, controller, slice_type, unavailable_slice_subtitle, public_slice, highlight_menu, user_restriction INTEGER DEFAULT 0 );"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "Created databases"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
