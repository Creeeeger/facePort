.class final Landroid/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationLog"
.end annotation


# static fields
.field public static final blacklist COLLECT_OPERATION:I = 0x2

.field private static final greylist-max-o COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final greylist-max-o COOKIE_INDEX_MASK:I = 0xff

.field public static final blacklist LOG_OPERATION:I = 0x1

.field private static final greylist-max-o MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private final blacklist mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final blacklist mConnection:Landroid/database/sqlite/SQLiteConnection;

.field private greylist-max-o mGeneration:I

.field private greylist-max-o mIndex:I

.field private blacklist mLastCheckTime:J

.field private final greylist-max-o mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

.field private final greylist-max-o mPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private blacklist mResultLong:J

.field private blacklist mResultString:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcollectOperation(Landroid/database/sqlite/SQLiteConnection$OperationLog;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->collectOperation(III)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 2
    .param p1, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p2, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p3, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 1958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1931
    const/16 v0, 0x14

    new-array v0, v0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    .line 1946
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    .line 1955
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLastCheckTime:J

    .line 1959
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 1960
    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 1961
    iput-object p3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 1962
    return-void
.end method

.method private blacklist collectOperation(III)V
    .locals 19
    .param p1, "cookie"    # I
    .param p2, "currentRows"    # I
    .param p3, "totalRows"    # I

    .line 2183
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 2184
    .local v2, "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    const/4 v3, 0x0

    .line 2185
    .local v3, "pid":I
    iget-object v4, v1, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v4

    .line 2187
    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 2188
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_0

    .line 2189
    new-instance v16, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;

    iget-object v5, v1, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    iget-wide v7, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    iget-wide v9, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    iget-object v11, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v14, p2

    int-to-long v12, v14

    move/from16 v15, p3

    move-object/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    .end local v3    # "pid":I
    .local v17, "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    .local v18, "pid":I
    int-to-long v2, v15

    move-object/from16 v5, v16

    move-wide v14, v2

    :try_start_1
    invoke-direct/range {v5 .. v15}, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;-><init>(Ljava/lang/String;JJLjava/lang/String;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v2, v16

    .line 2191
    .end local v17    # "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    .restart local v2    # "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    :try_start_2
    iget v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mPid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v18    # "pid":I
    .restart local v3    # "pid":I
    goto :goto_0

    .line 2196
    .end local v0    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    .end local v3    # "pid":I
    .restart local v18    # "pid":I
    :catchall_0
    move-exception v0

    move/from16 v3, v18

    goto :goto_4

    .line 2193
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2196
    .end local v2    # "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    .restart local v17    # "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    :catchall_1
    move-exception v0

    move-object/from16 v2, v17

    move/from16 v3, v18

    goto :goto_4

    .line 2193
    :catch_1
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_1

    .line 2188
    .end local v17    # "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    .end local v18    # "pid":I
    .restart local v0    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    .restart local v2    # "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    .restart local v3    # "pid":I
    :cond_0
    move-object/from16 v17, v2

    move/from16 v18, v3

    .line 2195
    .end local v0    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :goto_0
    goto :goto_2

    .line 2196
    :catchall_2
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    .end local v3    # "pid":I
    .restart local v17    # "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    .restart local v18    # "pid":I
    goto :goto_4

    .line 2193
    .end local v17    # "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    .end local v18    # "pid":I
    .restart local v2    # "params":Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
    .restart local v3    # "pid":I
    :catch_2
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v18, v3

    .end local v3    # "pid":I
    .restart local v18    # "pid":I
    :goto_1
    move/from16 v3, v18

    .line 2196
    .end local v18    # "pid":I
    .restart local v3    # "pid":I
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2197
    if-eqz v2, :cond_1

    .line 2199
    :try_start_4
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v0, v3, v2}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sendSlowQueryLog(Landroid/database/sqlite/SQLiteConnectionPool;ILandroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2202
    goto :goto_3

    .line 2200
    :catch_3
    move-exception v0

    .line 2204
    :cond_1
    :goto_3
    return-void

    .line 2196
    :goto_4
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4
.end method

.method private greylist-max-o endOperationDeferLogLocked(I)Z
    .locals 6
    .param p1, "cookie"    # I

    .line 2058
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 2059
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2060
    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2061
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2064
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 2065
    iget-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    .line 2066
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 2067
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->onStatementExecuted(J)V

    .line 2068
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v3, :cond_1

    iget-wide v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 2071
    :cond_2
    return v1
.end method

.method private blacklist endOperationDeferLogOrCollectLocked(I)I
    .locals 7
    .param p1, "cookie"    # I

    .line 2139
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 2140
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2141
    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2142
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2145
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 2146
    iget-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    .line 2147
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 2149
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->onStatementExecuted(J)V

    .line 2150
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnectionPool;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v3}, Landroid/database/sqlite/SQLiteUtils;->isIssueTrackerOn(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 2151
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2152
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v3

    if-nez v3, :cond_3

    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLastCheckTime:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    iget-wide v5, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 2155
    :cond_1
    iget-object v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v3

    .line 2156
    .local v3, "type":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 2157
    :cond_2
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteConnectionPool;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteUtils;->checkAbnormalDBSize(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2158
    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLastCheckTime:J

    .line 2162
    .end local v3    # "type":I
    :cond_3
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v3, :cond_4

    iget-wide v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    .line 2163
    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2164
    move v1, v2

    goto :goto_0

    :cond_4
    nop

    .line 2165
    .local v1, "ret":I
    :goto_0
    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    if-nez v2, :cond_5

    iget-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2169
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isQueryCollectDb()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2170
    or-int/lit8 v1, v1, 0x2

    .line 2173
    :cond_5
    return v1

    .line 2175
    .end local v1    # "ret":I
    :cond_6
    return v1
.end method

.method private greylist-max-o getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 3
    .param p1, "cookie"    # I

    .line 2115
    and-int/lit16 v0, p1, 0xff

    .line 2116
    .local v0, "index":I
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v1, v0

    .line 2117
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v2, p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private greylist-max-o logOperationLocked(ILjava/lang/String;)V
    .locals 7
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .line 2075
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 2076
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    iput-wide v1, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    .line 2077
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    iput-object v1, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    .line 2078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2079
    .local v1, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 2080
    if-eqz p2, :cond_0

    .line 2081
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2083
    :cond_0
    iget-object v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", hash="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2085
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2084
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SQLiteConnection"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    if-nez v3, :cond_4

    .line 2090
    iget-object v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v3

    .line 2091
    .local v3, "type":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-ne v3, v2, :cond_4

    .line 2093
    :cond_2
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->shouldLogQueryPlan()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2094
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$mprintQueryPlan(Landroid/database/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 2096
    :cond_3
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->shouldLogIndexRecommendation()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2098
    :try_start_0
    new-instance v2, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iget-object v5, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;-><init>(Landroid/database/sqlite/SQLiteConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    .local v2, "expertModule":Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2103
    .end local v2    # "expertModule":Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;
    goto :goto_0

    .line 2101
    :catch_0
    move-exception v2

    .line 2107
    .end local v3    # "type":I
    :cond_4
    :goto_0
    return-void
.end method

.method private greylist-max-o newOperationCookieLocked(I)I
    .locals 2
    .param p1, "index"    # I

    .line 2110
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    .line 2111
    .local v0, "generation":I
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public greylist-max-o beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 8
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    .line 1965
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    .line 1966
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    .line 1968
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v3

    .line 1969
    :try_start_0
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x14

    .line 1970
    .local v4, "index":I
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v5, v5, v4

    .line 1971
    .local v5, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-nez v5, :cond_0

    .line 1972
    new-instance v6, Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {v6}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>()V

    move-object v5, v6

    .line 1973
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aput-object v5, v6, v4

    goto :goto_0

    .line 1975
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1976
    iput-object v2, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1977
    iget-object v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 1978
    iget-object v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1981
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    .line 1982
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 1983
    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    .line 1984
    iput-object p1, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1985
    iput-object p2, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 1986
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    iput v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mPid:I

    .line 1987
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteConnectionPool;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mPath:Ljava/lang/String;

    .line 1988
    iput-wide v0, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    .line 1989
    iput-object v2, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    .line 1990
    if-eqz p3, :cond_4

    .line 1991
    iget-object v0, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1992
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    goto :goto_1

    .line 1994
    :cond_2
    iget-object v0, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1996
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p3

    if-ge v0, v1, :cond_4

    .line 1997
    aget-object v1, p3, v0

    .line 1998
    .local v1, "arg":Ljava/lang/Object;
    if-eqz v1, :cond_3

    instance-of v2, v1, [B

    if-eqz v2, :cond_3

    .line 2000
    iget-object v2, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$sfgetEMPTY_BYTE_ARRAY()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2002
    :cond_3
    iget-object v2, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    .end local v1    # "arg":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2006
    .end local v0    # "i":I
    :cond_4
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v0

    iput v0, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 2007
    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2008
    invoke-static {v5}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v2

    iget v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-static {v0, v1, v2, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2011
    :cond_5
    iput v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 2012
    iget v0, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    monitor-exit v3

    return v0

    .line 2013
    .end local v4    # "index":I
    .end local v5    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist collectOperation(I)V
    .locals 1
    .param p1, "cookie"    # I

    .line 2179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->collectOperation(III)V

    .line 2180
    return-void
.end method

.method public greylist-max-o describeCurrentOperation()Ljava/lang/String;
    .locals 4

    .line 2121
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 2122
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iget v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object v1, v1, v2

    .line 2123
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v2, :cond_0

    .line 2124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2125
    .local v2, "msg":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 2126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 2128
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2129
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dump(Landroid/util/Printer;)V
    .locals 9
    .param p1, "printer"    # Landroid/util/Printer;

    .line 2207
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 2208
    :try_start_0
    const-string v1, "  Most recently executed operations:"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2209
    iget v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 2210
    .local v1, "index":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    .line 2211
    .local v2, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v2, :cond_3

    .line 2215
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2216
    .local v3, "opDF":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    .line 2218
    .local v4, "n":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2219
    .local v5, "msg":Ljava/lang/StringBuilder;
    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2220
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 2221
    .local v6, "formattedStartTime":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2222
    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Pid:("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2224
    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 2225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2227
    if-lez v1, :cond_1

    .line 2228
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2230
    :cond_1
    const/16 v1, 0x13

    .line 2232
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 2233
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v7, v7, v1

    move-object v2, v7

    .line 2234
    .end local v5    # "msg":Ljava/lang/StringBuilder;
    .end local v6    # "formattedStartTime":Ljava/lang/String;
    if-eqz v2, :cond_2

    const/16 v5, 0x14

    if-lt v4, v5, :cond_0

    .line 2235
    .end local v3    # "opDF":Ljava/text/SimpleDateFormat;
    .end local v4    # "n":I
    :cond_2
    goto :goto_1

    .line 2236
    :cond_3
    const-string v3, "    <none>"

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2238
    .end local v1    # "index":I
    .end local v2    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :goto_1
    monitor-exit v0

    .line 2239
    return-void

    .line 2238
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o endOperation(I)V
    .locals 2
    .param p1, "cookie"    # I

    .line 2030
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 2031
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2032
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 2034
    :cond_0
    monitor-exit v0

    .line 2035
    return-void

    .line 2034
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o endOperationDeferLog(I)Z
    .locals 2
    .param p1, "cookie"    # I

    .line 2038
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 2039
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2040
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist endOperationDeferLogOrCollect(I)I
    .locals 2
    .param p1, "cookie"    # I

    .line 2133
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 2134
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogOrCollectLocked(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 2135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o failOperation(ILjava/lang/Exception;)V
    .locals 5
    .param p1, "cookie"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 2017
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 2018
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    .line 2019
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v1, :cond_0

    .line 2020
    iput-object p2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 2022
    :cond_0
    if-eqz p2, :cond_1

    instance-of v2, p2, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v2, :cond_1

    .line 2023
    const-string v2, "SQLiteConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Corruption detected - isPrimary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address: @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 2024
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2023
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_1
    monitor-exit v0

    .line 2027
    return-void

    .line 2026
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o logOperation(ILjava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .line 2044
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 2045
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 2046
    monitor-exit v0

    .line 2047
    return-void

    .line 2046
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setResult(J)V
    .locals 0
    .param p1, "longResult"    # J

    .line 2050
    iput-wide p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    .line 2051
    return-void
.end method

.method public blacklist setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "stringResult"    # Ljava/lang/String;

    .line 2054
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    .line 2055
    return-void
.end method
