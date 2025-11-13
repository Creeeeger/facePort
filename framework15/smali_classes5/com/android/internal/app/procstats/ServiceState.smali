.class public final Lcom/android/internal/app/procstats/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist SERVICE_BOUND:I = 0x2

.field public static final blacklist SERVICE_COUNT:I = 0x5

.field public static final blacklist SERVICE_EXEC:I = 0x3

.field public static final blacklist SERVICE_FOREGROUND:I = 0x4

.field public static final blacklist SERVICE_RUN:I = 0x0

.field public static final blacklist SERVICE_STARTED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private blacklist mBoundCount:I

.field private blacklist mBoundStartTime:J

.field private blacklist mBoundState:I

.field private final blacklist mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private blacklist mExecCount:I

.field private blacklist mExecStartTime:J

.field private blacklist mExecState:I

.field private blacklist mForegroundCount:I

.field private blacklist mForegroundStartTime:J

.field private blacklist mForegroundState:I

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mOwner:Ljava/lang/Object;

.field private final blacklist mPackage:Ljava/lang/String;

.field private blacklist mProc:Lcom/android/internal/app/procstats/ProcessState;

.field private final blacklist mProcessName:Ljava/lang/String;

.field private blacklist mRestarting:Z

.field private blacklist mRunCount:I

.field private blacklist mRunStartTime:J

.field private blacklist mRunState:I

.field private blacklist mStarted:Z

.field private blacklist mStartedCount:I

.field private blacklist mStartedStartTime:J

.field private blacklist mStartedState:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    iput-object p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/app/procstats/ServiceState;->mProcessName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    return-void
.end method

.method private blacklist dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V
    .locals 22

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    move/from16 v11, p6

    if-eqz v11, :cond_4

    if-eqz p15, :cond_0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " op count "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p7

    move/from16 v4, p8

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ServiceState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J

    move-object/from16 v2, p4

    move-wide/from16 v6, p13

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    const/16 v21, 0x1

    const/4 v13, 0x0

    move-object/from16 v12, p0

    move/from16 v15, p7

    move/from16 v16, p8

    move-wide/from16 v17, p9

    move-wide/from16 v19, p11

    invoke-virtual/range {v12 .. v21}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeInternal(Ljava/io/PrintWriter;Ljava/lang/String;IIJJZ)J

    move-result-wide v0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v2, p4

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " count "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " / time "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    neg-long v0, v0

    :cond_2
    long-to-double v4, v0

    move-wide/from16 v6, p13

    long-to-double v12, v6

    div-double/2addr v4, v12

    invoke-static {v9, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    if-eqz v3, :cond_3

    const-string v4, " (running)"

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :cond_4
    move-object/from16 v2, p4

    move-wide/from16 v6, p13

    :goto_1
    return-void
.end method

.method private blacklist dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p9

    move/from16 v3, p10

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v7, p5

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const/4 v4, 0x0

    iget-object v10, v0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v10}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_3

    iget-object v12, v0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v12, v11}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v12

    iget-object v13, v0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v13, v12}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v13

    invoke-static {v12}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v15

    div-int/lit8 v0, v15, 0x5

    rem-int/lit8 v15, v15, 0x5

    move/from16 v2, p8

    if-eq v15, v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, v0, :cond_2

    const/4 v4, 0x1

    sub-long v16, p13, p11

    add-long v13, v13, v16

    :cond_2
    invoke-static {v1, v0, v13, v14}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p9

    goto :goto_0

    :cond_3
    move/from16 v2, p8

    if-nez v4, :cond_4

    const/4 v0, -0x1

    if-eq v3, v0, :cond_4

    sub-long v11, p13, p11

    invoke-static {v1, v3, v11, v12}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private blacklist updateRunning(IJ)V
    .locals 5

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p1

    :goto_1
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    if-eq v2, v0, :cond_4

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    if-eq v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x0

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    sub-long v3, p2, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_2

    :cond_2
    if-eq v0, v1, :cond_3

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    :cond_3
    :goto_2
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    :cond_4
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mForegroundCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundCount:I

    return-void
.end method

.method public blacklist applyNewOwner(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    if-eq v0, v1, :cond_5

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    :cond_4
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    if-eq v0, v1, :cond_5

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public blacklist clearCurrentOwner(Ljava/lang/Object;Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    if-eq v0, v1, :cond_8

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    const-string v4, " proc="

    const-string v5, " service="

    const-string v6, "Service owner "

    const-string v7, "ProcessStats"

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " cleared while started: pkg="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v8, v8, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v1, :cond_4

    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " cleared while bound: pkg="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, v8, v8, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    :cond_4
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_6

    if-nez p2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " cleared while exec: pkg="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, v8, v8, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    :cond_6
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    if-eq v0, v1, :cond_8

    if-nez p2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cleared while foreground: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0, v8, v8, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public blacklist commitStateTime(J)V
    .locals 5

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x0

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    sub-long v3, p1, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    sub-long v3, p1, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x2

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    sub-long v3, p1, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    sub-long v3, p1, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x4

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundStartTime:J

    :cond_4
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    const-wide v0, 0x10900000001L

    iget-object v2, v12, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v13, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v6, v12, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v7, v12, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iget-wide v8, v12, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    const-wide v2, 0x20b00000002L

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->writeTypeToProto(Landroid/util/proto/ProtoOutputStream;JIIIIJJ)V

    iget v6, v12, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v7, v12, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iget-wide v8, v12, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->writeTypeToProto(Landroid/util/proto/ProtoOutputStream;JIIIIJJ)V

    iget v6, v12, Lcom/android/internal/app/procstats/ServiceState;->mForegroundCount:I

    iget v7, v12, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    iget-wide v8, v12, Lcom/android/internal/app/procstats/ServiceState;->mForegroundStartTime:J

    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->writeTypeToProto(Landroid/util/proto/ProtoOutputStream;JIIIIJJ)V

    iget v6, v12, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v7, v12, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iget-wide v8, v12, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->writeTypeToProto(Landroid/util/proto/ProtoOutputStream;JIIIIJJ)V

    iget v6, v12, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iget v7, v12, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iget-wide v8, v12, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    const/4 v4, 0x5

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->writeTypeToProto(Landroid/util/proto/ProtoOutputStream;JIIIIJJ)V

    invoke-virtual {v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public blacklist dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz p9, :cond_1

    if-eqz p10, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v18, v17

    :goto_1
    const-string v5, "Running"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    move-object/from16 v15, p0

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    if-eqz p9, :cond_3

    if-eqz p10, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v18, v16

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v18, v17

    :goto_3
    const-string v5, "Started"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    move-object/from16 v15, p0

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mForegroundCount:I

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mForegroundStartTime:J

    if-eqz p9, :cond_5

    if-eqz p10, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v18, v16

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v18, v17

    :goto_5
    const-string v5, "Foreground"

    const/4 v7, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    move-object/from16 v15, p0

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    if-eqz p9, :cond_7

    if-eqz p10, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v18, v16

    goto :goto_7

    :cond_7
    :goto_6
    move/from16 v18, v17

    :goto_7
    const-string v5, "Bound"

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    move-object/from16 v15, p0

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    if-eqz p9, :cond_8

    if-eqz p10, :cond_9

    :cond_8
    move/from16 v16, v17

    :cond_9
    const-string v5, "Executing"

    const/4 v7, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    if-eqz p10, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-eqz v1, :cond_a

    const-string v1, "        mOwner="

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_8

    :cond_a
    move-object/from16 v2, p1

    :goto_8
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-nez v1, :cond_b

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    if-eqz v1, :cond_d

    :cond_b
    const-string v1, "        mStarted="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mRestarting="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_9

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    :cond_d
    :goto_9
    return-void
.end method

.method public blacklist dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeInternal(Ljava/io/PrintWriter;Ljava/lang/String;IIJJZ)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist dumpTimeInternal(Ljava/io/PrintWriter;Ljava/lang/String;IIJJZ)J
    .locals 19

    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    if-ge v5, v6, :cond_6

    const/4 v6, -0x1

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x4

    if-ge v9, v10, :cond_5

    add-int v10, v9, v5

    move-object/from16 v11, p0

    move/from16 v12, p3

    move/from16 v13, p4

    move-wide/from16 v14, p5

    move/from16 v16, v10

    move-wide/from16 v17, p7

    invoke-virtual/range {v11 .. v18}, Lcom/android/internal/app/procstats/ServiceState;->getDuration(IIJIJ)J

    move-result-wide v11

    const-string v13, ""

    move/from16 v14, p4

    if-ne v14, v10, :cond_0

    if-eqz v0, :cond_0

    const-string v13, " (running)"

    const/4 v4, 0x1

    :cond_0
    cmp-long v15, v11, v7

    if-eqz v15, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eq v3, v5, :cond_1

    move v15, v5

    goto :goto_2

    :cond_1
    const/4 v15, -0x1

    :goto_2
    invoke-static {v0, v15}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v3, v5

    if-eq v6, v9, :cond_2

    move v15, v9

    goto :goto_3

    :cond_2
    const/4 v15, -0x1

    :goto_3
    const/4 v7, 0x0

    invoke-static {v0, v15, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v6, v9

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11, v12, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-long/2addr v1, v11

    :cond_4
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_5
    move/from16 v14, p4

    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    :cond_6
    move/from16 v14, p4

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-eqz v5, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    TOTAL: "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_7
    if-eqz v4, :cond_8

    if-eqz p9, :cond_8

    neg-long v5, v1

    goto :goto_4

    :cond_8
    move-wide v5, v1

    :goto_4
    return-wide v5
.end method

.method public blacklist dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 16

    move-object/from16 v15, p0

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    const-string/jumbo v2, "pkgsvc-run"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v13, p7

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    const-string/jumbo v2, "pkgsvc-start"

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mForegroundCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mForegroundStartTime:J

    const-string/jumbo v2, "pkgsvc-fg"

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    const-string/jumbo v2, "pkgsvc-bound"

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    const-string/jumbo v2, "pkgsvc-exec"

    const/4 v8, 0x3

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    return-void
.end method

.method public blacklist getDuration(IIJIJ)J
    .locals 5

    mul-int/lit8 v0, p5, 0x5

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v1

    if-ne p2, p5, :cond_0

    sub-long v3, p6, p3

    add-long/2addr v1, v3

    :cond_0
    return-wide v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isInUse()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isRestarting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundCount:I

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resetSafely(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v0, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v3, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    if-eq v0, v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundCount:I

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    return-void
.end method

.method public blacklist setBound(ZIJ)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without owner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v2, v1, :cond_4

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x2

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    sub-long v3, p3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    :cond_4
    return-void
.end method

.method public blacklist setExecuting(ZIJ)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without owner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v2, v1, :cond_4

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    sub-long v3, p3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    :cond_4
    return-void
.end method

.method public blacklist setForeground(ZIJ)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Foregrounding service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without owner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    if-eq v2, v1, :cond_4

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x4

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundStartTime:J

    sub-long v3, p3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundCount:I

    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundStartTime:J

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    :cond_4
    return-void
.end method

.method public blacklist setMemFactor(IJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ServiceState;->isRestarting()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v2, :cond_3

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundState:I

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public blacklist setProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public blacklist setRestarting(ZIJ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateStartedState(IJ)V

    return-void
.end method

.method public blacklist setStarted(ZIJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without owner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateStartedState(IJ)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateStartedState(IJ)V
    .locals 8

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    if-eqz v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    move v4, p1

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    iget v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v5, v4, :cond_8

    iget v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v5, v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v5, v2

    iget-wide v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    sub-long v6, p2, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    :cond_5
    :goto_2
    iput v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, v1, :cond_7

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    :cond_7
    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    :cond_8
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mForegroundCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public blacklist writeTypeToProto(Landroid/util/proto/ProtoOutputStream;JIIIIJJ)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p6

    move/from16 v9, p7

    if-gtz v8, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v1, 0x10e00000001L

    move/from16 v12, p4

    invoke-virtual {v7, v1, v2, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000002L

    invoke-virtual {v7, v1, v2, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v13

    const/4 v2, 0x0

    move v14, v1

    move v15, v2

    :goto_0
    const-wide v1, 0x20b00000003L

    if-ge v15, v13, :cond_3

    iget-object v3, v0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v15}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v6

    iget-object v3, v0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v6}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v16

    invoke-static {v6}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    div-int/lit8 v4, v3, 0x5

    rem-int/lit8 v5, v3, 0x5

    move/from16 v3, p5

    if-eq v5, v3, :cond_1

    goto :goto_2

    :cond_1
    if-ne v9, v4, :cond_2

    const/4 v14, 0x1

    sub-long v19, p10, p8

    add-long v16, v16, v19

    move-wide/from16 v21, v16

    goto :goto_1

    :cond_2
    move-wide/from16 v21, v16

    :goto_1
    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v16, 0x10e00000001L

    const-wide v19, 0x10e00000002L

    move-wide/from16 v23, v1

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    move/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v4, v19

    move/from16 v18, v6

    move/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateAdjTagProto(Landroid/util/proto/ProtoOutputStream;JJI)V

    move-wide/from16 v1, v21

    const-wide v4, 0x10300000003L

    invoke-virtual {v7, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v3, v23

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_3
    const-wide v4, 0x10300000003L

    if-nez v14, :cond_4

    const/4 v3, -0x1

    if-eq v9, v3, :cond_4

    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v15, 0x10e00000001L

    const-wide v17, 0x10e00000002L

    move-object/from16 v1, p1

    move-wide v8, v2

    move-wide v2, v15

    move-wide/from16 v4, v17

    move/from16 v6, p7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateAdjTagProto(Landroid/util/proto/ProtoOutputStream;JJI)V

    sub-long v1, p10, p8

    const-wide v3, 0x10300000003L

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_4
    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
