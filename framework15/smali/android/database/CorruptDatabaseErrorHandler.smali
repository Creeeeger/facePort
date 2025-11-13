.class public Landroid/database/CorruptDatabaseErrorHandler;
.super Landroid/database/ErrorHandler;
.source "CorruptDatabaseErrorHandler.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/ErrorHandler;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteDump;)V
    .locals 0

    invoke-direct {p0}, Landroid/database/ErrorHandler;-><init>()V

    iput-object p1, p0, Landroid/database/CorruptDatabaseErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    return-void
.end method


# virtual methods
.method blacklist postHandleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->setCheckpointOnClose(Z)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v1, "!@ Back up corrupted DB File : "

    const-string v2, "ErrorHandler"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, p0, Landroid/database/CorruptDatabaseErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/database/DefaultDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Landroid/database/CorruptDatabaseErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DefaultDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    return-void
.end method

.method blacklist preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isForcedReadOnlyDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/database/CorruptDatabaseErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string v1, "ErrorHandler"

    const-string v2, "There was a corruption, but ignoring it because the connection is read-only connection."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
