.class public final Lcom/android/internal/app/procstats/UidState;
.super Ljava/lang/Object;
.source "UidState.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private blacklist mCurCombinedState:I

.field private final blacklist mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private blacklist mProcesses:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartTime:J

.field private final blacklist mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private blacklist mTotalRunningDuration:J

.field private blacklist mTotalRunningStartTime:J

.field private final blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    iput-object p1, p0, Lcom/android/internal/app/procstats/UidState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    return-void
.end method

.method private blacklist calcCombinedState()I
    .locals 7

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v4

    rem-int/lit8 v5, v4, 0x10

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    if-eq v1, v6, :cond_0

    if-ge v5, v1, :cond_1

    :cond_0
    move v0, v4

    move v1, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static synthetic blacklist lambda$resetSafely$0(Lcom/android/internal/app/procstats/ProcessState;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist setCombinedStateInner(IJ)V
    .locals 4

    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-eq v0, p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->commitStateTime(J)V

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v3, v2, :cond_1

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/UidState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p1, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    return-void
.end method

.method blacklist addProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method blacklist addProcess(Lcom/android/internal/app/procstats/ProcessState;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    return-void
.end method

.method public blacklist clone()Lcom/android/internal/app/procstats/UidState;
    .locals 3

    new-instance v0, Lcom/android/internal/app/procstats/UidState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget v1, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    iput v1, v0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    iget-wide v1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/UidState;->clone()Lcom/android/internal/app/procstats/UidState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist commitStateTime(J)V
    .locals 6

    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v3, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    :cond_0
    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v4, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    :cond_1
    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    return-void
.end method

.method blacklist dumpState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    :goto_0
    array-length v9, v2

    const-string v11, ": "

    if-ge v8, v9, :cond_8

    const/4 v9, -0x1

    const/16 v16, 0x0

    move/from16 v14, v16

    :goto_1
    array-length v10, v3

    if-ge v14, v10, :cond_7

    const/4 v10, 0x0

    :goto_2
    array-length v15, v4

    if-ge v10, v15, :cond_6

    aget v15, v2, v8

    aget v12, v3, v14

    add-int v13, v15, v12

    mul-int/lit8 v13, v13, 0x10

    aget v19, v4, v10

    add-int v13, v13, v19

    move/from16 v19, v8

    iget-object v8, v0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move/from16 v20, v14

    int-to-byte v14, v13

    invoke-virtual {v8, v14}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v21

    const-string v8, ""

    iget v14, v0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v14, v13, :cond_0

    const-string v8, " (running)"

    move/from16 v23, v13

    iget-wide v13, v0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v13, p6, v13

    add-long v21, v21, v13

    move-wide/from16 v13, v21

    goto :goto_3

    :cond_0
    move/from16 v23, v13

    move-wide/from16 v13, v21

    :goto_3
    const-wide/16 v17, 0x0

    cmp-long v21, v13, v17

    if-eqz v21, :cond_5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v0, v2

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    if-eq v7, v15, :cond_1

    move v0, v15

    goto :goto_4

    :cond_1
    const/4 v0, -0x1

    :goto_4
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v7, v15

    :cond_2
    array-length v0, v3

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    nop

    if-eq v9, v12, :cond_3

    move v0, v12

    goto :goto_5

    :cond_3
    const/4 v0, -0x1

    :goto_5
    const/16 v2, 0x2f

    invoke-static {v1, v0, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v0, v12

    move v9, v0

    :cond_4
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v2, v4, v10

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long/2addr v5, v13

    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v8, v19

    move/from16 v14, v20

    goto :goto_2

    :cond_6
    move/from16 v19, v8

    move/from16 v20, v14

    add-int/lit8 v14, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    goto/16 :goto_1

    :cond_7
    move/from16 v19, v8

    move/from16 v20, v14

    add-int/lit8 v8, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    goto/16 :goto_0

    :cond_8
    move/from16 v19, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v8, 0x1

    if-le v2, v8, :cond_9

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_6

    :cond_9
    const/4 v2, -0x1

    :goto_6
    array-length v9, v3

    if-le v9, v8, :cond_a

    const/16 v8, 0x2f

    invoke-static {v1, v2, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    :cond_a
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_7

    :cond_b
    move-object/from16 v0, p3

    :goto_7
    return-void
.end method

.method public blacklist getAggregatedDurationsInStates()[J
    .locals 10

    const/16 v0, 0x10

    new-array v0, v0, [J

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/UidState;->getDurationsBucketCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    rem-int/lit8 v5, v4, 0x10

    aget-wide v6, v0, v5

    iget-object v8, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8, v3}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist getCombinedState()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    return v0
.end method

.method public blacklist getDuration(IJ)J
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-ne v2, p1, :cond_0

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public blacklist getDurationsBucketCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public blacklist getTotalRunningDuration(J)J
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningStartTime:J

    sub-long v4, p1, v2

    :cond_0
    add-long/2addr v0, v4

    return-wide v0
.end method

.method public blacklist hasPackage(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInUse()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/UidState;->mTotalRunningDuration:J

    const/4 v0, 0x1

    return v0
.end method

.method blacklist removeProcess(Lcom/android/internal/app/procstats/ProcessState;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    return-void
.end method

.method public blacklist resetSafely(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/UidState;->mStartTime:J

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mProcesses:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/internal/app/procstats/UidState$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/app/procstats/UidState$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UidState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/UidState;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateCombinedState(IJ)V
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/UidState;->mCurCombinedState:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(J)V

    :cond_0
    return-void
.end method

.method public blacklist updateCombinedState(J)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/procstats/UidState;->calcCombinedState()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/app/procstats/UidState;->setCombinedStateInner(IJ)V

    return-void
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/UidState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/UidState;->getTotalRunningDuration(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
