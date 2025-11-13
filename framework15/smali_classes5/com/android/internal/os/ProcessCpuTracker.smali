.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;,
        Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOAD_AVERAGE_FORMAT:[I

.field private static final blacklist PROCESS_FULL_STATS_FORMAT:[I

.field static final blacklist PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final blacklist PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final blacklist PROCESS_FULL_STAT_STIME:I = 0x4

.field static final blacklist PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final blacklist PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final blacklist PROCESS_SCHEDSTATS_FORMAT:[I

.field static final blacklist PROCESS_SCHEDSTAT_CPU_DELAY_TIME:I = 0x1

.field static final blacklist PROCESS_SCHEDSTAT_CPU_TIME:I = 0x0

.field private static final blacklist PROCESS_STATS_FORMAT:[I

.field static final blacklist PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final blacklist PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final blacklist PROCESS_STAT_STIME:I = 0x3

.field static final blacklist PROCESS_STAT_UTIME:I = 0x2

.field private static final blacklist SYSTEM_CPU_FORMAT:[I

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final blacklist localLOGV:Z

.field private static final blacklist sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBaseIdleTime:J

.field private blacklist mBaseIoWaitTime:J

.field private blacklist mBaseIrqTime:J

.field private blacklist mBaseSoftIrqTime:J

.field private blacklist mBaseSystemTime:J

.field private blacklist mBaseUserTime:J

.field private blacklist mCurPids:[I

.field private blacklist mCurThreadPids:[I

.field private blacklist mCurrentSampleRealTime:J

.field private blacklist mCurrentSampleTime:J

.field private blacklist mCurrentSampleWallTime:J

.field private blacklist mFirst:Z

.field private final blacklist mIncludeThreads:Z

.field private final blacklist mJiffyMillis:J

.field private blacklist mLastSampleRealTime:J

.field private blacklist mLastSampleTime:J

.field private blacklist mLastSampleWallTime:J

.field private blacklist mLoad1:F

.field private blacklist mLoad15:F

.field private blacklist mLoad5:F

.field private final blacklist mLoadAverageData:[F

.field private final blacklist mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProcessFullStatsData:[J

.field private final blacklist mProcessFullStatsStringData:[Ljava/lang/String;

.field private final blacklist mProcessStatsData:[J

.field private blacklist mRelIdleTime:I

.field private blacklist mRelIoWaitTime:I

.field private blacklist mRelIrqTime:I

.field private blacklist mRelSoftIrqTime:I

.field private blacklist mRelStatsAreGood:Z

.field private blacklist mRelSystemTime:I

.field private blacklist mRelUserTime:I

.field private final blacklist mSystemCpuData:[J

.field private final blacklist mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWorkingProcsSorted:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    const/16 v0, 0x2020

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_SCHEDSTATS_FORMAT:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/16 v0, 0x4020

    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data
.end method

.method public constructor greylist <init>(Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    return-void
.end method

.method private blacklist collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-static {v9, v10}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v11

    const/4 v12, 0x0

    if-nez v11, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    array-length v0, v11

    :goto_0
    move v13, v0

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v14, v0

    move v15, v2

    :goto_1
    if-ge v15, v13, :cond_12

    aget v4, v11, v15

    if-gez v4, :cond_1

    move v13, v4

    move v9, v7

    move-object/from16 v19, v11

    const/4 v11, 0x1

    goto/16 :goto_a

    :cond_1
    const/4 v0, 0x0

    if-ge v1, v14, :cond_2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    move-object v3, v2

    const/16 v16, 0x2

    if-eqz v3, :cond_a

    iget v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v2, v4, :cond_a

    iput-boolean v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    iput-boolean v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    add-int/lit8 v18, v1, 0x1

    iget-boolean v1, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v5, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    iget-object v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v20, v1

    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    invoke-static {v12, v1, v0, v5, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-nez v0, :cond_3

    move-object/from16 v19, v11

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v26, v15

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_3
    const/4 v0, 0x0

    aget-wide v1, v5, v0

    const/4 v0, 0x1

    aget-wide v9, v5, v0

    aget-wide v22, v5, v16

    move-wide/from16 v24, v1

    iget-wide v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v1, v22, v0

    const/4 v0, 0x3

    aget-wide v16, v5, v0

    move/from16 v22, v13

    iget-wide v12, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v12, v12, v16

    move/from16 v23, v14

    move/from16 v26, v15

    iget-wide v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    cmp-long v0, v1, v14

    if-nez v0, :cond_5

    iget-wide v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    cmp-long v0, v12, v14

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    iget-boolean v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-eqz v14, :cond_4

    iput-boolean v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    move-object/from16 v19, v11

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_4
    move-object/from16 v19, v11

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_5
    iget-boolean v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-nez v0, :cond_6

    const/4 v14, 0x1

    iput-boolean v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    goto :goto_3

    :cond_6
    const/4 v14, 0x1

    :goto_3
    if-gez v7, :cond_8

    iget-object v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v3, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v15, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    iget-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    iget-object v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v7, v20

    move-wide/from16 v20, v9

    move-wide v9, v1

    move-object v1, v15

    move v2, v4

    move-object v15, v3

    move/from16 v3, v16

    move/from16 v27, v4

    move-object/from16 v4, v17

    move-object/from16 v16, v5

    move-object/from16 v19, v11

    const/4 v11, 0x1

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_4

    :cond_7
    move-object v15, v3

    move/from16 v27, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v11

    move v11, v14

    move-wide/from16 v7, v20

    move-wide/from16 v20, v9

    move-wide v9, v1

    goto :goto_4

    :cond_8
    move-object v15, v3

    move/from16 v27, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v11

    move v11, v14

    move-wide/from16 v7, v20

    move-wide/from16 v20, v9

    move-wide v9, v1

    :goto_4
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    sub-long v1, v7, v0

    iput-wide v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    iput-wide v7, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    sub-long v1, v9, v0

    long-to-int v0, v1

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    sub-long v0, v12, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    iput-wide v9, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    iput-wide v12, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v1, v24, v0

    long-to-int v0, v1

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v0, v20, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move-wide/from16 v0, v24

    iput-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    move-wide/from16 v2, v20

    iput-wide v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    goto :goto_5

    :cond_9
    move/from16 v27, v4

    move-object/from16 v19, v11

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v26, v15

    const/4 v11, 0x1

    move-object v15, v3

    :goto_5
    move/from16 v9, p2

    move-object/from16 v8, p5

    move/from16 v1, v18

    move/from16 v14, v23

    move/from16 v15, v26

    goto/16 :goto_9

    :cond_a
    move/from16 v27, v4

    move-object/from16 v19, v11

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v26, v15

    const/4 v11, 0x1

    move-object v15, v3

    if-eqz v15, :cond_c

    iget v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move/from16 v7, v27

    if-le v2, v7, :cond_b

    move-object/from16 v8, p5

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    move-object/from16 v8, p5

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v23, -0x1

    add-int/lit8 v0, v26, -0x1

    move/from16 v9, p2

    move v15, v0

    goto/16 :goto_9

    :cond_c
    move-object/from16 v8, p5

    move/from16 v7, v27

    :goto_6
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v3, v6, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    move/from16 v9, p2

    invoke-direct {v2, v7, v9, v3}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    move-object v10, v2

    invoke-virtual {v8, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v1, 0x1

    add-int/lit8 v14, v23, 0x1

    iget-object v13, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    iget-object v15, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    iget-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    invoke-static {v5, v1, v13, v15, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    aget-wide v0, v15, v0

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    const/4 v0, 0x0

    aget-object v1, v13, v0

    iput-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    aget-wide v0, v15, v11

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    aget-wide v0, v15, v16

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    const/4 v0, 0x3

    aget-wide v0, v15, v0

    iget-wide v2, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    const/4 v0, 0x4

    aget-wide v0, v15, v0

    iget-wide v2, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unknown process pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessCpuTracker"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<unknown>"

    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    :goto_7
    if-gez v9, :cond_f

    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v10, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    iget-object v3, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v2, v7

    move-object/from16 v17, v3

    move/from16 v3, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_8

    :cond_e
    move-object/from16 v16, v5

    goto :goto_8

    :cond_f
    move-object/from16 v16, v5

    iget-boolean v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v0, :cond_10

    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    :cond_10
    :goto_8
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-nez p3, :cond_11

    iget-boolean v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v0, :cond_11

    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    :cond_11
    move v1, v12

    move/from16 v15, v26

    :goto_9
    add-int/2addr v15, v11

    move-object/from16 v10, p4

    move v7, v9

    move-object/from16 v11, v19

    move/from16 v13, v22

    const/4 v12, 0x0

    move-object/from16 v9, p1

    goto/16 :goto_1

    :cond_12
    move v9, v7

    move-object/from16 v19, v11

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v26, v15

    const/4 v11, 0x1

    :goto_a
    if-ge v1, v14, :cond_13

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    iput-boolean v11, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    iput-boolean v11, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    nop

    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    :cond_13
    return-object v19
.end method

.method private static blacklist dumpProcessCpuProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 6

    const-wide v0, 0x20b00000010L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000002L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10900000003L

    iget-object v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10800000004L

    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000005L

    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10500000006L

    iget-wide v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000007L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000008L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000009L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000aL

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    if-eqz p2, :cond_0

    const-wide v2, 0x1050000000bL

    iget v4, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private blacklist getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string/jumbo v2, "usap32"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string/jumbo v2, "usap64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move-object v0, v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    :cond_2
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iput-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    :cond_4
    return-void
.end method

.method private blacklist printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 18

    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const/4 v0, 0x1

    move v15, v0

    goto :goto_0

    :cond_0
    move/from16 v15, p5

    :goto_0
    add-int v0, v8, v9

    add-int/2addr v0, v10

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    int-to-long v2, v0

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ltz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v4, p4

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v8

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% user + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v9

    int-to-long v4, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% kernel"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " + "

    if-lez v10, :cond_2

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v10

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v4

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% iowait"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v7, v4

    :goto_1
    if-lez v11, :cond_3

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v11

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% irq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    if-lez v12, :cond_4

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v12

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% softirq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    if-gtz v13, :cond_5

    if-lez v14, :cond_7

    :cond_5
    const-string v0, " / faults:"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    if-lez v13, :cond_6

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " minor"

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    if-lez v14, :cond_7

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " major"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private blacklist printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    const-wide/16 v2, 0xa

    div-long v4, v0, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :cond_0
    return-void
.end method

.method private blacklist updateLocked()V
    .locals 25

    move-object/from16 v7, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    sget-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const-string v1, "/proc/stat"

    const/4 v15, 0x0

    invoke-static {v1, v0, v15, v14, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    const/16 v16, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    aget-wide v0, v14, v5

    aget-wide v2, v14, v6

    add-long/2addr v0, v2

    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    aget-wide v2, v14, v16

    iget-wide v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v2, v5

    const/4 v4, 0x3

    aget-wide v4, v14, v4

    move-wide/from16 v18, v12

    iget-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v4, v12

    const/4 v6, 0x4

    aget-wide v12, v14, v6

    move-wide/from16 v20, v10

    iget-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v12, v10

    const/4 v6, 0x5

    aget-wide v10, v14, v6

    move-wide/from16 v22, v8

    iget-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v10, v8

    const/4 v6, 0x6

    aget-wide v8, v14, v6

    move-object/from16 v24, v14

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v8, v14

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    sub-long v14, v0, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    sub-long v14, v2, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v14, v12, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    sub-long v14, v10, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v14, v8, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    sub-long v14, v4, v14

    long-to-int v6, v14

    iput v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    iput-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    iput-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    iput-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    iput-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    iput-wide v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    goto :goto_0

    :cond_0
    move-wide/from16 v22, v8

    move-wide/from16 v20, v10

    move-wide/from16 v18, v12

    move-object/from16 v24, v14

    :goto_0
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    move-wide/from16 v8, v22

    iput-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    move-wide/from16 v10, v20

    iput-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    move-wide/from16 v12, v18

    iput-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v14

    :try_start_0
    const-string v2, "/proc"

    iget-boolean v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    iget-object v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    iget-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    const/4 v3, -0x1

    move-object/from16 v1, p0

    const/4 v15, 0x0

    move/from16 v17, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    iget-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    const-string v1, "/proc/loadavg"

    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, v0, v15

    aget v2, v0, v17

    aget v3, v0, v16

    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    :cond_1
    iput v1, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    iput v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    iput v3, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v7, v1, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    :cond_2
    iput-boolean v15, v7, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    iput-boolean v15, v7, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method


# virtual methods
.method final blacklist buildWorkingProcs()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_2

    iget-object v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    iget-object v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_0

    iget-object v6, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-boolean v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    :cond_4
    return-void
.end method

.method public final blacklist countStats()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final greylist-max-r countWorkingStats()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final blacklist dumpProto(Ljava/io/FileDescriptor;)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10200000001L

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v5, 0x10200000002L

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v5, 0x10200000003L

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    const-wide v5, 0x10300000002L

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000003L

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000004L

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000005L

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000006L

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000007L

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000008L

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000009L

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1050000000aL

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1050000000bL

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1050000000cL

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1050000000dL

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1050000000eL

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v5, v6

    const-wide v6, 0x1050000000fL

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProcessCpuProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    iget-boolean v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v8, :cond_0

    iget-object v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    invoke-static {v2, v9, v7}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProcessCpuProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public blacklist getCpuDelayTimeForPid(I)J
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/schedstat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [J

    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_SCHEDSTATS_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public blacklist getCpuTimeForPid(I)J
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [J

    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    const/4 v4, 0x3

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v4, v2

    return-wide v4

    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public final blacklist getLastIdleTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final blacklist getLastIoWaitTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final blacklist getLastIrqTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final blacklist getLastSoftIrqTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final blacklist getLastSystemTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final blacklist getLastUserTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final blacklist getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final blacklist getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/ProcessCpuTracker$FilterStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcessCpuTracker$FilterStats;->needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final blacklist getTotalCpuPercent()F
    .locals 3

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public final greylist-max-r getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final blacklist hasGoodLastStats()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    return v0
.end method

.method public blacklist init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    return-void
.end method

.method public blacklist onLoadChanged(FFF)V
    .locals 0

    return-void
.end method

.method public blacklist onMeasureProcessName(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist printCpuCoreInfo()Ljava/lang/String;
    .locals 20

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    const/16 v2, 0x1020

    filled-new-array {v2}, [I

    move-result-object v2

    const/16 v4, 0x2020

    filled-new-array {v4}, [I

    move-result-object v4

    const-string v5, "/sys/devices/system/cpu/offline"

    const-string v6, "/sys/devices/system/cpu/online"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "/sys/devices/system/cpu/possible"

    const-string v7, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_governor"

    const-string v8, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_max_freq"

    const-string v9, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_cur_freq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "/sys/devices/platform/sec-thermistor/temperature"

    const-string v9, "/sys/class/sec/sec-ap-thermistor/temperature"

    const-string v10, "/sys/class/sec/sec-thermistor/temperature"

    filled-new-array {v10, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    new-array v11, v9, [J

    const/4 v12, 0x0

    const-string v13, "------ Current CPU Core Info ------"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_0
    array-length v14, v5

    const/16 v15, 0x2f

    if-ge v13, v14, :cond_1

    const-string v14, "- "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v14, v5, v13

    aget-object v3, v5, v13

    invoke-virtual {v3, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, v9

    invoke-virtual {v14, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v3, v5, v13

    const/4 v14, 0x0

    invoke-static {v3, v2, v10, v14, v14}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v14, v10, v3

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_2
    array-length v13, v8

    if-ge v3, v13, :cond_3

    aget-object v13, v8, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v4, v14, v11, v14}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    aget-wide v17, v11, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "- AP Temp = %d%n"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const-string v3, "/sys/devices/system/cpu/possible"

    const/4 v13, 0x0

    invoke-static {v3, v2, v10, v13, v13}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    aget-object v13, v10, v3

    aget-object v14, v10, v3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :cond_4
    if-lez v12, :cond_b

    const-string v3, "                  "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_4
    if-gt v3, v12, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "%12d"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    const-string v3, "\n------------------"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_5
    const-string v14, "------------"

    if-gt v13, v12, :cond_6

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_6
    array-length v9, v7

    if-ge v13, v9, :cond_9

    aget-object v9, v7, v13

    move-object/from16 v18, v4

    aget-object v4, v7, v13

    invoke-virtual {v4, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v9, "%n%-18s"

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_7
    if-gt v4, v12, :cond_8

    aget-object v9, v7, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    invoke-static {v9, v2, v10, v15, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    aget-object v16, v10, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v9

    const-string v15, "%12s"

    invoke-static {v15, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    const-string v9, "           -"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v4, v4, 0x1

    const/16 v15, 0x2f

    goto :goto_7

    :cond_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v17

    move-object/from16 v4, v18

    const/16 v15, 0x2f

    goto :goto_6

    :cond_9
    move-object/from16 v18, v4

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_9
    if-gt v3, v12, :cond_a

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_a

    :cond_b
    move-object/from16 v18, v4

    :goto_a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final blacklist printCurrentLoad()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    const-string v2, "Load: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final blacklist printCurrentState(J)Ljava/lang/String;
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist printCurrentState(JI)Ljava/lang/String;
    .locals 31

    move-object/from16 v13, p0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v15, v0

    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    move-object v12, v0

    const-string v0, "CPU usage from "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    cmp-long v0, p1, v0

    const-string/jumbo v1, "ms to "

    if-lez v0, :cond_0

    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v2, p1, v2

    invoke-virtual {v12, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms ago"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v2, v2, p1

    invoke-virtual {v12, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms later"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string v0, " ("

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " to "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v16, v0, v2

    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    sub-long v18, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v18, v0

    const-wide/16 v3, 0x64

    if-lez v2, :cond_1

    mul-long v0, v16, v3

    div-long v0, v0, v18

    :cond_1
    move-wide v10, v0

    cmp-long v0, v10, v3

    if-eqz v0, :cond_2

    const-string v0, " with "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "% awake"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string v0, ":"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v20, v0, v1

    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move/from16 v9, p3

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v8, :cond_9

    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v0, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v0, :cond_3

    const-string v0, " +"

    :goto_2
    move-object v2, v0

    goto :goto_3

    :cond_3
    iget-boolean v0, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v0, :cond_4

    const-string v0, " -"

    goto :goto_2

    :cond_4
    const-string v0, "  "

    goto :goto_2

    :goto_3
    iget v3, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v4, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v0, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v5, v0

    iget v1, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v0, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    move-wide/from16 v21, v10

    iget v10, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    iget v11, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v27, v1

    move-object v1, v12

    move-object/from16 v28, v6

    move/from16 v6, v27

    move/from16 v27, v7

    move/from16 v7, v26

    move/from16 v26, v8

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v23, v10

    move/from16 v10, v25

    move/from16 v24, v11

    move/from16 v11, v23

    move-object/from16 v23, v12

    move/from16 v12, v24

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    move-object/from16 v12, v28

    iget-boolean v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v0, :cond_8

    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v0, 0x0

    move v10, v0

    :goto_4
    if-ge v10, v11, :cond_7

    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    nop

    iget-boolean v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v0, :cond_5

    const-string v0, "   +"

    :goto_5
    move-object v2, v0

    goto :goto_6

    :cond_5
    iget-boolean v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v0, :cond_6

    const-string v0, "   -"

    goto :goto_5

    :cond_6
    const-string v0, "    "

    goto :goto_5

    :goto_6
    iget v3, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v4, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v5, v0

    iget v6, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v8, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v30, v9

    move/from16 v9, v24

    move/from16 v24, v10

    move/from16 v10, v25

    move/from16 v25, v11

    move/from16 v11, v28

    move-object/from16 v28, v12

    move/from16 v12, v29

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    add-int/lit8 v10, v24, 0x1

    move/from16 v11, v25

    move-object/from16 v12, v28

    goto :goto_4

    :cond_7
    move/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v28, v12

    goto :goto_7

    :cond_8
    move-object/from16 v28, v12

    :goto_7
    add-int/lit8 v7, v27, 0x1

    move/from16 v9, p3

    move-wide/from16 v10, v21

    move-object/from16 v12, v23

    move/from16 v8, v26

    goto/16 :goto_1

    :cond_9
    move/from16 v27, v7

    move/from16 v26, v8

    move-wide/from16 v21, v10

    move-object/from16 v23, v12

    iget v6, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v7, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    iget v8, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    iget v9, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    iget v10, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, ""

    const/4 v3, -0x1

    const-string v4, "TOTAL"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v5, v20

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist update()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/ProcessCpuTracker;->updateLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
