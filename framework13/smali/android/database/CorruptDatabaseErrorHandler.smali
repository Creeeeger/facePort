.class public Landroid/database/CorruptDatabaseErrorHandler;
.super Landroid/database/ErrorHandler;
.source "CorruptDatabaseErrorHandler.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/database/ErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist postHandleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "deleteDatabase"    # Z

    .line 43
    if-nez p2, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->setCheckpointOnClose(Z)V

    .line 50
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 52
    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 54
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DefaultDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    .line 55
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 56
    :cond_1
    return-void

    .line 58
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DefaultDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method blacklist preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isForcedReadOnlyDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "There was a corruption, but ignoring it because the connection is read-only connection."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
