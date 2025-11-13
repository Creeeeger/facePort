.class public final Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase_Impl$1;
.super Landroidx/room/RoomOpenDelegate;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase_Impl;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase_Impl$1;->this$0:Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase_Impl;

    const/16 p1, 0x65

    const-string v0, "87b5b6b885298e979cc2e7e21befa106"

    const-string v1, "2228c80b74e4cef7dc4b75675f80bf2a"

    invoke-direct {p0, p1, v0, v1}, Landroidx/room/RoomOpenDelegate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createAllTables(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS `bnr_unused_apps` (`package_name` TEXT NOT NULL, PRIMARY KEY(`package_name`))"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLiteKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_bnr_unused_apps_package_name` ON `bnr_unused_apps` (`package_name`)"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLiteKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLiteKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'87b5b6b885298e979cc2e7e21befa106\')"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLiteKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void
.end method

.method public final dropAllTables(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS `bnr_unused_apps`"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLiteKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    return-void
.end method

.method public final onOpen(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase_Impl$1;->this$0:Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase_Impl;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method public final onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    return-void
.end method

.method public final onPreMigrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method public final onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;
    .locals 9

    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v8, Landroidx/room/util/TableInfo$Column;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v2, "package_name"

    const-string v3, "TEXT"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string/jumbo v1, "package_name"

    invoke-virtual {p0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v6, "ASC"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v7, "index_bnr_unused_apps_package_name"

    invoke-direct {v5, v7, v0, v1, v6}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/room/util/TableInfo;

    const-string v5, "bnr_unused_apps"

    invoke-direct {v1, v5, p0, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {p1, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bnr_unused_apps(com.samsung.android.settings.analyzestorage.data.model.UnusedAppBnRInfo).\n Expected:\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Found:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    return-object p1

    :cond_0
    new-instance p0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method
