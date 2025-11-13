.class public Lcom/android/internal/util/ProviderAccessStats;
.super Ljava/lang/Object;
.source "ProviderAccessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    }
.end annotation


# instance fields
.field private final blacklist mAllCallingUids:Landroid/util/SparseBooleanArray;

.field private final blacklist mBatchStats:Landroid/util/SparseLongArray;

.field private final blacklist mDeleteInBatchStats:Landroid/util/SparseLongArray;

.field private final blacklist mDeleteStats:Landroid/util/SparseLongArray;

.field private final blacklist mInsertInBatchStats:Landroid/util/SparseLongArray;

.field private final blacklist mInsertStats:Landroid/util/SparseLongArray;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mOperationDurationMillis:Landroid/util/SparseLongArray;

.field private final blacklist mQueryStats:Landroid/util/SparseLongArray;

.field private final blacklist mStartUptime:J

.field private final blacklist mThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/internal/util/ProviderAccessStats$PerThreadData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUpdateInBatchStats:Landroid/util/SparseLongArray;

.field private final blacklist mUpdateStats:Landroid/util/SparseLongArray;


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mStartUptime:J

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseLongArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mQueryStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mBatchStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    new-instance v0, Lcom/android/internal/util/ProviderAccessStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/util/ProviderAccessStats$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private blacklist incrementStats(ILandroid/util/SparseLongArray;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p2, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->startUptimeMillis:J

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V
    .locals 1

    if-eqz p2, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(ILandroid/util/SparseLongArray;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0()Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    .locals 2

    new-instance v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;-><init>(Lcom/android/internal/util/ProviderAccessStats$PerThreadData-IA;)V

    return-object v0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v0, "  Process uptime: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/internal/util/ProviderAccessStats;->mStartUptime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " minutes"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Client activities:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  UID        Query  Insert Update Delete   Batch Insert Update Delete          Sec"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, v1, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, v1, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  %-9d %6d  %6d %6d %6d  %6d %6d %6d %6d %12.3f"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/util/ProviderAccessStats;->mQueryStats:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/util/ProviderAccessStats;->mInsertStats:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/util/ProviderAccessStats;->mUpdateStats:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, v1, Lcom/android/internal/util/ProviderAccessStats;->mDeleteStats:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, v1, Lcom/android/internal/util/ProviderAccessStats;->mBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, v1, Lcom/android/internal/util/ProviderAccessStats;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, v1, Lcom/android/internal/util/ProviderAccessStats;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-object v14, v1, Lcom/android/internal/util/ProviderAccessStats;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-object v15, v1, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    move/from16 v16, v0

    invoke-virtual {v15, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v17, 0x408f400000000000L    # 1000.0

    div-double v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    filled-new-array/range {v6 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v16, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_0
    move/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist finishOperation(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->startUptimeMillis:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    iget-object v5, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    add-long/2addr v5, v1

    invoke-virtual {v4, p1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :goto_0
    return-void
.end method

.method public final blacklist incrementBatchStats(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(ILandroid/util/SparseLongArray;)V

    return-void
.end method

.method public final blacklist incrementDeleteStats(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    return-void
.end method

.method public final blacklist incrementInsertStats(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    return-void
.end method

.method public final blacklist incrementQueryStats(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mQueryStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(ILandroid/util/SparseLongArray;)V

    return-void
.end method

.method public final blacklist incrementUpdateStats(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    return-void
.end method
