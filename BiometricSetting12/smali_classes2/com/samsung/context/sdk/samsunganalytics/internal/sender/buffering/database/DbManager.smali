.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;
.super Ljava/lang/Object;
.source "DbManager.java"


# instance fields
.field private dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

.field private list:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DefaultDBOpenHelper;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DefaultDBOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->list:Ljava/util/Queue;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    invoke-interface {p1}, Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "CREATE TABLE IF NOT EXISTS logs_v2 (_id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp INTEGER, logtype TEXT, data TEXT)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->delete(J)V

    return-void
.end method

.method private select(Ljava/lang/String;)Ljava/util/Queue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-direct {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;-><init>()V

    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->setId(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->setData(Ljava/lang/String;)V

    const-string v3, "timestamp"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->setTimestamp(J)V

    const-string v3, "logtype"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    :goto_1
    invoke-virtual {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->setType(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->list:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->list:Ljava/util/Queue;

    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;->close()V

    :cond_0
    return-void
.end method

.method public delete(J)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "logs_v2"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "logs_v2"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public delete(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x384

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    invoke-interface {v1}, Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-lez v3, :cond_1

    const/16 v4, 0x384

    if-ge v3, v4, :cond_0

    move v4, v3

    :cond_0
    add-int v5, v2, v4

    invoke-interface {p1, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    const-string v6, "_id IN("

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    new-array v9, v9, [C

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    const-string v9, "\u0000"

    const-string v10, "?,"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "?)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    const-string v7, "logs_v2"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v1, v7, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/2addr v2, v4

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    nop

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public getDataSize()J
    .locals 3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "logs_v2"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v2

    const-string v3, "logtype"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "logs_v2"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public isEmpty()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->getDataSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public selectAll()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from logs_v2"

    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->select(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public selectSome(I)Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from logs_v2 LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->select(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method
