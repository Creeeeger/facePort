.class public final Landroid/database/sqlite/SQLiteRawStatement;
.super Ljava/lang/Object;
.source "SQLiteRawStatement.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteRawStatement$SQLiteDataType;
    }
.end annotation


# static fields
.field private static final blacklist SQLITE_BUSY:I = 0x5

.field public static final whitelist SQLITE_DATA_TYPE_BLOB:I = 0x4

.field public static final whitelist SQLITE_DATA_TYPE_FLOAT:I = 0x2

.field public static final whitelist SQLITE_DATA_TYPE_INTEGER:I = 0x1

.field public static final whitelist SQLITE_DATA_TYPE_NULL:I = 0x5

.field public static final whitelist SQLITE_DATA_TYPE_TEXT:I = 0x3

.field private static final blacklist SQLITE_DONE:I = 0x65

.field private static final blacklist SQLITE_LOCKED:I = 0x6

.field private static final blacklist SQLITE_OK:I = 0x0

.field private static final blacklist SQLITE_ROW:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "SQLiteRawStatement"


# instance fields
.field private final blacklist mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private blacklist mPreparedStatement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field private final blacklist mSession:Landroid/database/sqlite/SQLiteSession;

.field private final blacklist mSql:Ljava/lang/String;

.field private final blacklist mStatement:J

.field private blacklist mThread:Ljava/lang/Thread;


# direct methods
.method constructor blacklist <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSession:Landroid/database/sqlite/SQLiteSession;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSession:Landroid/database/sqlite/SQLiteSession;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    iput-object p2, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSession:Landroid/database/sqlite/SQLiteSession;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/database/sqlite/SQLiteSession;->acquirePersistentStatement(Ljava/lang/String;Ljava/io/Closeable;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mPreparedStatement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mPreparedStatement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    return-void
.end method

.method private static native blacklist nativeBindBlob(JI[BII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindDouble(JID)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindInt(JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindLong(JIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindNull(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindParameterCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindParameterIndex(JLjava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindParameterName(JI)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeBindText(JILjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeClearBindings(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnBlob(JI)[B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnBuffer(JI[BIII)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnBytes(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnDouble(JI)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnInt(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnLong(JI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnName(JI)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnText(JI)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeColumnType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeReset(JZ)V
.end method

.method private static native blacklist nativeStep(JZ)I
.end method

.method private blacklist throwIfInvalid()V
    .locals 3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "method called on a closed statement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method called on a foreign thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private blacklist throwIfInvalidBounds(III)V
    .locals 4

    if-ltz p1, :cond_2

    const-string v0, " for array length "

    const-string v1, "invalid offset "

    if-ltz p2, :cond_1

    if-ge p2, p1, :cond_1

    if-lez p3, :cond_0

    sub-int v2, p1, p2

    if-lt v2, p3, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid array length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist bindBlob(I[B)V
    .locals 6

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    array-length v5, p2

    const/4 v4, 0x0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindBlob(JI[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist bindBlob(I[BII)V
    .locals 7

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    array-length v0, p2

    invoke-direct {p0, v0, p3, p4}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalidBounds(III)V

    :try_start_0
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindBlob(JI[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist bindDouble(ID)V
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindDouble(JID)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist bindInt(II)V
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindInt(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist bindLong(IJ)V
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindLong(JIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist bindNull(I)V
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindNull(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist bindText(ILjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindText(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist clearBindings()V
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeClearBindings(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSession:Landroid/database/sqlite/SQLiteSession;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mPreparedStatement:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    invoke-virtual {v0, v1, p0}, Landroid/database/sqlite/SQLiteSession;->releasePersistentStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public whitelist getColumnBlob(I)[B
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnBlob(JI)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getColumnDouble(I)D
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnDouble(JI)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getColumnInt(I)I
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnInt(JI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getColumnLength(I)I
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnBytes(JI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getColumnLong(I)J
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnLong(JI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getColumnName(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnName(JI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getColumnText(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnText(JI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getColumnType(I)I
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnType(JI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getParameterCount()I
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindParameterCount(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getParameterIndex(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindParameterIndex(JLjava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getParameterName(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeBindParameterName(JI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getResultColumnCount()I
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnCount(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist isOpen()Z
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist readColumnBlob(I[BIII)I
    .locals 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    array-length v0, p2

    invoke-direct {p0, v0, p3, p4}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalidBounds(III)V

    :try_start_0
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SQLiteRawStatement;->nativeColumnBuffer(JI[BIII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist reset()V
    .locals 3

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeReset(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist step()Z
    .locals 4

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeStep(JZ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "database "

    sparse-switch v0, :sswitch_data_0

    :try_start_1
    new-instance v1, Landroid/database/sqlite/SQLiteException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :sswitch_0
    nop

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    const/4 v1, 0x0

    return v1

    :sswitch_1
    nop

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return v2

    :sswitch_2
    :try_start_2
    new-instance v2, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteRawStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " locked"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteDatabaseLockedException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_3
    new-instance v2, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteRawStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " busy"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteDatabaseLockedException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x64 -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist stepNoThrow()I
    .locals 4

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteRawStatement;->throwIfInvalid()V

    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteRawStatement;->mStatement:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteRawStatement;->nativeStep(JZ)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "SQLiteRawStatement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stepNoThrow() got error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for SQL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteRawStatement;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteRawStatement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteRawStatement: (closed) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteRawStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
