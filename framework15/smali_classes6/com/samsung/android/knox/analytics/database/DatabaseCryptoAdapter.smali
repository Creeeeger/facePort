.class Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
.super Ljava/lang/Object;
.source "DatabaseCryptoAdapter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

.field private final blacklist mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

.field private blacklist mVersioningCompleted:Z

.field private final blacklist mVersioningCompletedLock:Ljava/lang/Object;

.field private blacklist mVersioningIdCache:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompleted:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-direct {v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    new-instance v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->generateKeys()V

    return-void
.end method

.method private blacklist calculateRemainingEventsForDelete(II)I
    .locals 5

    sub-int v0, p1, p2

    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateRemainingEventsForDelete("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): totalToDelete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCountCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v4

    if-le v2, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return v3

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    :cond_5
    :goto_2
    nop

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return v3
.end method

.method private blacklist checkCompressedChunksLimit(J)I
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCompressedChunksLimit("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTotalCompressedEventCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v3

    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return v1
.end method

.method private blacklist createCursor(Ljava/util/List;)Landroid/database/Cursor;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/ZipResult;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "id"

    const-string v2, "vid"

    const-string v3, "bulk"

    const-string v4, "data"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move-object v5, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/knox/analytics/util/ZipResult;

    move-object/from16 v8, p0

    invoke-direct {v8, v7}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventsList(Lcom/samsung/android/knox/analytics/util/ZipResult;)Lcom/samsung/android/knox/analytics/model/EventList;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/samsung/android/knox/analytics/model/EventList;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    move v10, v0

    :goto_1
    invoke-virtual {v9}, Lcom/samsung/android/knox/analytics/model/EventList;->length()I

    move-result v0

    if-ge v10, v0, :cond_1

    :try_start_0
    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/analytics/model/EventList;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lcom/samsung/android/knox/analytics/model/Event;

    invoke-direct {v11, v0}, Lcom/samsung/android/knox/analytics/model/Event;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {v11, v1}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v2}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v3}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v4}, Lcom/samsung/android/knox/analytics/model/Event;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    filled-new-array {v12, v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v11, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v12, "createCursor(): Parsing error object."

    invoke-static {v11, v12, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_3
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v10, "createCursor(): Null events received"

    invoke-static {v0, v10}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object/from16 v8, p0

    return-object v5
.end method

.method private blacklist createCursorOnlyWithCompressedEvents(I)Landroid/database/Cursor;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "createCursorOnlyWithCompressedEvents(): query only compressed events"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCompressedEvents(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist createCursorWithAllEvents()Landroid/database/Cursor;
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "createCursorWithAllEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCompressedEvents(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-instance v4, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;

    iget-object v5, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    iget-object v6, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-direct {v4, v5, v6, v0}, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;-><init>(Lcom/samsung/android/knox/analytics/database/DatabaseHelper;Lcom/samsung/android/knox/analytics/database/CryptoHandler;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    aput-object v4, v3, v0

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method private blacklist createCursorWithEventsSizeSpecified(II)Landroid/database/Cursor;
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCursorWithEventsSizeSpecified(): query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCompressedEvents(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v3, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;

    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    iget-object v5, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;-><init>(Lcom/samsung/android/knox/analytics/database/DatabaseHelper;Lcom/samsung/android/knox/analytics/database/CryptoHandler;Ljava/lang/Integer;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist createMergedCursor(Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 6

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMergedCursor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->createCursorWithAllEvents()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->checkCompressedChunksLimit(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getTotalCompressedEvents(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getTotalPlainEvents(II)I

    move-result v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCursorWith: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " compressed events and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " plain events"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->createCursorOnlyWithCompressedEvents(I)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->createCursorWithEventsSizeSpecified(II)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method private blacklist deleteMergedChunk(JJ)J
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    sget-object v5, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteMergedChunk("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v5}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCompressedEventCountValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const/4 v10, 0x1

    if-gtz v9, :cond_0

    iget-object v7, v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v7, v1, v2, v10}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteEventChunk(JI)J

    move-result-wide v7

    return-wide v7

    :cond_0
    invoke-direct {v0, v3, v4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->checkCompressedChunksLimit(J)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getTotalCompressedEvents(I)I

    move-result v11

    iget-object v12, v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    int-to-long v13, v9

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteCompressedEventChunk(J)J

    move-result-wide v12

    cmp-long v14, v12, v7

    if-nez v14, :cond_1

    sget-object v10, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v14, "deleteMergedChunk(): Some error occurred when deleting."

    invoke-static {v10, v14}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v7

    :cond_1
    long-to-int v14, v3

    invoke-direct {v0, v14, v11}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->calculateRemainingEventsForDelete(II)I

    move-result v14

    int-to-long v14, v14

    cmp-long v7, v14, v7

    if-nez v7, :cond_2

    return-wide v1

    :cond_2
    sub-long v7, v1, v14

    iget-object v1, v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1, v14, v15, v10}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteEventChunk(JI)J

    move-result-wide v1

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private blacklist generateCBCKey()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->generateCBCKey()V

    return-void
.end method

.method private blacklist generateGCMKey()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->isGCMKeyGenerated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "generateGCMKey(): Key already generated"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->generateGCMKey()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "generateGCMKey(): Key generated"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->markEventIdOnKeyGeneration()V

    :cond_1
    return-void
.end method

.method private blacklist generateKeys()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->generateGCMKey()V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->generateCBCKey()V

    return-void
.end method

.method private blacklist getEventsList(Lcom/samsung/android/knox/analytics/util/ZipResult;)Lcom/samsung/android/knox/analytics/model/EventList;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/ZipHandler;->inflate(Lcom/samsung/android/knox/analytics/util/ZipResult;)Lcom/samsung/android/knox/analytics/model/EventList;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getEventsList(): Data is malformed"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getEventsList(): Parsing error"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getTotalPlainEvents(II)I
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCountCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    move v2, p2

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v3

    if-le v2, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    nop

    return v0

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private blacklist markEventIdOnKeyGeneration()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->setSyntheticRowId()V

    return-void
.end method

.method private blacklist updateVersioningCache(Landroid/database/Cursor;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "updateVersioningCache()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addB2CFeatures(Landroid/content/ContentValues;)J
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addB2CFeatures(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist addBulkEvents(Landroid/os/Bundle;)J
    .locals 8

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addBulkEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "eventsList"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptBulk(Ljava/util/List;)[B

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "data"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "bulk"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->waitVersioningCompleted()V

    iget v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "vid"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addEvent(Landroid/content/ContentValues;I)J

    move-result-wide v6

    return-wide v6

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v4, "addBulkEvents(): eventList is invalid"

    invoke-static {v0, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    return-wide v4
.end method

.method public blacklist addCleanedEvent(Landroid/content/ContentValues;)J
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addCleanedEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->waitVersioningCompleted()V

    iget v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "vid"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addEvent(Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist addEvent(Landroid/content/ContentValues;)J
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encrypt(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "bulk"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->waitVersioningCompleted()V

    iget v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "vid"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addEvent(Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist addFeatureBlacklist(Landroid/content/ContentValues;)J
    .locals 8

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addFeatureBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeaturesBlacklist()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v5, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v6, "addFeatureBlacklist(): null value"

    invoke-static {v5, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "feature"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "event"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v6, v5}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addFeaturesBlacklist(Landroid/content/ContentValues;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public blacklist addFeatureWhitelist(Landroid/content/ContentValues;)J
    .locals 8

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addFeatureWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v5, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v6, "addFeatureWhitelist(): null value"

    invoke-static {v5, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v5, v3}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeatureWhitelist(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_1

    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "feature"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "enable_type"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v6, v5}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addFeaturesWhitelist(Landroid/content/ContentValues;)J

    move-result-wide v6

    add-long/2addr v0, v6

    :goto_1
    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public blacklist addVersioningBlob(Landroid/content/ContentValues;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addVersioning()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addVersioningBlob(Landroid/content/ContentValues;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iput v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    return v0
.end method

.method public blacklist deleteB2CFeatures([Ljava/lang/String;)J
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deleteB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteB2CFeatures([Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist deleteCleanedEventChunk(J)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteEventChunk(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist deleteCompressedEventChunk(J)J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteCompressedEventChunk(size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteCompressedEventChunk(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist deleteEventChunk(JI)J
    .locals 6

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteEventChunk(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist deleteEventChunk(JJI)J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteEventChunk(size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p5, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteMergedChunk(JJ)J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteCleanedEventChunk(J)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist deleteFeatureBlacklist()J
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeatureBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeaturesBlacklist()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist deleteFeatureWhitelist([Ljava/lang/String;)J
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeatureWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeaturesWhitelist([Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist deleteFromVersion(J)J
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deleteFromVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFromVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist deleteUntilTargetDbSize(J)J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUntilTargetDbSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist deleteUpTo(J)J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUpTo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteUpTo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getB2CFeaturesCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getB2CFeatures([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCleanedEventsCursor(Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCleanedEventsCursor(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCompressedEvents(Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 8

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getCompressedEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCompressedEventCountValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v2, "There is no compressed data to be queried"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCompressedEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_6

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "content"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptBlob([B)[B

    move-result-object v4

    const-string v5, "length"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "original_length"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    if-ne v6, v7, :cond_2

    array-length v7, v4

    if-gtz v7, :cond_2

    goto :goto_0

    :cond_2
    new-instance v7, Lcom/samsung/android/knox/analytics/util/ZipResult;

    invoke-direct {v7, v4, v5, v6}, Lcom/samsung/android/knox/analytics/util/ZipResult;-><init>([BII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->createCursor(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    return-object v3

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_5

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v3

    :cond_6
    :goto_2
    nop

    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    return-object v1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v4, "getCompressedEvents(): "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public blacklist getCompressedEventsCount()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCompressedEventCountValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDatabaseSizeCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCurrentDatabaseSizeCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDatabaseSizeInBytes()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCurrentDatabaseSizeInBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getEventChunk(Ljava/lang/Integer;Z)Landroid/database/Cursor;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEventChunk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCompressedEventsCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->createMergedCursor(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;-><init>(Lcom/samsung/android/knox/analytics/database/DatabaseHelper;Lcom/samsung/android/knox/analytics/database/CryptoHandler;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public blacklist getEventCount()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCount()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEventCountValue()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCountValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFeatureBlacklistCursor()Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getFeatureBlacklistCursor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getFeaturesBlacklist()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFeatureWhitelistCursor()Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getFeatureWhitelistCursor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getFeaturesWhitelist()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLastId()Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getLastId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getLastId()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTotalCompressedEvents(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalCompressedEvents("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTotalCompressedEvent(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public blacklist getVersioningBlob()Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getVersioningBlob()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->updateVersioningCache(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public blacklist notifyVersioningCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompleted:Z

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist performCompressedEventsTransaction(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "performCompressedEventsTransaction()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "performCompressedEventsTransaction(): Null argument. Aborting"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "cv"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    const-string v1, "content"

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptBlob([B)[B

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->performCompressedEventsTransaction(Landroid/content/ContentValues;)Z

    move-result v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "performCompressedEventsTransaction"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v3

    :cond_2
    :goto_0
    sget-object v3, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_1
    sget-object v2, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist waitVersioningCompleted()V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "waitVersioningCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompleted:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "waitVersioningCompleted(): after wait"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v2, "waitVersioningCompleted(): Interrupted exception"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method
