.class public Landroid/database/sqlite/SQLiteCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# static fields
.field static final greylist-max-o NO_COUNT:I = -0x1

.field static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteCursor"

.field private static final blacklist sCursorWindowSize:I = 0x400000


# instance fields
.field private greylist-max-o mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mColumns:[Ljava/lang/String;

.field private greylist-max-o mCount:I

.field private greylist-max-o mCursorWindowCapacity:I

.field private final greylist-max-o mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

.field private final greylist mEditTable:Ljava/lang/String;

.field private greylist-max-o mFillWindowForwardOnly:Z

.field private final greylist mQuery:Landroid/database/sqlite/SQLiteQuery;


# direct methods
.method public constructor whitelist <init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 2
    .param p1, "driver"    # Landroid/database/sqlite/SQLiteCursorDriver;
    .param p2, "editTable"    # Ljava/lang/String;
    .param p3, "query"    # Landroid/database/sqlite/SQLiteQuery;

    .line 101
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 102
    if-eqz p3, :cond_0

    .line 105
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    .line 106
    iput-object p2, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 108
    iput-object p3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 110
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteQuery;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 111
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "query object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "driver"    # Landroid/database/sqlite/SQLiteCursorDriver;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "query"    # Landroid/database/sqlite/SQLiteQuery;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 89
    return-void
.end method

.method private greylist fillWindow(I)V
    .locals 4
    .param p1, "requiredPos"    # I

    .line 151
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteCursor;->clearOrCreateWindow(Ljava/lang/String;)V

    .line 153
    :try_start_0
    const-string/jumbo v0, "requiredPos cannot be negative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 156
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p1, v2}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;IIZ)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 158
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    .line 159
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_LOG:Z

    if-eqz v0, :cond_2

    .line 160
    const-string v0, "SQLiteCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "received count(*) from native_fill_window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 163
    :cond_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteCursor;->mFillWindowForwardOnly:Z

    if-eqz v0, :cond_1

    move v0, p1

    goto :goto_0

    .line 164
    :cond_1
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorPickFillWindowStartPosition(II)I

    move-result v0

    :goto_0
    nop

    .line 165
    .local v0, "startPos":I
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;IIZ)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "startPos":I
    :cond_2
    :goto_1
    nop

    .line 175
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->closeWindow()V

    .line 173
    throw v0
.end method


# virtual methods
.method protected blacklist clearOrCreateWindow(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Landroid/database/CursorWindow;

    const-wide/32 v1, 0x400000

    invoke-direct {v0, p1, v1, v2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->clear()V

    .line 315
    :goto_0
    return-void
.end method

.method public whitelist test-api close()V
    .locals 1

    .line 219
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 222
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorClosed()V

    .line 223
    monitor-exit p0

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist deactivate()V
    .locals 1

    .line 213
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 214
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    .line 215
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 5

    .line 289
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_1

    .line 291
    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 294
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finalizing a Cursor that has not been deactivated or closed. database = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 296
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", table = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", query = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    .line 298
    const/16 v4, 0x3e8

    if-le v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 294
    invoke-static {v2, v3}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local v0    # "sql":Ljava/lang/String;
    .end local v1    # "len":I
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    .line 304
    nop

    .line 305
    return-void

    .line 303
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    .line 304
    throw v0
.end method

.method public whitelist getColumnIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 182
    .local v0, "columns":[Ljava/lang/String;
    array-length v1, v0

    .line 183
    .local v1, "columnCount":I
    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 184
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 185
    aget-object v4, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "i":I
    :cond_0
    iput-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 191
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "columnCount":I
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 192
    .local v0, "periodIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 193
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 194
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requesting column name with table name -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SQLiteCursor"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 198
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 199
    .local v2, "i":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 200
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 202
    :cond_3
    return v1
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCount()I
    .locals 2

    .line 143
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 146
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public whitelist getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onMove(II)Z
    .locals 4
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 124
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    .line 125
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 126
    :cond_0
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 129
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    .line 130
    .local v0, "startPos":I
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    .line 131
    .local v1, "numRows":I
    if-lt p2, v0, :cond_2

    add-int v2, v0, v1

    if-lt p2, v2, :cond_1

    goto :goto_0

    .line 138
    .end local v0    # "startPos":I
    .end local v1    # "numRows":I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 132
    .restart local v0    # "startPos":I
    .restart local v1    # "numRows":I
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMove() return false. RequiredPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WindowStartPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WindowRowCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(original count of query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SQLiteCursor"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist requery()Z
    .locals 5

    .line 228
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 229
    return v1

    .line 232
    :cond_0
    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    monitor-exit p0

    return v1

    .line 237
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->clear()V

    .line 240
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mPos:I

    .line 241
    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 243
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    .line 244
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :try_start_1
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "SQLiteCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requery() failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    return v1

    .line 244
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist setFillWindowForwardOnly(Z)V
    .locals 0
    .param p1, "fillWindowForwardOnly"    # Z

    .line 279
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteCursor;->mFillWindowForwardOnly:Z

    .line 280
    return-void
.end method

.method public whitelist setSelectionArguments([Ljava/lang/String;)V
    .locals 1
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 265
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public whitelist setWindow(Landroid/database/CursorWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/database/CursorWindow;

    .line 257
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 258
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 259
    return-void
.end method
