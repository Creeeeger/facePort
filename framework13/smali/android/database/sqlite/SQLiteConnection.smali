.class public final Landroid/database/sqlite/SQLiteConnection;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;,
        Landroid/database/sqlite/SQLiteConnection$Operation;,
        Landroid/database/sqlite/SQLiteConnection$OperationLog;,
        Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;,
        Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EMPTY_BYTE_ARRAY:[B

.field private static final greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteConnection"


# instance fields
.field private greylist-max-o mCancellationSignalAttachCount:I

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final greylist-max-o mConnectionId:I

.field private greylist-max-o mConnectionPtr:J

.field private blacklist mExpertPtr:J

.field private blacklist mIsOpen:Z

.field private final greylist-max-o mIsPrimaryConnection:Z

.field private final greylist-max-o mIsReadOnlyConnection:Z

.field private greylist-max-o mOnlyAllowReadOnlyOperations:Z

.field private final greylist-max-o mPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private final greylist-max-o mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

.field private greylist-max-o mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field private final greylist-max-o mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;


# direct methods
.method static bridge synthetic blacklist -$$Nest$manalyzeSql(Landroid/database/sqlite/SQLiteConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->analyzeSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfinalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprintQueryPlan(Landroid/database/sqlite/SQLiteConnection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->printQueryPlan(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_BYTE_ARRAY()[B
    .locals 1

    sget-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smtrimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/database/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 99
    nop

    .line 103
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 104
    new-array v0, v0, [B

    sput-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V
    .locals 4
    .param p1, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p2, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p3, "connectionId"    # I
    .param p4, "primaryConnection"    # Z

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 195
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 196
    new-instance v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v1, p2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 197
    iput p3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    .line 198
    iput-boolean p4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    .line 199
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isReadOnlyDatabase()Z

    move-result v2

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 200
    new-instance v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-direct {v2, p0, v3}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;-><init>(Landroid/database/sqlite/SQLiteConnection;I)V

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 202
    new-instance v2, Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-direct {v2, p1, p0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    .line 203
    const-string v1, "SQLiteConnection.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private greylist-max-o acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .locals 11
    .param p1, "sql"    # Ljava/lang/String;

    .line 1509
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1510
    .local v0, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    const/4 v1, 0x0

    .line 1511
    .local v1, "skipCache":Z
    if-eqz v0, :cond_1

    .line 1512
    iget-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez v2, :cond_0

    .line 1513
    return-object v0

    .line 1518
    :cond_0
    const/4 v1, 0x1

    .line 1521
    :cond_1
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3, p1}, Landroid/database/sqlite/SQLiteConnection;->nativePrepareStatement(JLjava/lang/String;)J

    move-result-wide v2

    .line 1523
    .local v2, "statementPtr":J
    :try_start_0
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeGetParameterCount(JJ)I

    move-result v8

    .line 1524
    .local v8, "numParameters":I
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v9

    .line 1525
    .local v9, "type":I
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeIsReadOnly(JJ)Z

    move-result v10

    .line 1526
    .local v10, "readOnly":Z
    move-object v4, p0

    move-object v5, p1

    move-wide v6, v2

    invoke-direct/range {v4 .. v10}, Landroid/database/sqlite/SQLiteConnection;->obtainPreparedStatement(Ljava/lang/String;JIIZ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v4

    move-object v0, v4

    .line 1527
    const/4 v4, 0x1

    if-nez v1, :cond_2

    invoke-static {v9}, Landroid/database/sqlite/SQLiteConnection;->isCacheable(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1528
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v5, p1, v0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    iput-boolean v4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    .end local v8    # "numParameters":I
    .end local v9    # "type":I
    .end local v10    # "readOnly":Z
    :cond_2
    nop

    .line 1539
    iput-boolean v4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 1540
    return-object v0

    .line 1531
    :catch_0
    move-exception v4

    .line 1534
    .local v4, "ex":Ljava/lang/RuntimeException;
    if-eqz v0, :cond_3

    iget-boolean v5, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-nez v5, :cond_4

    .line 1535
    :cond_3
    iget-wide v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v5, v6, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 1537
    :cond_4
    throw v4
.end method

.method private blacklist analyzeSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;

    .line 1476
    monitor-enter p0

    .line 1477
    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsOpen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1478
    monitor-exit p0

    return-object v1

    .line 1480
    :cond_0
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mExpertPtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 1481
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->getConnectionKey()[B

    move-result-object v0

    .line 1482
    .local v0, "key":[B
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 1484
    const-string v2, "SQLiteConnection"

    const-string v3, "Could not use expert without the key."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    monitor-exit p0

    return-object v1

    .line 1487
    :cond_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 1488
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1487
    invoke-static {v2, v3, v0}, Landroid/database/sqlite/SQLiteConnection;->nativeCreateExpert(Ljava/lang/String;Ljava/lang/String;[B)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mExpertPtr:J

    .line 1490
    .end local v0    # "key":[B
    :cond_2
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mExpertPtr:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 1491
    const-string v0, "SQLiteConnection"

    const-string v2, "Could not use expert to analyze. No pointer."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    monitor-exit p0

    return-object v1

    .line 1495
    :cond_3
    invoke-static {v2, v3, p1}, Landroid/database/sqlite/SQLiteConnection;->nativeExpertAnalyze(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1496
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private greylist-max-o applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1671
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1672
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz v0, :cond_0

    .line 1673
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    goto :goto_0

    .line 1675
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1678
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o attachCancellationSignal(Landroid/os/CancellationSignal;)V
    .locals 4
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1572
    if-eqz p1, :cond_0

    .line 1573
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1575
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 1576
    if-ne v0, v1, :cond_0

    .line 1578
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    .line 1581
    invoke-virtual {p1, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1584
    :cond_0
    return-void
.end method

.method private greylist-max-o bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .param p2, "bindArgs"    # [Ljava/lang/Object;

    .line 1612
    if-eqz p2, :cond_0

    array-length v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1613
    .local v0, "count":I
    :goto_0
    iget v1, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    if-ne v0, v1, :cond_5

    .line 1618
    if-nez v0, :cond_1

    .line 1619
    return-void

    .line 1622
    :cond_1
    iget-wide v9, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1623
    .local v9, "statementPtr":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1624
    aget-object v11, p2, v1

    .line 1625
    .local v11, "arg":Ljava/lang/Object;
    invoke-static {v11}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1642
    :pswitch_0
    instance-of v2, v11, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 1645
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    .line 1646
    move-object v4, v11

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    goto :goto_2

    .line 1638
    :pswitch_1
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    move-object v7, v11

    check-cast v7, [B

    move-wide v4, v9

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeBindBlob(JJI[B)V

    .line 1639
    goto :goto_3

    .line 1634
    :pswitch_2
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    move-object v4, v11

    check-cast v4, Ljava/lang/Number;

    .line 1635
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    .line 1634
    move-wide v4, v9

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SQLiteConnection;->nativeBindDouble(JJID)V

    .line 1636
    goto :goto_3

    .line 1630
    :pswitch_3
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    move-object v4, v11

    check-cast v4, Ljava/lang/Number;

    .line 1631
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 1630
    move-wide v4, v9

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    .line 1632
    goto :goto_3

    .line 1627
    :pswitch_4
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v3, v9, v10, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeBindNull(JJI)V

    .line 1628
    goto :goto_3

    .line 1646
    :cond_2
    const-wide/16 v4, 0x0

    :goto_2
    move-wide v7, v4

    .line 1645
    move-wide v4, v9

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    goto :goto_3

    .line 1648
    :cond_3
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v9

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeBindString(JJILjava/lang/String;)V

    .line 1623
    .end local v11    # "arg":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1653
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 1614
    .end local v9    # "statementPtr":J
    :cond_5
    new-instance v1, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bind arguments but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " were provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static greylist-max-o canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 630
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 636
    return-object p0

    .line 634
    :pswitch_4
    const-string v0, "EXTRA"

    return-object v0

    .line 633
    :pswitch_5
    const-string v0, "FULL"

    return-object v0

    .line 632
    :pswitch_6
    const-string v0, "NORMAL"

    return-object v0

    .line 631
    :pswitch_7
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist checkDatabaseWiped()V
    .locals 5

    .line 779
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->checkDbWipe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    return-void

    .line 783
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-wipecheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 786
    .local v0, "checkFile":Ljava/io/File;
    const-string v1, "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'android_metadata\'"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 789
    .local v1, "hasMetadataTable":Z
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 791
    .local v2, "hasCheckFile":Z
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    .line 794
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 797
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    .line 799
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    const-string/jumbo v4, "unknown"

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->wipeDetected(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    .end local v0    # "checkFile":Ljava/io/File;
    .end local v1    # "hasMetadataTable":Z
    .end local v2    # "hasCheckFile":Z
    :cond_3
    goto :goto_1

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SQLiteConnection"

    const-string v2, "Unexpected exception while checking for wipe"

    invoke-static {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->wtfAsSystemServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 806
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private blacklist destroyExpert()V
    .locals 5

    .line 1500
    monitor-enter p0

    .line 1501
    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mExpertPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1502
    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeDestroyExpert(J)V

    .line 1503
    iput-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mExpertPtr:J

    .line 1505
    :cond_0
    monitor-exit p0

    .line 1506
    return-void

    .line 1505
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private greylist-max-o detachCancellationSignal(Landroid/os/CancellationSignal;)V
    .locals 3
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1587
    if-eqz p1, :cond_0

    .line 1588
    nop

    .line 1590
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 1591
    if-nez v0, :cond_0

    .line 1593
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1596
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    .line 1599
    :cond_0
    return-void
.end method

.method private greylist-max-o dispose(Z)V
    .locals 8
    .param p1, "finalized"    # Z

    .line 433
    const-string v0, "\'"

    const-string/jumbo v1, "window=\'"

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v2, :cond_1

    .line 434
    if-eqz p1, :cond_0

    .line 435
    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 437
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 440
    :cond_1
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 441
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v3, "close"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v6}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 443
    .local v2, "cookie":I
    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->evictAll()V

    .line 444
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeClose(J)V

    .line 445
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    .line 446
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection;->mIsOpen:Z

    .line 447
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-eqz v3, :cond_2

    .line 448
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->destroyExpert()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_2
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 452
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 452
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 453
    :cond_3
    throw v3

    .line 455
    .end local v2    # "cookie":I
    :cond_4
    :goto_0
    return-void
.end method

.method private blacklist executePerConnectionSqlFromConfiguration(I)V
    .locals 6
    .param p1, "startIndex"    # I

    .line 761
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 762
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 763
    .local v1, "statement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    .line 764
    .local v2, "type":I
    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 772
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported configuration statement: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 769
    :sswitch_0
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 770
    goto :goto_1

    .line 766
    :sswitch_1
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    .line 767
    nop

    .line 761
    .end local v1    # "statement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v2    # "type":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    .end local v0    # "i":I
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 4
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1567
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 1568
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1569
    return-void
.end method

.method private greylist-max-o getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;
    .locals 13
    .param p1, "lookaside"    # I
    .param p2, "pageCount"    # J
    .param p4, "pageSize"    # J

    .line 1799
    move-object v0, p0

    iget-boolean v1, v0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    if-eqz v1, :cond_0

    .line 1800
    iget-object v1, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .local v1, "label":Ljava/lang/String;
    goto :goto_0

    .line 1802
    .end local v1    # "label":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1804
    .restart local v1    # "label":Ljava/lang/String;
    :goto_0
    new-instance v12, Landroid/database/sqlite/SQLiteDebug$DbStats;

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1805
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->hitCount()I

    move-result v9

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1806
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->missCount()I

    move-result v10

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1807
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->size()I

    move-result v11

    move-object v2, v12

    move-object v3, v1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move v8, p1

    invoke-direct/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    .line 1804
    return-object v12
.end method

.method private static greylist-max-o isCacheable(I)Z
    .locals 2
    .param p0, "statementType"    # I

    .line 1663
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1667
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1665
    :cond_1
    :goto_0
    return v0
.end method

.method private blacklist maybeTruncateWalFile()V
    .locals 8

    .line 583
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z

    if-nez v0, :cond_0

    .line 584
    return-void

    .line 587
    :cond_0
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALTruncateSize()J

    move-result-wide v0

    .line 591
    .local v0, "threshold":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 592
    return-void

    .line 595
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-wal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v2, "walFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_2

    .line 597
    return-void

    .line 599
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 600
    .local v3, "size":J
    cmp-long v5, v3, v0

    if-gez v5, :cond_3

    .line 604
    return-void

    .line 607
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes: Bigger than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; truncating"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SQLiteConnection"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :try_start_0
    const-string v5, "PRAGMA wal_checkpoint(TRUNCATE)"

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7, v7}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    .line 611
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    goto :goto_0

    .line 612
    :catch_0
    move-exception v5

    .line 613
    .local v5, "e":Landroid/database/sqlite/SQLiteException;
    const-string v7, "Failed to truncate the -wal file"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .end local v5    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method

.method public static native blacklist nativeBackupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native blacklist nativeBackupSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I
.end method

.method private static native greylist-max-o nativeBindBlob(JJI[B)V
.end method

.method private static native greylist-max-o nativeBindDouble(JJID)V
.end method

.method private static native greylist-max-o nativeBindLong(JJIJ)V
.end method

.method private static native greylist-max-o nativeBindNull(JJI)V
.end method

.method private static native greylist-max-o nativeBindString(JJILjava/lang/String;)V
.end method

.method private static native greylist-max-o nativeCancel(J)V
.end method

.method private static native blacklist nativeChangePassword(J[B)[B
.end method

.method private static native greylist-max-o nativeClose(J)V
.end method

.method private static native blacklist nativeCreateExpert(Ljava/lang/String;Ljava/lang/String;[B)J
.end method

.method private static native blacklist nativeDestroyExpert(J)V
.end method

.method private static native blacklist nativeExecute(JJZ)V
.end method

.method private static native greylist-max-o nativeExecuteForBlobFileDescriptor(JJ)I
.end method

.method private static native greylist-max-o nativeExecuteForChangedRowCount(JJ)I
.end method

.method private static native greylist-max-o nativeExecuteForCursorWindow(JJJIIZ)J
.end method

.method private static native greylist-max-o nativeExecuteForLastInsertedRowId(JJ)J
.end method

.method private static native greylist-max-o nativeExecuteForLong(JJ)J
.end method

.method private static native greylist-max-o nativeExecuteForString(JJ)Ljava/lang/String;
.end method

.method private static native blacklist nativeExpertAnalyze(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native blacklist nativeExportDB(JLjava/lang/String;)V
.end method

.method private static native greylist-max-o nativeFinalizeStatement(JJ)V
.end method

.method private static native greylist-max-o nativeGetColumnCount(JJ)I
.end method

.method private static native greylist-max-o nativeGetColumnName(JJI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetDbLookaside(J)I
.end method

.method private static native greylist-max-o nativeGetParameterCount(JJ)I
.end method

.method private static native blacklist nativeIsForcedReadOnly(J)Z
.end method

.method private static native greylist-max-o nativeIsReadOnly(JJ)Z
.end method

.method private static native greylist-max-o nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZII)J
.end method

.method private static native greylist-max-o nativePrepareStatement(JLjava/lang/String;)J
.end method

.method private static native blacklist nativeRegisterCustomAggregateFunction(JLjava/lang/String;Ljava/util/function/BinaryOperator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/function/BinaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeRegisterCustomScalarFunction(JLjava/lang/String;Ljava/util/function/UnaryOperator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeRegisterLocalizedCollators(JLjava/lang/String;)V
.end method

.method private static native greylist-max-o nativeResetCancel(JZ)V
.end method

.method private static native greylist-max-o nativeResetStatementAndClearBindings(JJ)V
.end method

.method public static native blacklist nativeRestoreDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native blacklist nativeRestoreSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I
.end method

.method private static native blacklist nativeSetCheckpointOnClose(JZ)V
.end method

.method private static native blacklist nativeSetPassword(J[B)[B
.end method

.method private greylist-max-o obtainPreparedStatement(Ljava/lang/String;JIIZ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "statementPtr"    # J
    .param p4, "numParameters"    # I
    .param p5, "type"    # I
    .param p6, "readOnly"    # Z

    .line 1817
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1818
    .local v0, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1819
    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1820
    iput-object v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1821
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    goto :goto_0

    .line 1823
    :cond_0
    new-instance v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;-><init>(Landroid/database/sqlite/SQLiteConnection$PreparedStatement-IA;)V

    move-object v0, v2

    .line 1825
    :goto_0
    iput-object p1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1826
    iput-wide p2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1827
    iput p4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    .line 1828
    iput p5, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    .line 1829
    iput-boolean p6, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    .line 1830
    return-object v0
.end method

.method static greylist-max-o open(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)Landroid/database/sqlite/SQLiteConnection;
    .locals 4
    .param p0, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "connectionId"    # I
    .param p3, "primaryConnection"    # Z

    .line 223
    new-instance v0, Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnection;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V

    .line 226
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_0
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteConnection;->open()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-object v0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    instance-of v2, v1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteConnection;->setCheckpointOnClose(Z)V

    .line 232
    :cond_0
    invoke-direct {v0, v3}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 233
    throw v1
.end method

.method private greylist-max-o open()V
    .locals 10

    .line 352
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 353
    .local v0, "file":Ljava/lang/String;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v2, "open"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v8

    .line 355
    .local v8, "cookie":I
    const/4 v9, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    sget-boolean v4, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_STATEMENTS:Z

    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_TIME:Z

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v6, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v7, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 396
    nop

    .line 399
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 400
    return-void

    .line 404
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setPageSize()V

    .line 405
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 406
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalFromConfiguration()V

    .line 407
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setSyncModeFromConfiguration()V

    .line 408
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalSizeLimit()V

    .line 409
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setAutoCheckpointInterval()V

    .line 411
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setAutomaticIndexFromConfiguration()V

    .line 412
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setBusyTimeoutFromConfiguration()V

    .line 413
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setCacheSizeFromConfiguration()V

    .line 414
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setCaseSensitiveLikeFromConfiguration()V

    .line 416
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 417
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setCustomFunctionsFromConfiguration()V

    .line 418
    invoke-direct {p0, v9}, Landroid/database/sqlite/SQLiteConnection;->executePerConnectionSqlFromConfiguration(I)V

    .line 420
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setUserDataRecovery()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 428
    goto :goto_0

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "ex":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnection;->isForcedReadOnlyConnection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    const-string v2, "SQLiteConnection"

    const-string v3, "This connection is forced to be a read-only connection. Ignore SQLiteReadOnlyDatabaseException."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v1    # "ex":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mIsOpen:Z

    .line 430
    return-void

    .line 426
    .restart local v1    # "ex":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    :cond_1
    throw v1

    .line 395
    .end local v1    # "ex":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 359
    :catch_1
    move-exception v1

    .line 360
    .local v1, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot open database \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with flags 0x"

    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 363
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    .local v2, "message":Ljava/lang/StringBuilder;
    :try_start_3
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 370
    .local v3, "path":Ljava/nio/file/Path;
    invoke-interface {v3}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v4

    .line 371
    .local v4, "dir":Ljava/nio/file/Path;
    if-eqz v4, :cond_6

    .line 373
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v6, " doesn\'t exist"

    if-eqz v5, :cond_5

    .line 375
    :try_start_4
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v7, ": File "

    if-nez v5, :cond_2

    .line 376
    :try_start_5
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    .line 379
    const-string v5, " and CREATE_IF_NECESSARY is set, check directory permissions"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 382
    :cond_2
    invoke-static {v3}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 384
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 385
    const-string v5, ": Path "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 387
    :cond_3
    const-string v5, ": Unable to deduct failure reason"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 383
    :cond_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not readable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 374
    :cond_5
    const-string v5, ": Directory "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 372
    :cond_6
    const-string v5, ": Directory not specified in the file path"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 392
    .end local v3    # "path":Ljava/nio/file/Path;
    .end local v4    # "dir":Ljava/nio/file/Path;
    :cond_7
    :goto_1
    goto :goto_2

    .line 389
    :catchall_1
    move-exception v3

    .line 390
    .local v3, "th":Ljava/lang/Throwable;
    :try_start_6
    const-string v4, ": Unable to deduct failure reason because filesystem couldn\'t be examined: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 391
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .end local v3    # "th":Ljava/lang/Throwable;
    :goto_2
    new-instance v3, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/lang/String;
    .end local v8    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 395
    .end local v1    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    .end local v2    # "message":Ljava/lang/StringBuilder;
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v8    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    :goto_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 396
    throw v1
.end method

.method private blacklist open([B)V
    .locals 10
    .param p1, "password"    # [B

    .line 263
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 264
    .local v0, "file":Ljava/lang/String;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v2, "open"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v8

    .line 266
    .local v8, "cookie":I
    const/4 v9, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    sget-boolean v4, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_STATEMENTS:Z

    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_TIME:Z

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v6, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v7, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 307
    nop

    .line 309
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 310
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->setPassword([B)[B

    move-result-object v1

    .line 318
    .local v1, "key":[B
    :try_start_1
    const-string/jumbo v2, "mid"

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->setPageIntegrityLevel(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 321
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalFromConfiguration()V

    .line 322
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setSyncModeFromConfiguration()V

    .line 323
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalSizeLimit()V

    .line 324
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setAutoCheckpointInterval()V

    .line 326
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setAutomaticIndexFromConfiguration()V

    .line 327
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setBusyTimeoutFromConfiguration()V

    .line 328
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setCacheSizeFromConfiguration()V

    .line 329
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setCaseSensitiveLikeFromConfiguration()V

    .line 331
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 332
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setCustomFunctionsFromConfiguration()V

    .line 333
    invoke-direct {p0, v9}, Landroid/database/sqlite/SQLiteConnection;->executePerConnectionSqlFromConfiguration(I)V

    .line 335
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setUserDataRecovery()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 343
    goto :goto_0

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, "ex":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnection;->isForcedReadOnlyConnection()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    const-string v3, "SQLiteConnection"

    const-string v4, "This connection is forced to be a read-only connection. Ignore SQLiteReadOnlyDatabaseException."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    :goto_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->saveConnectionKey([B)V

    .line 346
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteConnection;->mIsOpen:Z

    .line 347
    return-void

    .line 341
    .restart local v2    # "ex":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    :cond_1
    throw v2

    .line 306
    .end local v1    # "key":[B
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 270
    :catch_1
    move-exception v1

    .line 271
    .local v1, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot open database \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with flags 0x"

    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 274
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    .local v2, "message":Ljava/lang/StringBuilder;
    :try_start_3
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 281
    .local v3, "path":Ljava/nio/file/Path;
    invoke-interface {v3}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v4

    .line 282
    .local v4, "dir":Ljava/nio/file/Path;
    if-eqz v4, :cond_6

    .line 284
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v6, " doesn\'t exist"

    if-eqz v5, :cond_5

    .line 286
    :try_start_4
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v7, ": File "

    if-nez v5, :cond_2

    .line 287
    :try_start_5
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    .line 290
    const-string v5, " and CREATE_IF_NECESSARY is set, check directory permissions"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 293
    :cond_2
    invoke-static {v3}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 295
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 296
    const-string v5, ": Path "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 298
    :cond_3
    const-string v5, ": Unable to deduct failure reason"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 294
    :cond_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not readable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 285
    :cond_5
    const-string v5, ": Directory "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 283
    :cond_6
    const-string v5, ": Directory not specified in the file path"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 303
    .end local v3    # "path":Ljava/nio/file/Path;
    .end local v4    # "dir":Ljava/nio/file/Path;
    :cond_7
    :goto_1
    goto :goto_2

    .line 300
    :catchall_1
    move-exception v3

    .line 301
    .local v3, "th":Ljava/lang/Throwable;
    :try_start_6
    const-string v4, ": Unable to deduct failure reason because filesystem couldn\'t be examined: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 302
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .end local v3    # "th":Ljava/lang/Throwable;
    :goto_2
    new-instance v3, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/lang/String;
    .end local v8    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "password":[B
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 306
    .end local v1    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    .end local v2    # "message":Ljava/lang/StringBuilder;
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v8    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "password":[B
    :goto_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 307
    throw v1
.end method

.method static blacklist openSecure(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ[B)Landroid/database/sqlite/SQLiteConnection;
    .locals 4
    .param p0, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "connectionId"    # I
    .param p3, "primaryConnection"    # Z
    .param p4, "password"    # [B

    .line 241
    new-instance v0, Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnection;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V

    .line 244
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_0
    invoke-direct {v0, p4}, Landroid/database/sqlite/SQLiteConnection;->open([B)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    return-object v0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    instance-of v2, v1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteConnection;->setCheckpointOnClose(Z)V

    .line 250
    :cond_0
    invoke-direct {v0, v3}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 251
    throw v1
.end method

.method private blacklist printQueryPlan(Ljava/lang/String;)V
    .locals 19
    .param p1, "sql"    # Ljava/lang/String;

    .line 1423
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "|"

    iget-boolean v3, v1, Landroid/database/sqlite/SQLiteConnection;->mIsOpen:Z

    if-nez v3, :cond_0

    .line 1424
    return-void

    .line 1427
    :cond_0
    const-wide/16 v3, 0x0

    .line 1428
    .local v3, "statementPtr":J
    const/4 v5, 0x0

    .line 1430
    .local v5, "window":Landroid/database/CursorWindow;
    const-wide/16 v6, 0x0

    :try_start_0
    new-instance v8, Landroid/database/CursorWindow;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QueryPlan-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    move-object v5, v8

    .line 1431
    iget-wide v8, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EXPLAIN QUERY PLAN "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/database/sqlite/SQLiteConnection;->nativePrepareStatement(JLjava/lang/String;)J

    move-result-wide v8

    move-wide v3, v8

    .line 1432
    iget-wide v10, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v14, v5, Landroid/database/CursorWindow;->mWindowPtr:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v12, v3

    invoke-static/range {v10 .. v18}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForCursorWindow(JJJIIZ)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1435
    .local v8, "result":J
    cmp-long v10, v8, v6

    if-nez v10, :cond_2

    .line 1459
    nop

    .line 1460
    invoke-virtual {v5}, Landroid/database/CursorWindow;->close()V

    .line 1462
    cmp-long v0, v3, v6

    if-eqz v0, :cond_1

    .line 1463
    iget-wide v6, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v6, v7, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 1436
    :cond_1
    return-void

    .line 1439
    :cond_2
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1440
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v11, "plan=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    int-to-long v12, v11

    cmp-long v12, v12, v8

    if-gez v12, :cond_3

    .line 1442
    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v12

    .line 1443
    .local v12, "selectId":I
    const/4 v13, 0x1

    invoke-virtual {v5, v11, v13}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v13

    .line 1444
    .local v13, "order":I
    const/4 v14, 0x2

    invoke-virtual {v5, v11, v14}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v14

    .line 1445
    .local v14, "from":I
    const/4 v15, 0x3

    invoke-virtual {v5, v11, v15}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v15

    .line 1447
    .local v15, "detail":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " * "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    nop

    .end local v12    # "selectId":I
    .end local v13    # "order":I
    .end local v14    # "from":I
    .end local v15    # "detail":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v6, 0x0

    goto :goto_0

    .line 1450
    .end local v11    # "i":I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, "hash":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", sql=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", window=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', hash="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1453
    .local v6, "log":Ljava/lang/String;
    const-string v7, "SQLiteQueryPlan"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1459
    nop

    .line 1460
    .end local v0    # "hash":Ljava/lang/String;
    .end local v6    # "log":Ljava/lang/String;
    .end local v8    # "result":J
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Landroid/database/CursorWindow;->close()V

    .line 1462
    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-eqz v0, :cond_5

    .line 1463
    :goto_1
    iget-wide v6, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v6, v7, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    goto :goto_2

    .line 1459
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1454
    :catch_0
    move-exception v0

    .line 1456
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v6, "SQLiteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to explain query plan : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1459
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    if-eqz v5, :cond_4

    .line 1460
    invoke-virtual {v5}, Landroid/database/CursorWindow;->close()V

    .line 1462
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-eqz v0, :cond_5

    .line 1463
    goto :goto_1

    .line 1466
    :cond_5
    :goto_2
    return-void

    .line 1459
    :goto_3
    if-eqz v5, :cond_6

    .line 1460
    invoke-virtual {v5}, Landroid/database/CursorWindow;->close()V

    .line 1462
    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-eqz v6, :cond_7

    .line 1463
    iget-wide v6, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v6, v7, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 1465
    :cond_7
    throw v0
.end method

.method private greylist-max-o recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1834
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1835
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1836
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1837
    return-void
.end method

.method private greylist-max-o releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 4
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1544
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 1545
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v0, :cond_0

    .line 1547
    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeResetStatementAndClearBindings(JJ)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1548
    :catch_0
    move-exception v0

    .line 1559
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_0
    goto :goto_1

    .line 1562
    :cond_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1564
    :goto_1
    return-void
.end method

.method private greylist-max-o setAutoCheckpointInterval()V
    .locals 7

    .line 468
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->getAutoCheckpoint()J

    move-result-wide v0

    .line 470
    .local v0, "newValue":J
    const-string v2, "PRAGMA wal_autocheckpoint"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 471
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA wal_autocheckpoint="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    .line 475
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_0
    return-void
.end method

.method private blacklist setAutomaticIndexFromConfiguration()V
    .locals 7

    .line 488
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 489
    .local v0, "newValue":J
    :goto_0
    const-string v2, "PRAGMA automatic_index"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 490
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_1

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA automatic_index="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 493
    :cond_1
    return-void
.end method

.method private blacklist setBusyTimeoutFromConfiguration()V
    .locals 8

    .line 511
    const-string v0, "SQLiteConnection"

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    .line 512
    .local v1, "newValue":J
    const-wide/16 v3, 0x9c4

    .line 514
    .local v3, "value":J
    const/4 v5, 0x0

    :try_start_0
    const-string v6, "PRAGMA busy_timeout"

    invoke-virtual {p0, v6, v5, v5}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v3, v6

    .line 519
    goto :goto_0

    .line 515
    :catch_0
    move-exception v6

    .line 518
    .local v6, "ex":Landroid/database/sqlite/SQLiteException;
    const-string v7, "Error getting busy_timeout"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    .end local v6    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_0
    cmp-long v6, v3, v1

    if-eqz v6, :cond_0

    .line 522
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA busy_timeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v5}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 524
    :catch_1
    move-exception v5

    .line 525
    .local v5, "ex":Landroid/database/sqlite/SQLiteException;
    const-string v6, "Error setting busy_timeout"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 526
    .end local v5    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    nop

    .line 527
    :goto_2
    return-void
.end method

.method private blacklist setCacheSizeFromConfiguration()V
    .locals 7

    .line 530
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    if-nez v0, :cond_0

    .line 531
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultCacheSize()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    :goto_0
    int-to-long v0, v0

    .line 532
    .local v0, "newValue":J
    const-string v2, "PRAGMA cache_size"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 533
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_1

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA cache_size="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 536
    :cond_1
    return-void
.end method

.method private blacklist setCaseSensitiveLikeFromConfiguration()V
    .locals 8

    .line 496
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 497
    .local v0, "newValue":J
    :goto_0
    const-wide/16 v2, -0x1

    .line 499
    .local v2, "value":J
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "PRAGMA case_sensitive_like"

    invoke-virtual {p0, v5, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v5

    .line 504
    goto :goto_1

    .line 500
    :catch_0
    move-exception v5

    .line 503
    .local v5, "ex":Landroid/database/sqlite/SQLiteException;
    const-string v6, "SQLiteConnection"

    const-string v7, "Error getting case_sensitive_like"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .end local v5    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_1
    cmp-long v5, v2, v0

    if-eqz v5, :cond_1

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA case_sensitive_like="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 508
    :cond_1
    return-void
.end method

.method private blacklist setCustomFunctionsFromConfiguration()V
    .locals 5

    .line 748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 749
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 750
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 751
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/UnaryOperator;

    .line 749
    invoke-static {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomScalarFunction(JLjava/lang/String;Ljava/util/function/UnaryOperator;)V

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 754
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 755
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 756
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/BinaryOperator;

    .line 754
    invoke-static {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomAggregateFunction(JLjava/lang/String;Ljava/util/function/BinaryOperator;)V

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 758
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o setForeignKeyModeFromConfiguration()V
    .locals 7

    .line 539
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_1

    .line 540
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 541
    .local v0, "newValue":J
    :goto_0
    const-string v2, "PRAGMA foreign_keys"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 542
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_1

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA foreign_keys="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 546
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_1
    return-void
.end method

.method private blacklist setJournalFromConfiguration()V
    .locals 2

    .line 549
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isMediaStoreDb:Z

    if-nez v0, :cond_1

    .line 552
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->maybeTruncateWalFile()V

    goto :goto_0

    .line 556
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z

    .line 558
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o setJournalMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/String;

    .line 651
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    return-void

    .line 655
    :cond_0
    const-string v0, "PRAGMA journal_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 658
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA journal_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 660
    return-void

    .line 667
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 664
    :catch_0
    move-exception v1

    .line 680
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not change the database journal mode of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' because the database is locked.  This usually means that there are other open connections to the database which prevents the database from enabling or disabling write-ahead logging mode.  Proceeding without changing the journal mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnection"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_2
    return-void
.end method

.method private greylist-max-o setJournalSizeLimit()V
    .locals 7

    .line 478
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->getJournalSizeLimit()J

    move-result-wide v0

    .line 480
    .local v0, "newValue":J
    const-string v2, "PRAGMA journal_size_limit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 481
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA journal_size_limit="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    .line 485
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_0
    return-void
.end method

.method private greylist-max-o setLocaleFromConfiguration()V
    .locals 11

    .line 690
    const-string v0, "COMMIT"

    const-string v1, "ROLLBACK"

    const-string v2, "\'."

    const-string v3, "\' to \'"

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_0

    .line 691
    return-void

    .line 695
    :cond_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, "newLocale":Ljava/lang/String;
    iget-wide v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v5, v6, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterLocalizedCollators(JLjava/lang/String;)V

    .line 698
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v5

    if-nez v5, :cond_1

    .line 699
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->checkDatabaseWiped()V

    .line 704
    :cond_1
    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 710
    :cond_2
    :try_start_0
    const-string v5, "CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 713
    const-string v5, "SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1"

    invoke-virtual {p0, v5, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, "oldLocale":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 716
    return-void

    .line 720
    :cond_3
    const-string v7, "BEGIN"

    invoke-virtual {p0, v7, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    const/4 v7, 0x0

    .line 723
    .local v7, "success":Z
    :try_start_1
    const-string v8, "DELETE FROM android_metadata"

    invoke-virtual {p0, v8, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 724
    const-string v8, "INSERT INTO android_metadata (locale) VALUES(?)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {p0, v8, v9, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 726
    const-string v8, "REINDEX LOCALIZED"

    invoke-virtual {p0, v8, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    const/4 v7, 0x1

    .line 729
    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    :try_start_2
    invoke-virtual {p0, v0, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 730
    nop

    .line 738
    .end local v5    # "oldLocale":Ljava/lang/String;
    .end local v7    # "success":Z
    nop

    .line 739
    return-void

    .line 729
    .restart local v5    # "oldLocale":Ljava/lang/String;
    .restart local v7    # "success":Z
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 730
    nop

    .end local v4    # "newLocale":Ljava/lang/String;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    throw v8
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 735
    .end local v5    # "oldLocale":Ljava/lang/String;
    .end local v7    # "success":Z
    .restart local v4    # "newLocale":Ljava/lang/String;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    :catch_0
    move-exception v0

    .line 736
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to change locale for db \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 731
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 732
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to change locale for db\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnection"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    throw v0

    .line 705
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_6
    :goto_2
    return-void
.end method

.method private blacklist setPageIntegrityLevel(Ljava/lang/String;)V
    .locals 4
    .param p1, "newLevel"    # Ljava/lang/String;

    .line 568
    :try_start_0
    const-string v0, "PRAGMA page_integrity_level"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "level":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA page_integrity_level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .end local v0    # "level":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 576
    :goto_0
    return-void
.end method

.method private greylist-max-o setPageSize()V
    .locals 7

    .line 458
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 459
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultPageSize()I

    move-result v0

    int-to-long v0, v0

    .line 460
    .local v0, "newValue":J
    const-string v2, "PRAGMA page_size"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 461
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA page_size="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 465
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_0
    return-void
.end method

.method private greylist-max-o setSyncMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/String;

    .line 618
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    return-void

    .line 622
    :cond_0
    const-string v0, "PRAGMA synchronous"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 624
    invoke-static {p1}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 623
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA synchronous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 627
    :cond_1
    return-void
.end method

.method private blacklist setSyncModeFromConfiguration()V
    .locals 1

    .line 561
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    .line 564
    :cond_0
    return-void
.end method

.method private blacklist setUserDataRecovery()V
    .locals 2

    .line 644
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->useUserDataRecovery:Z

    if-eqz v0, :cond_0

    .line 646
    const-string v0, "PRAGMA udr_recovery=1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 648
    :cond_0
    return-void
.end method

.method private greylist-max-o throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 2
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1656
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1657
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Cannot execute this statement because it might modify the database but the connection is read-only."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1660
    :cond_1
    :goto_0
    return-void
.end method

.method private static greylist-max-o trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sql"    # Ljava/lang/String;

    .line 1844
    const-string v0, "[\\s]*\\n+[\\s]*"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist changePassword([B)[B
    .locals 2
    .param p1, "newPassword"    # [B

    .line 1403
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteConnection;->nativeChangePassword(J[B)[B

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o close()V
    .locals 1

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 260
    return-void
.end method

.method greylist-max-o collectDbStats(Ljava/util/ArrayList;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1744
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-string v11, "PRAGMA "

    iget-wide v0, v9, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeGetDbLookaside(J)I

    move-result v12

    .line 1745
    .local v12, "lookaside":I
    const-wide/16 v1, 0x0

    .line 1746
    .local v1, "pageCount":J
    const-wide/16 v3, 0x0

    .line 1748
    .local v3, "pageSize":J
    const/4 v13, 0x0

    :try_start_0
    const-string v0, "PRAGMA page_count;"

    invoke-virtual {v9, v0, v13, v13}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5

    move-wide v1, v5

    .line 1749
    const-string v0, "PRAGMA page_size;"

    invoke-virtual {v9, v0, v13, v13}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v3, v5

    .line 1752
    move-wide v14, v1

    move-wide/from16 v16, v3

    goto :goto_0

    .line 1750
    :catch_0
    move-exception v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    .line 1753
    .end local v1    # "pageCount":J
    .end local v3    # "pageSize":J
    .local v14, "pageCount":J
    .local v16, "pageSize":J
    :goto_0
    move-object/from16 v1, p0

    move v2, v12

    move-wide v3, v14

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    new-instance v0, Landroid/database/CursorWindow;

    const-string v1, "collectDbStats"

    invoke-direct {v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 1760
    .local v8, "window":Landroid/database/CursorWindow;
    :try_start_1
    const-string v2, "PRAGMA database_list;"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v4, v8

    move-object/from16 v18, v8

    .end local v8    # "window":Landroid/database/CursorWindow;
    .local v18, "window":Landroid/database/CursorWindow;
    move-object v8, v0

    :try_start_2
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I

    .line 1761
    const/4 v0, 0x1

    move v1, v0

    .local v1, "i":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ge v1, v0, :cond_1

    .line 1762
    const/4 v0, 0x1

    move-object/from16 v2, v18

    .end local v18    # "window":Landroid/database/CursorWindow;
    .local v2, "window":Landroid/database/CursorWindow;
    :try_start_3
    invoke-virtual {v2, v1, v0}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1763
    .local v3, "name":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v2, v1, v0}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v0

    .line 1764
    .local v4, "path":Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 1765
    const-wide/16 v16, 0x0

    .line 1767
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".page_count;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v13, v13}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5

    move-wide v14, v5

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".page_size;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v13, v13}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1771
    .end local v16    # "pageSize":J
    .local v5, "pageSize":J
    move-wide/from16 v16, v5

    goto :goto_2

    .line 1769
    .end local v5    # "pageSize":J
    .restart local v16    # "pageSize":J
    :catch_1
    move-exception v0

    .line 1772
    :goto_2
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "  (attached) "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1773
    .local v0, "label":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1774
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    :cond_0
    new-instance v5, Landroid/database/sqlite/SQLiteDebug$DbStats;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, v5

    move-wide/from16 v20, v14

    move-wide/from16 v22, v16

    invoke-direct/range {v18 .. v27}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1761
    nop

    .end local v0    # "label":Ljava/lang/StringBuilder;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v18, v2

    goto/16 :goto_1

    .line 1781
    .end local v1    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1778
    :catch_2
    move-exception v0

    goto :goto_4

    .line 1761
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v1    # "i":I
    .restart local v18    # "window":Landroid/database/CursorWindow;
    :cond_1
    move-object/from16 v2, v18

    .end local v1    # "i":I
    .end local v18    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    goto :goto_4

    .line 1781
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v18    # "window":Landroid/database/CursorWindow;
    :catchall_1
    move-exception v0

    move-object/from16 v2, v18

    .end local v18    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    goto :goto_3

    .line 1778
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v18    # "window":Landroid/database/CursorWindow;
    :catch_3
    move-exception v0

    move-object/from16 v2, v18

    .end local v18    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    goto :goto_4

    .line 1781
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v8    # "window":Landroid/database/CursorWindow;
    :catchall_2
    move-exception v0

    move-object v2, v8

    .end local v8    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    :goto_3
    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    .line 1782
    throw v0

    .line 1778
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v8    # "window":Landroid/database/CursorWindow;
    :catch_4
    move-exception v0

    move-object v2, v8

    .line 1781
    .end local v8    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    :goto_4
    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    .line 1782
    nop

    .line 1783
    return-void
.end method

.method greylist-max-o collectDbStatsUnsafe(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1792
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    return-void
.end method

.method greylist-max-o describeCurrentOperationUnsafe()Ljava/lang/String;
    .locals 1

    .line 1734
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->describeCurrentOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Z)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .line 1687
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 1688
    return-void
.end method

.method greylist-max-o dumpUnsafe(Landroid/util/Printer;Z)V
    .locals 3
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1706
    if-eqz p2, :cond_0

    .line 1707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  connectionPtr: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1709
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isPrimaryConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onlyAllowReadOnlyOperations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1712
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dump(Landroid/util/Printer;)V

    .line 1714
    if-eqz p2, :cond_1

    .line 1715
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->dump(Landroid/util/Printer;)V

    .line 1717
    :cond_1
    return-void
.end method

.method public greylist-max-o execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .locals 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1000
    const-string v0, "\'"

    const-string/jumbo v1, "window=\'"

    if-eqz p1, :cond_5

    .line 1004
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v3, "execute"

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 1006
    .local v2, "cookie":I
    nop

    .line 1007
    :try_start_0
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1008
    .local v3, "isPragmaStmt":Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1010
    .local v4, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1011
    invoke-direct {p0, v4, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 1012
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1013
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1015
    :try_start_2
    iget-wide v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v7, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v5, v6, v7, v8, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeExecute(JJZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1017
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1018
    nop

    .line 1020
    :try_start_4
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1021
    nop

    .line 1026
    .end local v3    # "isPragmaStmt":Z
    .end local v4    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v3

    .line 1027
    .local v3, "ret":I
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    .line 1028
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1030
    :cond_1
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_2

    .line 1031
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->collectOperation(I)V

    .line 1033
    .end local v3    # "ret":I
    :cond_2
    nop

    .line 1034
    return-void

    .line 1017
    .local v3, "isPragmaStmt":Z
    .restart local v4    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 1018
    nop

    .end local v2    # "cookie":I
    .end local v3    # "isPragmaStmt":Z
    .end local v4    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1020
    .restart local v2    # "cookie":I
    .restart local v3    # "isPragmaStmt":Z
    .restart local v4    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1
    move-exception v5

    :try_start_6
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1021
    nop

    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v5
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1026
    .end local v3    # "isPragmaStmt":Z
    .end local v4    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v3

    goto :goto_1

    .line 1022
    :catch_0
    move-exception v3

    .line 1023
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 1024
    nop

    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1026
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_1
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v4

    .line 1027
    .local v4, "ret":I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_3

    .line 1028
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1030
    :cond_3
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_4

    .line 1031
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->collectOperation(I)V

    .line 1033
    .end local v4    # "ret":I
    :cond_4
    throw v3

    .line 1001
    .end local v2    # "cookie":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1155
    const-string v0, "\'"

    const-string/jumbo v1, "window=\'"

    if-eqz p1, :cond_5

    .line 1159
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v3, "executeForBlobFileDescriptor"

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 1162
    .local v2, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1164
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1165
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 1166
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1167
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1169
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForBlobFileDescriptor(JJ)I

    move-result v4

    .line 1171
    .local v4, "fd":I
    if-ltz v4, :cond_0

    invoke-static {v4}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1173
    :goto_0
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1176
    :try_start_4
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1182
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v6

    .line 1183
    .local v6, "ret":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_1

    .line 1184
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v8, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1186
    :cond_1
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_2

    .line 1187
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->collectOperation(I)V

    .line 1171
    .end local v6    # "ret":I
    :cond_2
    return-object v5

    .line 1173
    .end local v4    # "fd":I
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 1174
    nop

    .end local v2    # "cookie":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1176
    .restart local v2    # "cookie":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1177
    nop

    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1182
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v3

    goto :goto_1

    .line 1178
    :catch_0
    move-exception v3

    .line 1179
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 1180
    nop

    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1182
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_1
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v4

    .line 1183
    .local v4, "ret":I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_3

    .line 1184
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1186
    :cond_3
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_4

    .line 1187
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->collectOperation(I)V

    .line 1189
    .end local v4    # "ret":I
    :cond_4
    throw v3

    .line 1156
    .end local v2    # "cookie":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I
    .locals 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1207
    const-string v0, "\', changedRows="

    const-string/jumbo v1, "window=\'"

    if-eqz p1, :cond_4

    .line 1211
    const/4 v2, 0x0

    .line 1212
    .local v2, "changedRows":I
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v4, "executeForChangedRowCount"

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    .line 1215
    .local v3, "cookie":I
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1217
    .local v5, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1218
    invoke-direct {p0, v5, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 1219
    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1220
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1222
    :try_start_2
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v8, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForChangedRowCount(JJ)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v6

    .line 1224
    nop

    .line 1226
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1229
    :try_start_4
    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1235
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v6

    .line 1236
    .local v6, "ret":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_0

    .line 1237
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v8, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1240
    :cond_0
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_1

    .line 1241
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-static {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->-$$Nest$mcollectOperation(Landroid/database/sqlite/SQLiteConnection$OperationLog;III)V

    .line 1224
    .end local v6    # "ret":I
    :cond_1
    return v2

    .line 1226
    :catchall_0
    move-exception v6

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 1227
    nop

    .end local v2    # "changedRows":I
    .end local v3    # "cookie":I
    .end local v5    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1229
    .restart local v2    # "changedRows":I
    .restart local v3    # "cookie":I
    .restart local v5    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1230
    nop

    .end local v2    # "changedRows":I
    .end local v3    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v6
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1235
    .end local v5    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v2    # "changedRows":I
    .restart local v3    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v5

    goto :goto_0

    .line 1231
    :catch_0
    move-exception v5

    .line 1232
    .local v5, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v3, v5}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 1233
    nop

    .end local v2    # "changedRows":I
    .end local v3    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1235
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "changedRows":I
    .restart local v3    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v6

    .line 1236
    .restart local v6    # "ret":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_2

    .line 1237
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v8, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1240
    :cond_2
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_3

    .line 1241
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-static {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->-$$Nest$mcollectOperation(Landroid/database/sqlite/SQLiteConnection$OperationLog;III)V

    .line 1243
    .end local v6    # "ret":I
    :cond_3
    throw v5

    .line 1208
    .end local v2    # "changedRows":I
    .end local v3    # "cookie":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I
    .locals 25
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Landroid/database/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1322
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v14, p4

    move-object/from16 v15, p7

    const-string v13, ", countedRows="

    const-string v12, ", filledRows="

    const-string v11, ", actualPos="

    const-string v9, "\', startPos="

    const-string/jumbo v10, "window=\'"

    if-eqz v2, :cond_6

    .line 1325
    if-eqz v4, :cond_5

    .line 1329
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->acquireReference()V

    .line 1331
    const/16 v16, -0x1

    .line 1332
    .local v16, "actualPos":I
    const/16 v17, -0x1

    .line 1333
    .local v17, "countedRows":I
    const/16 v18, -0x1

    .line 1334
    .local v18, "filledRows":I
    :try_start_0
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v5, "executeForCursorWindow"

    invoke-virtual {v0, v5, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    move v7, v0

    .line 1337
    .local v7, "cookie":I
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    move-object v8, v0

    .line 1339
    .local v8, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_2
    invoke-direct {v1, v8}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1340
    invoke-direct {v1, v8, v3}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 1341
    invoke-direct {v1, v8}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1342
    invoke-direct {v1, v15}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 1344
    :try_start_3
    iget-wide v5, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, v8, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    :try_start_4
    iget-wide v9, v4, Landroid/database/CursorWindow;->mWindowPtr:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move/from16 v21, v7

    move-object v14, v8

    .end local v7    # "cookie":I
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v14, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v21, "cookie":I
    move-wide v7, v2

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    move-object/from16 v22, v11

    move/from16 v11, p4

    move-object/from16 v23, v12

    move/from16 v12, p5

    move-object/from16 v24, v13

    move/from16 v13, p6

    :try_start_5
    invoke-static/range {v5 .. v13}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForCursorWindow(JJJIIZ)J

    move-result-wide v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 1347
    .local v5, "result":J
    const/16 v0, 0x20

    shr-long v7, v5, v0

    long-to-int v7, v7

    .line 1348
    .end local v16    # "actualPos":I
    .local v7, "actualPos":I
    long-to-int v8, v5

    .line 1349
    .end local v17    # "countedRows":I
    .local v8, "countedRows":I
    :try_start_6
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move v9, v0

    .line 1350
    .end local v18    # "filledRows":I
    .local v9, "filledRows":I
    :try_start_7
    invoke-virtual {v4, v7}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 1351
    invoke-virtual {v4, v9}, Landroid/database/CursorWindow;->setFilledRows(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1352
    if-eqz p6, :cond_0

    .line 1353
    :try_start_8
    invoke-virtual {v4, v8}, Landroid/database/CursorWindow;->setTotalRows(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1357
    .end local v5    # "result":J
    :catchall_0
    move-exception v0

    move/from16 v10, p4

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    goto/16 :goto_3

    .line 1355
    .restart local v5    # "result":J
    :cond_0
    :goto_0
    nop

    .line 1357
    :try_start_9
    invoke-direct {v1, v15}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1360
    :try_start_a
    invoke-direct {v1, v14}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1366
    :try_start_b
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    move/from16 v10, v21

    .end local v21    # "cookie":I
    .local v10, "cookie":I
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v0

    .line 1367
    .local v0, "ret":I
    and-int/lit8 v11, v0, 0x1

    if-eqz v11, :cond_1

    .line 1368
    iget-object v11, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move v12, v10

    move/from16 v10, p4

    .end local v10    # "cookie":I
    .local v12, "cookie":I
    :try_start_c
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v13, v22

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v12, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    goto :goto_1

    .line 1367
    .end local v12    # "cookie":I
    .restart local v10    # "cookie":I
    :cond_1
    move v12, v10

    move/from16 v10, p4

    .line 1374
    .end local v10    # "cookie":I
    .restart local v12    # "cookie":I
    :goto_1
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 1375
    iget-object v2, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->getTotalRows()I

    move-result v3

    invoke-static {v2, v12, v9, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->-$$Nest$mcollectOperation(Landroid/database/sqlite/SQLiteConnection$OperationLog;III)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    .line 1379
    .end local v0    # "ret":I
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->releaseReference()V

    .line 1355
    return v8

    .line 1379
    .end local v5    # "result":J
    .end local v7    # "actualPos":I
    .end local v8    # "countedRows":I
    .end local v9    # "filledRows":I
    .end local v12    # "cookie":I
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_1
    move-exception v0

    move/from16 v10, p4

    goto/16 :goto_7

    .line 1366
    .restart local v7    # "actualPos":I
    .restart local v8    # "countedRows":I
    .restart local v9    # "filledRows":I
    .restart local v21    # "cookie":I
    :catchall_2
    move-exception v0

    move/from16 v10, p4

    move/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    .end local v21    # "cookie":I
    .restart local v12    # "cookie":I
    goto/16 :goto_6

    .line 1362
    .end local v12    # "cookie":I
    .restart local v21    # "cookie":I
    :catch_0
    move-exception v0

    move/from16 v10, p4

    move/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .end local v21    # "cookie":I
    .restart local v12    # "cookie":I
    goto/16 :goto_5

    .line 1360
    .end local v12    # "cookie":I
    .restart local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v21    # "cookie":I
    :catchall_3
    move-exception v0

    move/from16 v10, p4

    move/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .end local v21    # "cookie":I
    .restart local v12    # "cookie":I
    goto/16 :goto_4

    .line 1357
    .end local v12    # "cookie":I
    .restart local v21    # "cookie":I
    :catchall_4
    move-exception v0

    move/from16 v10, p4

    move/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .end local v21    # "cookie":I
    .restart local v12    # "cookie":I
    goto :goto_3

    .end local v9    # "filledRows":I
    .end local v12    # "cookie":I
    .restart local v18    # "filledRows":I
    .restart local v21    # "cookie":I
    :catchall_5
    move-exception v0

    move/from16 v10, p4

    move/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v16, v7

    move/from16 v17, v8

    .end local v21    # "cookie":I
    .restart local v12    # "cookie":I
    goto :goto_3

    .end local v7    # "actualPos":I
    .end local v8    # "countedRows":I
    .end local v12    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v21    # "cookie":I
    :catchall_6
    move-exception v0

    move/from16 v10, p4

    move/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    .end local v21    # "cookie":I
    .restart local v12    # "cookie":I
    goto :goto_3

    .end local v12    # "cookie":I
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v7, "cookie":I
    .local v8, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_7
    move-exception v0

    move-object v5, v12

    move-object v6, v13

    move v10, v14

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    goto :goto_2

    :catchall_8
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-object v5, v12

    move-object v6, v13

    move v10, v14

    :goto_2
    move v12, v7

    move-object v14, v8

    move-object v13, v11

    .end local v7    # "cookie":I
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v12    # "cookie":I
    .restart local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :goto_3
    :try_start_d
    invoke-direct {v1, v15}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 1358
    nop

    .end local v12    # "cookie":I
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 1360
    .restart local v12    # "cookie":I
    .restart local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_9
    move-exception v0

    goto :goto_4

    .end local v12    # "cookie":I
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v7    # "cookie":I
    .restart local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_a
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-object v5, v12

    move-object v6, v13

    move v10, v14

    move v12, v7

    move-object v14, v8

    move-object v13, v11

    .end local v7    # "cookie":I
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v12    # "cookie":I
    .restart local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :goto_4
    :try_start_e
    invoke-direct {v1, v14}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1361
    nop

    .end local v12    # "cookie":I
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 1362
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v12    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_1
    move-exception v0

    goto :goto_5

    .line 1366
    .end local v12    # "cookie":I
    .restart local v7    # "cookie":I
    :catchall_b
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-object v5, v12

    move-object v6, v13

    move v10, v14

    move v12, v7

    move-object v13, v11

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    .end local v7    # "cookie":I
    .restart local v12    # "cookie":I
    goto :goto_6

    .line 1362
    .end local v12    # "cookie":I
    .restart local v7    # "cookie":I
    :catch_2
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-object v5, v12

    move-object v6, v13

    move v10, v14

    move v12, v7

    move-object v13, v11

    .line 1363
    .end local v7    # "cookie":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v12    # "cookie":I
    :goto_5
    :try_start_f
    iget-object v7, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v7, v12, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 1364
    nop

    .end local v12    # "cookie":I
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 1366
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v12    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_c
    move-exception v0

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .local v7, "actualPos":I
    .local v8, "countedRows":I
    .restart local v9    # "filledRows":I
    :goto_6
    :try_start_10
    iget-object v11, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v11, v12}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v11

    .line 1367
    .local v11, "ret":I
    and-int/lit8 v14, v11, 0x1

    if-eqz v14, :cond_3

    .line 1368
    iget-object v14, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v12, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1374
    :cond_3
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_4

    .line 1375
    iget-object v2, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->getTotalRows()I

    move-result v3

    invoke-static {v2, v12, v9, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->-$$Nest$mcollectOperation(Landroid/database/sqlite/SQLiteConnection$OperationLog;III)V

    .line 1377
    .end local v11    # "ret":I
    :cond_4
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    .line 1379
    .end local v7    # "actualPos":I
    .end local v8    # "countedRows":I
    .end local v9    # "filledRows":I
    .end local v12    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_d
    move-exception v0

    goto :goto_7

    :catchall_e
    move-exception v0

    move v10, v14

    :goto_7
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->releaseReference()V

    .line 1380
    throw v0

    .line 1326
    :cond_5
    move v10, v14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "window must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_6
    move v10, v14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sql must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .locals 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1261
    const-string v0, "\'"

    const-string/jumbo v1, "window=\'"

    if-eqz p1, :cond_4

    .line 1265
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v3, "executeForLastInsertedRowId"

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 1268
    .local v2, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1270
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1271
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 1272
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1273
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1275
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLastInsertedRowId(JJ)J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1278
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1281
    :try_start_4
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1287
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v6

    .line 1288
    .local v6, "ret":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_0

    .line 1289
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v8, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1291
    :cond_0
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_1

    .line 1292
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->collectOperation(I)V

    .line 1275
    .end local v6    # "ret":I
    :cond_1
    return-wide v4

    .line 1278
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 1279
    nop

    .end local v2    # "cookie":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1281
    .restart local v2    # "cookie":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1282
    nop

    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1287
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v3

    goto :goto_0

    .line 1283
    :catch_0
    move-exception v3

    .line 1284
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 1285
    nop

    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1287
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v4

    .line 1288
    .local v4, "ret":I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_2

    .line 1289
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1291
    :cond_2
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_3

    .line 1292
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->collectOperation(I)V

    .line 1294
    .end local v4    # "ret":I
    :cond_3
    throw v3

    .line 1262
    .end local v2    # "cookie":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .locals 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1051
    const-string v0, "\'"

    const-string/jumbo v1, "window=\'"

    if-eqz p1, :cond_4

    .line 1055
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v3, "executeForLong"

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 1057
    .local v2, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1059
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1060
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 1061
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1062
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1064
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLong(JJ)J

    move-result-wide v4

    .line 1065
    .local v4, "ret":J
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v4, v5}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->setResult(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1066
    nop

    .line 1068
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1071
    :try_start_4
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1077
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v6

    .line 1078
    .local v6, "ret":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_0

    .line 1079
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v8, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1081
    :cond_0
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_1

    .line 1082
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->collectOperation(I)V

    .line 1066
    .end local v6    # "ret":I
    :cond_1
    return-wide v4

    .line 1068
    .end local v4    # "ret":J
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 1069
    nop

    .end local v2    # "cookie":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1071
    .restart local v2    # "cookie":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1072
    nop

    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1077
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v3

    goto :goto_0

    .line 1073
    :catch_0
    move-exception v3

    .line 1074
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 1075
    nop

    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1077
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v4

    .line 1078
    .local v4, "ret":I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_2

    .line 1079
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1081
    :cond_2
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_3

    .line 1082
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->collectOperation(I)V

    .line 1084
    .end local v4    # "ret":I
    :cond_3
    throw v3

    .line 1052
    .end local v2    # "cookie":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1102
    const-string v0, "\'"

    const-string/jumbo v1, "window=\'"

    if-eqz p1, :cond_4

    .line 1106
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v3, "executeForString"

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 1108
    .local v2, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1110
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1111
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 1112
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1113
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1115
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForString(JJ)Ljava/lang/String;

    move-result-object v4

    .line 1116
    .local v4, "ret":Ljava/lang/String;
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->setResult(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1117
    nop

    .line 1119
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1122
    :try_start_4
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1128
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v5

    .line 1129
    .local v5, "ret":I
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_0

    .line 1130
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1132
    :cond_0
    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->collectOperation(I)V

    .line 1117
    .end local v5    # "ret":I
    :cond_1
    return-object v4

    .line 1119
    .end local v4    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 1120
    nop

    .end local v2    # "cookie":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1122
    .restart local v2    # "cookie":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1123
    nop

    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1128
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v3

    goto :goto_0

    .line 1124
    :catch_0
    move-exception v3

    .line 1125
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 1126
    nop

    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1128
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollect(I)I

    move-result v4

    .line 1129
    .local v4, "ret":I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_2

    .line 1130
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1132
    :cond_2
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_3

    .line 1133
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->collectOperation(I)V

    .line 1135
    .end local v4    # "ret":I
    :cond_3
    throw v3

    .line 1103
    .end local v2    # "cookie":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist exportDB(Ljava/lang/String;)V
    .locals 2
    .param p1, "attachedDB"    # Ljava/lang/String;

    .line 1414
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteConnection;->nativeExportDB(JLjava/lang/String;)V

    .line 1415
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 209
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->onConnectionLeaked()V

    .line 213
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 216
    nop

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 216
    throw v0
.end method

.method public greylist-max-o getConnectionId()I
    .locals 1

    .line 904
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    return v0
.end method

.method public blacklist isForcedReadOnlyConnection()Z
    .locals 2

    .line 640
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeIsForcedReadOnly(J)Z

    move-result v0

    return v0
.end method

.method greylist-max-o isPreparedStatementInCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .line 896
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isPrimaryConnection()Z
    .locals 1

    .line 912
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    return v0
.end method

.method public whitelist onCancel()V
    .locals 2

    .line 1608
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeCancel(J)V

    .line 1609
    return-void
.end method

.method public greylist-max-o prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .locals 11
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "outStatementInfo"    # Landroid/database/sqlite/SQLiteStatementInfo;

    .line 951
    const-string v0, "\'"

    const-string/jumbo v1, "window=\'"

    if-eqz p1, :cond_4

    .line 955
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const/4 v3, 0x0

    const-string/jumbo v4, "prepare"

    invoke-virtual {v2, v4, p1, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 957
    .local v2, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 959
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz p2, :cond_1

    .line 960
    :try_start_1
    iget v4, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    iput v4, p2, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    .line 961
    iget-boolean v4, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    iput-boolean v4, p2, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    .line 963
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnCount(JJ)I

    move-result v4

    .line 965
    .local v4, "columnCount":I
    if-nez v4, :cond_0

    .line 966
    sget-object v5, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    goto :goto_1

    .line 968
    :cond_0
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 969
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 970
    iget-object v6, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iget-wide v7, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v9, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v7, v8, v9, v10, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnName(JJI)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 976
    .end local v4    # "columnCount":I
    .end local v5    # "i":I
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 977
    nop

    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    throw v4

    .line 976
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    :cond_1
    :goto_1
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 977
    nop

    .line 982
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 983
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 985
    :cond_2
    return-void

    .line 982
    :catchall_1
    move-exception v3

    goto :goto_2

    .line 978
    :catch_0
    move-exception v3

    .line 979
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 980
    nop

    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 982
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    :goto_2
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 983
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 984
    :cond_3
    throw v3

    .line 952
    .end local v2    # "cookie":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 16
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 810
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 813
    iget-boolean v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v2

    .line 815
    .local v3, "foreignKeyModeChanged":Z
    :goto_0
    iget-object v4, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iget-object v6, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    .line 816
    .local v4, "localeChanged":Z
    iget-boolean v6, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    iget-object v7, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    if-eq v6, v7, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v2

    .line 818
    .local v6, "automaticIndexChanged":Z
    :goto_1
    iget-wide v7, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    iget-object v9, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v9, v9, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v2

    .line 820
    .local v7, "busyTimeoutChanged":Z
    :goto_2
    iget v8, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    iget-object v9, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v9, v9, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    if-eq v8, v9, :cond_3

    move v8, v5

    goto :goto_3

    :cond_3
    move v8, v2

    .line 822
    .local v8, "cacheSizeChanged":Z
    :goto_3
    iget-boolean v9, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    iget-object v10, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v10, v10, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    if-eq v9, v10, :cond_4

    move v9, v5

    goto :goto_4

    :cond_4
    move v9, v2

    .line 824
    .local v9, "caseSensitiveLikeChanged":Z
    :goto_4
    iget-object v10, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    iget-object v11, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v11, v11, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 825
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v5

    .line 826
    .local v10, "customScalarFunctionsChanged":Z
    iget-object v11, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    iget-object v12, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v12, v12, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 827
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v5

    .line 828
    .local v11, "customAggregateFunctionsChanged":Z
    iget-object v12, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v12, v12, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 829
    .local v12, "oldSize":I
    iget-object v13, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 830
    .local v13, "newSize":I
    if-le v13, v12, :cond_5

    move v2, v5

    .line 833
    .local v2, "perConnectionSqlChanged":Z
    :cond_5
    iget-object v14, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v14, v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 836
    iget-object v14, v0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget v15, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-virtual {v14, v15}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->resize(I)V

    .line 838
    if-eqz v3, :cond_6

    .line 839
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 842
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 843
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v15

    .line 842
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    xor-int/2addr v14, v5

    .line 844
    .local v14, "journalModeChanged":Z
    if-eqz v14, :cond_7

    .line 845
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalFromConfiguration()V

    .line 848
    :cond_7
    nop

    .line 849
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v15

    iget-object v5, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v15, 0x1

    xor-int/2addr v5, v15

    .line 850
    .local v5, "syncModeChanged":Z
    if-eqz v5, :cond_8

    .line 851
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnection;->setSyncModeFromConfiguration()V

    .line 854
    :cond_8
    if-eqz v4, :cond_9

    .line 855
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 859
    :cond_9
    if-eqz v6, :cond_a

    .line 860
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnection;->setAutomaticIndexFromConfiguration()V

    .line 864
    :cond_a
    if-eqz v7, :cond_b

    .line 865
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnection;->setBusyTimeoutFromConfiguration()V

    .line 869
    :cond_b
    if-eqz v8, :cond_c

    .line 870
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnection;->setCacheSizeFromConfiguration()V

    .line 874
    :cond_c
    if-eqz v9, :cond_d

    .line 875
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnection;->setCaseSensitiveLikeFromConfiguration()V

    .line 878
    :cond_d
    if-nez v10, :cond_e

    if-eqz v11, :cond_f

    .line 879
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnection;->setCustomFunctionsFromConfiguration()V

    .line 881
    :cond_f
    if-eqz v2, :cond_10

    .line 882
    invoke-direct {v0, v12}, Landroid/database/sqlite/SQLiteConnection;->executePerConnectionSqlFromConfiguration(I)V

    .line 884
    :cond_10
    return-void
.end method

.method public blacklist releaseConnectionMemory()V
    .locals 2

    .line 920
    :try_start_0
    const-string v0, "PRAGMA shrink_memory"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    goto :goto_0

    .line 921
    :catch_0
    move-exception v0

    .line 924
    :goto_0
    return-void
.end method

.method blacklist setCheckpointOnClose(Z)V
    .locals 4
    .param p1, "set"    # Z

    .line 742
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 743
    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteConnection;->nativeSetCheckpointOnClose(JZ)V

    .line 745
    :cond_0
    return-void
.end method

.method greylist-max-o setOnlyAllowReadOnlyOperations(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .line 890
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 891
    return-void
.end method

.method public blacklist setPassword([B)[B
    .locals 2
    .param p1, "password"    # [B

    .line 1391
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteConnection;->nativeSetPassword(J[B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
