.class public final Lcom/android/internal/app/procstats/ProcessState;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    }
.end annotation


# static fields
.field public static final blacklist COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_PARCEL:Z = false

.field static final blacklist PROCESS_STATE_TO_STATE:[I

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private blacklist mActive:Z

.field private blacklist mAvgCachedKillPss:J

.field private blacklist mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

.field blacklist mCommonSources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurCombinedState:I

.field private blacklist mDead:Z

.field private final blacklist mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private blacklist mLastPssState:I

.field private blacklist mLastPssTime:J

.field private blacklist mMaxCachedKillPss:J

.field private blacklist mMinCachedKillPss:J

.field private blacklist mMultiPackage:Z

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mNumActiveServices:I

.field private blacklist mNumCachedKill:I

.field private blacklist mNumExcessiveCpu:I

.field private blacklist mNumStartedServices:I

.field private final blacklist mPackage:Ljava/lang/String;

.field private final blacklist mPssTable:Lcom/android/internal/app/procstats/PssTable;

.field private blacklist mStartTime:J

.field private final blacklist mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private blacklist mTmpTotalTime:J

.field private blacklist mTotalRunningDuration:J

.field private final blacklist mTotalRunningPss:[J

.field private blacklist mTotalRunningStartTime:J

.field private final blacklist mUid:I

.field private final blacklist mVersion:J

.field public blacklist tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

.field public blacklist tmpNumInUse:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 87
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    .line 110
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x2
        0x4
        0x5
        0x5
        0x6
        0x7
        0x9
        0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xd
        0xf
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 2
    .param p1, "commonProcess"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "now"    # J

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 154
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 204
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 205
    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 207
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 208
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 209
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    .line 210
    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 211
    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 212
    if-eq v1, v0, :cond_0

    .line 213
    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    .line 215
    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 216
    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 217
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .param p1, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "name"    # Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 154
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 187
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 188
    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 189
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 190
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 191
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 192
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    .line 193
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 194
    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 195
    return-void
.end method

.method private blacklist addCachedKill(IJJJ)V
    .locals 5
    .param p1, "num"    # I
    .param p2, "minPss"    # J
    .param p4, "avgPss"    # J
    .param p6, "maxPss"    # J

    .line 672
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_0

    .line 673
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 674
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 675
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 676
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_0

    .line 678
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    cmp-long v1, p2, v1

    if-gez v1, :cond_1

    .line 679
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 681
    :cond_1
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    cmp-long v1, p6, v1

    if-lez v1, :cond_2

    .line 682
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 684
    :cond_2
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    long-to-double v1, v1

    int-to-double v3, v0

    mul-double/2addr v1, v3

    long-to-double v3, p4

    add-double/2addr v1, v3

    add-int v3, v0, p1

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 686
    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 688
    :goto_0
    return-void
.end method

.method private blacklist dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .param p11, "full"    # Z

    .line 1135
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-wide/from16 v2, p9

    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 1137
    .local v4, "totals":Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    move-object/from16 v8, p0

    move-wide/from16 v9, p7

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    .line 1138
    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v11, v11

    long-to-double v13, v2

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v13

    .line 1140
    .local v11, "percentage":D
    const-wide v13, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v13, v11, v13

    if-gez v13, :cond_1

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v13, p11

    goto :goto_1

    .line 1141
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 1142
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1144
    :cond_2
    if-eqz v1, :cond_3

    .line 1145
    const-string v13, "  "

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1147
    const-string v13, ": "

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1149
    :cond_3
    move/from16 v13, p11

    invoke-virtual {v4, v0, v2, v3, v13}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 1150
    if-eqz p2, :cond_4

    .line 1151
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1154
    :cond_4
    :goto_1
    return-void
.end method

.method public static blacklist dumpPssSamples(Ljava/io/PrintWriter;[JI)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "table"    # [J
    .param p2, "offset"    # I

    .line 1111
    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1112
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    add-int/lit8 v1, p2, 0x2

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1114
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1115
    add-int/lit8 v1, p2, 0x3

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1116
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1118
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1119
    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1120
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    add-int/lit8 v4, p2, 0x6

    aget-wide v4, p1, v4

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1122
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1123
    add-int/lit8 v1, p2, 0x7

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1124
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    add-int/lit8 v1, p2, 0x8

    aget-wide v4, p1, v1

    mul-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1127
    add-int/lit8 v0, p2, 0x9

    aget-wide v0, p1, v0

    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1128
    const-string v0, " over "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1129
    add-int/lit8 v0, p2, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1130
    return-void
.end method

.method public static blacklist dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "table"    # [J
    .param p2, "offset"    # I

    .line 1437
    add-int/lit8 v0, p2, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1438
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1439
    add-int/lit8 v1, p2, 0x1

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1440
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1441
    add-int/lit8 v1, p2, 0x2

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1442
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1443
    add-int/lit8 v1, p2, 0x3

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1444
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1445
    add-int/lit8 v1, p2, 0x4

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1446
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1447
    add-int/lit8 v1, p2, 0x5

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1448
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1449
    add-int/lit8 v1, p2, 0x6

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1450
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1451
    add-int/lit8 v1, p2, 0x7

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1452
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1453
    add-int/lit8 v1, p2, 0x8

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1454
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1455
    add-int/lit8 v0, p2, 0x9

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1456
    return-void
.end method

.method private blacklist ensureNotDead()V
    .locals 2

    .line 331
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    .line 332
    return-void

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessState dead: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " common.name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method private blacklist pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/procstats/ProcessState;"
        }
    .end annotation

    .line 729
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 730
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 731
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v2, v1, :cond_0

    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pulling dead proc: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " common.name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessStats"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    .line 741
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_4

    .line 745
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 747
    .local v2, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const-string v3, " for multi-proc "

    const-string v4, "No existing package "

    const-string v5, "/"

    if-eqz v2, :cond_3

    .line 752
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 753
    .local v6, "expkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v6, :cond_2

    .line 758
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 759
    .local v3, "savedName":Ljava/lang/String;
    iget-object v4, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 760
    if-eqz v1, :cond_1

    .line 764
    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    goto/16 :goto_0

    .line 761
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Didn\'t create per-package process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in pkg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 754
    .end local v3    # "savedName":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 755
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 748
    .end local v6    # "expkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 749
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 766
    .end local v2    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_4
    :goto_0
    return-object v1
.end method

.method static blacklist writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "sharedUid"    # Z

    .line 1554
    if-eqz p5, :cond_0

    .line 1556
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1557
    return-void

    .line 1559
    :cond_0
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1561
    return-void

    .line 1563
    :cond_1
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1564
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .line 1565
    .local v0, "pkgLength":I
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_2

    .line 1567
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1568
    return-void

    .line 1572
    .end local v0    # "pkgLength":I
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1573
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 9
    .param p1, "other"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 276
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(Lcom/android/internal/app/procstats/PssTable;)V

    .line 282
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 283
    iget v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v2, :cond_0

    .line 284
    iget-wide v3, p1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v5, p1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 287
    :cond_0
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 291
    :cond_1
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 292
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 293
    iget-object v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 294
    .local v2, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 295
    .local v3, "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-nez v3, :cond_2

    .line 296
    new-instance v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    move-object v3, v4

    .line 297
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_2
    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->add(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V

    .line 292
    .end local v2    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v3    # "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public blacklist addPss(JJJZIJLandroid/util/ArrayMap;)V
    .locals 28
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "rss"    # J
    .param p7, "always"    # Z
    .param p8, "type"    # I
    .param p9, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 590
    .local p11, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p11

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 591
    const-wide/16 v3, 0x1

    packed-switch p8, :pswitch_data_0

    goto :goto_0

    .line 609
    :pswitch_0
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    .line 610
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    goto :goto_0

    .line 605
    :pswitch_1
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    .line 606
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    .line 607
    goto :goto_0

    .line 601
    :pswitch_2
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    .line 602
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    .line 603
    goto :goto_0

    .line 597
    :pswitch_3
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    .line 598
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long v3, v3, p9

    iput-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    .line 599
    goto :goto_0

    .line 593
    :pswitch_4
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    .line 594
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long v3, v3, p9

    iput-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    .line 595
    nop

    .line 613
    :goto_0
    if-nez p7, :cond_0

    .line 614
    iget v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iget v3, v1, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const-wide/16 v7, 0x7530

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    .line 616
    return-void

    .line 619
    :cond_0
    iget v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 620
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 621
    iget v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v0, -0x1

    if-eq v6, v0, :cond_2

    .line 626
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    move-wide/from16 v18, p3

    move-wide/from16 v20, p5

    move-wide/from16 v22, p5

    move-wide/from16 v24, p5

    invoke-virtual/range {v5 .. v25}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    nop

    .line 639
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    move-wide/from16 v18, p5

    move-wide/from16 v20, p5

    move-wide/from16 v22, p5

    invoke-static/range {v3 .. v23}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    .line 643
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_1

    .line 644
    return-void

    .line 647
    :cond_1
    if-eqz v2, :cond_2

    .line 648
    invoke-virtual/range {p11 .. p11}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_1
    if-ltz v0, :cond_2

    .line 649
    invoke-direct {v1, v2, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    .line 650
    .local v3, "fixedProc":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v6, 0x1

    move-wide/from16 v7, p1

    move-wide/from16 v9, p1

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move-wide/from16 v15, p3

    move-wide/from16 v17, p3

    move-wide/from16 v19, p5

    move-wide/from16 v21, p5

    move-wide/from16 v23, p5

    invoke-virtual/range {v4 .. v24}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    .line 652
    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p1

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    move-wide/from16 v18, p3

    move-wide/from16 v20, p3

    move-wide/from16 v22, p5

    move-wide/from16 v24, p5

    move-wide/from16 v26, p5

    invoke-static/range {v7 .. v27}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    .line 648
    .end local v3    # "fixedProc":Lcom/android/internal/app/procstats/ProcessState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 628
    .end local v0    # "ip":I
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency reset for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProcessStats"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    .line 631
    return-void

    .line 657
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 31
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    .line 841
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v2}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 842
    .local v2, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    new-instance v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 843
    .local v3, "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v4}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 844
    .local v4, "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    const/4 v5, 0x0

    .line 845
    .local v5, "havePss":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v7

    const/16 v8, 0x9

    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    if-ge v6, v7, :cond_3

    .line 846
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v7, v6}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v7

    .line 847
    .local v7, "key":I
    invoke-static {v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v12

    .line 848
    .local v12, "type":I
    rem-int/lit8 v13, v12, 0x10

    .line 849
    .local v13, "procState":I
    invoke-virtual {v0, v12}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v14

    .line 850
    .local v14, "samples":J
    cmp-long v10, v14, v10

    if-lez v10, :cond_2

    .line 851
    invoke-virtual {v0, v12}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v10

    .line 852
    .local v10, "avg":J
    const/4 v5, 0x1

    .line 853
    if-gt v13, v9, :cond_0

    .line 854
    invoke-virtual {v2, v10, v11, v14, v15}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    .line 855
    :cond_0
    if-gt v13, v8, :cond_1

    .line 856
    invoke-virtual {v3, v10, v11, v14, v15}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    .line 858
    :cond_1
    invoke-virtual {v4, v10, v11, v14, v15}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 845
    .end local v7    # "key":I
    .end local v10    # "avg":J
    .end local v12    # "type":I
    .end local v13    # "procState":I
    .end local v14    # "samples":J
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 862
    .end local v6    # "i":I
    :cond_3
    if-nez v5, :cond_4

    .line 863
    return-void

    .line 865
    :cond_4
    const/4 v6, 0x0

    .line 866
    .local v6, "fgHasBg":Z
    const/4 v7, 0x0

    .line 867
    .local v7, "fgHasCached":Z
    const/4 v12, 0x0

    .line 868
    .local v12, "bgHasCached":Z
    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    const-wide/16 v15, 0x3

    cmp-long v13, v13, v15

    if-gez v13, :cond_5

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v13, v13, v10

    if-lez v13, :cond_5

    .line 869
    const/4 v6, 0x1

    .line 870
    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v13, v14, v8, v9}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 872
    :cond_5
    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v15

    if-gez v8, :cond_6

    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 873
    const/4 v7, 0x1

    .line 874
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 876
    :cond_6
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v15

    if-gez v8, :cond_7

    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 877
    const/4 v12, 0x1

    .line 878
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 880
    :cond_7
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v15

    if-gez v8, :cond_8

    if-nez v6, :cond_8

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 881
    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 883
    :cond_8
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v15

    if-gez v8, :cond_9

    if-nez v12, :cond_9

    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    .line 884
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 886
    :cond_9
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v15

    if-gez v8, :cond_a

    if-nez v7, :cond_a

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    .line 887
    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 889
    :cond_a
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v9

    if-ge v8, v9, :cond_f

    .line 890
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v9, v8}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v9

    .line 891
    .local v9, "key":I
    invoke-static {v9}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v13

    .line 892
    .local v13, "type":I
    iget-object v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v14, v9}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v14

    .line 893
    .local v14, "time":J
    iget v10, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v10, v13, :cond_b

    .line 894
    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v10, p2, v10

    add-long/2addr v14, v10

    .line 896
    :cond_b
    rem-int/lit8 v10, v13, 0x10

    .line 897
    .local v10, "procState":I
    iget-object v11, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aget-wide v19, v11, v10

    add-long v19, v19, v14

    aput-wide v19, v11, v10

    .line 898
    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v19

    .line 900
    .local v19, "samples":J
    const-wide/16 v17, 0x0

    cmp-long v11, v19, v17

    if-lez v11, :cond_c

    .line 901
    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v21

    move/from16 v16, v12

    move-wide/from16 v11, v19

    move-wide/from16 v29, v21

    move/from16 v21, v5

    move/from16 v22, v6

    move-wide/from16 v5, v29

    .local v21, "avg":J
    goto :goto_3

    .line 902
    .end local v21    # "avg":J
    :cond_c
    const/4 v11, 0x4

    if-gt v10, v11, :cond_d

    .line 903
    move/from16 v16, v12

    .end local v12    # "bgHasCached":Z
    .local v16, "bgHasCached":Z
    iget-wide v11, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 904
    .end local v19    # "samples":J
    .local v11, "samples":J
    move/from16 v21, v5

    move/from16 v22, v6

    .end local v5    # "havePss":Z
    .end local v6    # "fgHasBg":Z
    .local v21, "havePss":Z
    .local v22, "fgHasBg":Z
    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .local v5, "avg":J
    goto :goto_3

    .line 905
    .end local v11    # "samples":J
    .end local v16    # "bgHasCached":Z
    .end local v21    # "havePss":Z
    .end local v22    # "fgHasBg":Z
    .local v5, "havePss":Z
    .restart local v6    # "fgHasBg":Z
    .restart local v12    # "bgHasCached":Z
    .restart local v19    # "samples":J
    :cond_d
    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v16, v12

    .end local v5    # "havePss":Z
    .end local v6    # "fgHasBg":Z
    .end local v12    # "bgHasCached":Z
    .restart local v16    # "bgHasCached":Z
    .restart local v21    # "havePss":Z
    .restart local v22    # "fgHasBg":Z
    const/16 v5, 0x9

    if-gt v10, v5, :cond_e

    .line 906
    iget-wide v11, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 907
    .end local v19    # "samples":J
    .restart local v11    # "samples":J
    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .local v5, "avg":J
    goto :goto_3

    .line 909
    .end local v5    # "avg":J
    .end local v11    # "samples":J
    .restart local v19    # "samples":J
    :cond_e
    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 910
    .end local v19    # "samples":J
    .local v5, "samples":J
    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v29, v5

    move-wide v5, v11

    move-wide/from16 v11, v29

    .line 912
    .local v5, "avg":J
    .restart local v11    # "samples":J
    :goto_3
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v3    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v19, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v20, "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    aget-wide v2, v0, v10

    long-to-double v2, v2

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v0, v0, v10

    move/from16 v23, v7

    move/from16 v24, v8

    .end local v7    # "fgHasCached":Z
    .end local v8    # "i":I
    .local v23, "fgHasCached":Z
    .local v24, "i":I
    int-to-double v7, v0

    mul-double/2addr v2, v7

    long-to-double v7, v5

    move v0, v13

    move-wide/from16 v25, v14

    .end local v13    # "type":I
    .end local v14    # "time":J
    .local v0, "type":I
    .local v25, "time":J
    long-to-double v13, v11

    mul-double/2addr v7, v13

    add-double/2addr v2, v7

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v7, v7, v10

    int-to-long v7, v7

    add-long/2addr v7, v11

    long-to-double v7, v7

    div-double/2addr v2, v7

    .line 916
    .local v2, "newAvg":D
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    double-to-long v13, v2

    aput-wide v13, v7, v10

    .line 917
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v8, v7, v10

    int-to-long v13, v8

    add-long/2addr v13, v11

    long-to-int v8, v13

    aput v8, v7, v10

    .line 918
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v13, v7, v10

    move v8, v0

    .end local v0    # "type":I
    .local v8, "type":I
    long-to-double v0, v5

    move-wide/from16 v27, v2

    move-object v15, v4

    move-wide/from16 v2, v25

    move-wide/from16 v25, v5

    .end local v4    # "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v5    # "avg":J
    .local v2, "time":J
    .local v15, "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v25, "avg":J
    .local v27, "newAvg":D
    long-to-double v4, v2

    mul-double/2addr v0, v4

    add-double/2addr v13, v0

    aput-wide v13, v7, v10

    .line 889
    .end local v2    # "time":J
    .end local v8    # "type":I
    .end local v9    # "key":I
    .end local v10    # "procState":I
    .end local v11    # "samples":J
    .end local v25    # "avg":J
    .end local v27    # "newAvg":D
    add-int/lit8 v8, v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v15

    move/from16 v12, v16

    move-wide/from16 v10, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    .end local v24    # "i":I
    .local v8, "i":I
    goto/16 :goto_2

    .line 920
    .end local v8    # "i":I
    .end local v15    # "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v16    # "bgHasCached":Z
    .end local v19    # "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v20    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .end local v21    # "havePss":Z
    .end local v22    # "fgHasBg":Z
    .end local v23    # "fgHasCached":Z
    .local v2, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .restart local v3    # "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .restart local v4    # "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    .local v5, "havePss":Z
    .restart local v6    # "fgHasBg":Z
    .restart local v7    # "fgHasCached":Z
    .restart local v12    # "bgHasCached":Z
    :cond_f
    return-void
.end method

.method public blacklist clone(J)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10
    .param p1, "now"    # J

    .line 220
    new-instance v9, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    move-object v0, v9

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    .line 221
    .local v0, "pnew":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 222
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V

    .line 223
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 225
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 226
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 227
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 228
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 229
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 230
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iput-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 231
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 232
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 233
    return-object v0
.end method

.method public blacklist commitStateTime(J)V
    .locals 7
    .param p1, "now"    # J

    .line 504
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 505
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v1, p1, v1

    .line 506
    .local v1, "dur":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 507
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 509
    :cond_0
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iget-wide v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    sub-long v5, p1, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 510
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    .line 512
    .end local v1    # "dur":J
    :cond_1
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 513
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 514
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_2

    .line 515
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 516
    .local v1, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->commitStateTime(J)V

    .line 514
    .end local v1    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 519
    .end local v0    # "ip":I
    :cond_2
    return-void
.end method

.method public blacklist computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V
    .locals 36
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p2, "now"    # J

    .line 1194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 1195
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 1198
    const/4 v4, 0x0

    .local v4, "is":I
    :goto_0
    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    array-length v5, v5

    if-ge v4, v5, :cond_a

    .line 1199
    const/4 v5, 0x0

    .local v5, "im":I
    :goto_1
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    array-length v6, v6

    if-ge v5, v6, :cond_9

    .line 1200
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_2
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    array-length v7, v7

    if-ge v6, v7, :cond_8

    .line 1201
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    aget v7, v7, v4

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x10

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    aget v8, v8, v6

    add-int/2addr v7, v8

    .line 1203
    .local v7, "bucket":I
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v10, p2

    invoke-virtual {v0, v7, v10, v11}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v12

    add-long/2addr v8, v12

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 1204
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v8

    .line 1205
    .local v8, "samples":J
    cmp-long v12, v8, v2

    if-lez v12, :cond_7

    .line 1206
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v12

    .line 1207
    .local v12, "minPss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v14

    .line 1208
    .local v14, "avgPss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v2

    .line 1209
    .local v2, "maxPss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v10

    .line 1210
    .local v10, "minUss":J
    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "is":I
    .end local v5    # "im":I
    .local v18, "is":I
    .local v19, "im":I
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v4

    .line 1211
    .local v4, "avgUss":J
    move-wide/from16 v20, v8

    .end local v8    # "samples":J
    .local v20, "samples":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v8

    .line 1212
    .local v8, "maxUss":J
    move-wide/from16 v22, v8

    .end local v8    # "maxUss":J
    .local v22, "maxUss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v8

    .line 1213
    .local v8, "minRss":J
    move-wide/from16 v24, v8

    .end local v8    # "minRss":J
    .local v24, "minRss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v8

    .line 1214
    .local v8, "avgRss":J
    move-wide/from16 v26, v8

    .end local v8    # "avgRss":J
    .local v26, "avgRss":J
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v8

    .line 1215
    .local v8, "maxRss":J
    move/from16 v28, v6

    move/from16 v29, v7

    .end local v6    # "ip":I
    .end local v7    # "bucket":I
    .local v28, "ip":I
    .local v29, "bucket":I
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v16, 0x0

    cmp-long v6, v6, v16

    if-nez v6, :cond_0

    .line 1216
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 1217
    iput-wide v14, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 1218
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 1219
    iput-wide v10, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1220
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 1221
    move-wide/from16 v6, v22

    .end local v22    # "maxUss":J
    .local v6, "maxUss":J
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 1222
    move-wide/from16 v6, v24

    .end local v24    # "minRss":J
    .local v6, "minRss":J
    .restart local v22    # "maxUss":J
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    .line 1223
    move-wide/from16 v6, v26

    .end local v26    # "avgRss":J
    .local v6, "avgRss":J
    .restart local v24    # "minRss":J
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    .line 1224
    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move-wide/from16 v14, v20

    move-wide/from16 v20, v4

    move-wide/from16 v34, v8

    move-wide/from16 v8, v24

    move-wide/from16 v24, v6

    move-wide/from16 v6, v22

    move-wide/from16 v22, v2

    move-wide/from16 v2, v34

    goto/16 :goto_5

    .line 1226
    .end local v6    # "avgRss":J
    .restart local v26    # "avgRss":J
    :cond_0
    move-wide/from16 v6, v26

    .end local v26    # "avgRss":J
    .restart local v6    # "avgRss":J
    move-wide/from16 v26, v8

    .end local v8    # "maxRss":J
    .local v26, "maxRss":J
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    cmp-long v8, v12, v8

    if-gez v8, :cond_1

    .line 1227
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 1229
    :cond_1
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    long-to-double v8, v8

    move-wide/from16 v30, v12

    .end local v12    # "minPss":J
    .local v30, "minPss":J
    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v12, v12

    mul-double/2addr v8, v12

    long-to-double v12, v14

    move-wide/from16 v32, v14

    move-wide/from16 v14, v20

    move-wide/from16 v20, v6

    .end local v6    # "avgRss":J
    .local v14, "samples":J
    .local v20, "avgRss":J
    .local v32, "avgPss":J
    long-to-double v6, v14

    mul-double/2addr v12, v6

    add-double/2addr v8, v12

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v6, v14

    long-to-double v6, v6

    div-double/2addr v8, v6

    double-to-long v6, v8

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 1231
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 1232
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 1234
    :cond_2
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    cmp-long v6, v10, v6

    if-gez v6, :cond_3

    .line 1235
    iput-wide v10, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1237
    :cond_3
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    long-to-double v6, v6

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v8, v8

    mul-double/2addr v6, v8

    long-to-double v8, v4

    long-to-double v12, v14

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v8, v14

    long-to-double v8, v8

    div-double/2addr v6, v8

    double-to-long v6, v6

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 1239
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    cmp-long v6, v22, v6

    if-lez v6, :cond_4

    .line 1240
    move-wide/from16 v6, v22

    .end local v22    # "maxUss":J
    .local v6, "maxUss":J
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    goto :goto_3

    .line 1239
    .end local v6    # "maxUss":J
    .restart local v22    # "maxUss":J
    :cond_4
    move-wide/from16 v6, v22

    .line 1242
    .end local v22    # "maxUss":J
    .restart local v6    # "maxUss":J
    :goto_3
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    cmp-long v8, v24, v8

    if-gez v8, :cond_5

    .line 1243
    move-wide/from16 v8, v24

    .end local v24    # "minRss":J
    .local v8, "minRss":J
    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    goto :goto_4

    .line 1242
    .end local v8    # "minRss":J
    .restart local v24    # "minRss":J
    :cond_5
    move-wide/from16 v8, v24

    .line 1245
    .end local v24    # "minRss":J
    .restart local v8    # "minRss":J
    :goto_4
    iget-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    long-to-double v12, v12

    move-wide/from16 v22, v2

    .end local v2    # "maxPss":J
    .local v22, "maxPss":J
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v2, v2

    mul-double/2addr v12, v2

    move-wide/from16 v2, v20

    move-wide/from16 v20, v4

    .end local v4    # "avgUss":J
    .local v2, "avgRss":J
    .local v20, "avgUss":J
    long-to-double v4, v2

    move-wide/from16 v24, v2

    .end local v2    # "avgRss":J
    .local v24, "avgRss":J
    long-to-double v2, v14

    mul-double/2addr v4, v2

    add-double/2addr v12, v4

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v14

    long-to-double v2, v2

    div-double/2addr v12, v2

    double-to-long v2, v12

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    .line 1247
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    cmp-long v2, v26, v2

    if-lez v2, :cond_6

    .line 1248
    move-wide/from16 v2, v26

    .end local v26    # "maxRss":J
    .local v2, "maxRss":J
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    goto :goto_5

    .line 1247
    .end local v2    # "maxRss":J
    .restart local v26    # "maxRss":J
    :cond_6
    move-wide/from16 v2, v26

    .line 1251
    .end local v26    # "maxRss":J
    .restart local v2    # "maxRss":J
    :goto_5
    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v4, v14

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    goto :goto_6

    .line 1205
    .end local v2    # "maxRss":J
    .end local v10    # "minUss":J
    .end local v14    # "samples":J
    .end local v18    # "is":I
    .end local v19    # "im":I
    .end local v20    # "avgUss":J
    .end local v22    # "maxPss":J
    .end local v24    # "avgRss":J
    .end local v28    # "ip":I
    .end local v29    # "bucket":I
    .end local v30    # "minPss":J
    .end local v32    # "avgPss":J
    .local v4, "is":I
    .restart local v5    # "im":I
    .local v6, "ip":I
    .restart local v7    # "bucket":I
    .local v8, "samples":J
    :cond_7
    move-wide/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-wide v14, v8

    .line 1200
    .end local v4    # "is":I
    .end local v5    # "im":I
    .end local v6    # "ip":I
    .end local v7    # "bucket":I
    .end local v8    # "samples":J
    .restart local v18    # "is":I
    .restart local v19    # "im":I
    .restart local v28    # "ip":I
    :goto_6
    add-int/lit8 v6, v28, 0x1

    move-wide/from16 v2, v16

    move/from16 v4, v18

    move/from16 v5, v19

    .end local v28    # "ip":I
    .restart local v6    # "ip":I
    goto/16 :goto_2

    .end local v18    # "is":I
    .end local v19    # "im":I
    .restart local v4    # "is":I
    .restart local v5    # "im":I
    :cond_8
    move-wide/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v28, v6

    .line 1199
    .end local v4    # "is":I
    .end local v5    # "im":I
    .end local v6    # "ip":I
    .restart local v18    # "is":I
    .restart local v19    # "im":I
    add-int/lit8 v5, v19, 0x1

    .end local v19    # "im":I
    .restart local v5    # "im":I
    goto/16 :goto_1

    .end local v18    # "is":I
    .restart local v4    # "is":I
    :cond_9
    move-wide/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    .line 1198
    .end local v4    # "is":I
    .end local v5    # "im":I
    .restart local v18    # "is":I
    add-int/lit8 v4, v18, 0x1

    .end local v18    # "is":I
    .restart local v4    # "is":I
    goto/16 :goto_0

    .line 1256
    .end local v4    # "is":I
    :cond_a
    return-void
.end method

.method public blacklist computeProcessTimeLocked([I[I[IJ)J
    .locals 8
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "now"    # J

    .line 924
    const-wide/16 v0, 0x0

    .line 925
    .local v0, "totalTime":J
    const/4 v2, 0x0

    .local v2, "is":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 926
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 927
    const/4 v4, 0x0

    .local v4, "ip":I
    :goto_2
    array-length v5, p3

    if-ge v4, v5, :cond_0

    .line 928
    aget v5, p1, v2

    aget v6, p2, v3

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x10

    aget v6, p3, v4

    add-int/2addr v5, v6

    .line 930
    .local v5, "bucket":I
    invoke-virtual {p0, v5, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 927
    .end local v5    # "bucket":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 926
    .end local v4    # "ip":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 925
    .end local v3    # "im":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 934
    .end local v2    # "is":I
    :cond_2
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    .line 935
    return-wide v0
.end method

.method public blacklist decActiveServices(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 541
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 542
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 544
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 545
    if-gez v0, :cond_1

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proc active services underrun: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 550
    :cond_1
    return-void
.end method

.method public blacklist decStartedServices(IJLjava/lang/String;)V
    .locals 3
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 576
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 578
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 579
    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    rem-int/lit8 v1, v1, 0x10

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 580
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJ)V

    goto :goto_0

    .line 581
    :cond_1
    if-gez v0, :cond_2

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proc started services underrun: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 586
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist dumpAggregatedProtoForStatsd(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJLcom/android/internal/app/ProcessMap;Landroid/util/SparseArray;)V
    .locals 25
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "procName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1581
    .local p8, "procToPkgMap":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .local p9, "uidToPkgMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v8, p0

    move-object/from16 v7, p1

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    move-object v6, v0

    .line 1582
    .local v6, "durationByState":Landroid/util/SparseLongArray;
    const/4 v0, 0x0

    .line 1583
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    move/from16 v20, v0

    .end local v0    # "didCurState":Z
    .local v1, "i":I
    .local v20, "didCurState":Z
    :goto_0
    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    const/16 v2, 0x8

    if-ge v1, v0, :cond_3

    .line 1584
    iget-object v0, v8, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v0

    .line 1585
    .local v0, "key":I
    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1586
    .local v3, "type":I
    invoke-static {v3}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v4

    .line 1587
    .local v4, "aggregatedType":I
    rem-int/lit8 v5, v3, 0x10

    if-ne v5, v2, :cond_0

    .line 1589
    goto :goto_1

    .line 1592
    :cond_0
    iget-object v2, v8, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v9

    .line 1593
    .local v9, "time":J
    iget v2, v8, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, v3, :cond_1

    .line 1594
    const/16 v20, 0x1

    .line 1595
    iget-wide v11, v8, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v11, p6, v11

    add-long/2addr v9, v11

    .line 1597
    :cond_1
    invoke-virtual {v6, v4}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    .line 1598
    .local v2, "index":I
    if-ltz v2, :cond_2

    .line 1599
    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v11

    add-long/2addr v11, v9

    invoke-virtual {v6, v4, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_1

    .line 1601
    :cond_2
    invoke-virtual {v6, v4, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1583
    .end local v0    # "key":I
    .end local v2    # "index":I
    .end local v3    # "type":I
    .end local v4    # "aggregatedType":I
    .end local v9    # "time":J
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1604
    .end local v1    # "i":I
    :cond_3
    if-nez v20, :cond_5

    iget v0, v8, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    rem-int/lit8 v1, v0, 0x10

    if-eq v1, v2, :cond_5

    .line 1607
    invoke-static {v0}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v0

    .line 1608
    .local v0, "aggregatedType":I
    invoke-virtual {v6, v0}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    .line 1609
    .local v1, "index":I
    if-ltz v1, :cond_4

    .line 1610
    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p6, v2

    .line 1611
    invoke-virtual {v6, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1610
    invoke-virtual {v6, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_2

    .line 1613
    :cond_4
    iget-wide v2, v8, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p6, v2

    invoke-virtual {v6, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1618
    .end local v0    # "aggregatedType":I
    .end local v1    # "index":I
    :cond_5
    :goto_2
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    move-object v14, v0

    .line 1619
    .local v14, "meanRssByState":Landroid/util/SparseLongArray;
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    move-object v15, v0

    .line 1621
    .local v15, "maxRssByState":Landroid/util/SparseLongArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, v8, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_a

    .line 1622
    iget-object v1, v8, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v1

    .line 1623
    .local v1, "key":I
    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 1624
    .local v4, "type":I
    invoke-static {v4}, Lcom/android/internal/app/procstats/DumpUtils;->aggregateCurrentProcessState(I)I

    move-result v5

    .line 1625
    .local v5, "aggregatedType":I
    invoke-virtual {v6, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_6

    .line 1627
    goto :goto_5

    .line 1630
    :cond_6
    iget-object v9, v8, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v9, v1}, Lcom/android/internal/app/procstats/PssTable;->getRssMeanAndMax(I)[J

    move-result-object v9

    .line 1633
    .local v9, "rssMeanAndMax":[J
    aget-wide v10, v9, v2

    iget-object v2, v8, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v12, v4

    invoke-virtual {v2, v12}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v12

    mul-long/2addr v10, v12

    .line 1634
    .local v10, "meanTimesDuration":J
    invoke-virtual {v14, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_7

    .line 1635
    nop

    .line 1636
    invoke-virtual {v14, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    add-long/2addr v12, v10

    .line 1635
    invoke-virtual {v14, v5, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_4

    .line 1638
    :cond_7
    invoke-virtual {v14, v5, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1642
    :goto_4
    invoke-virtual {v15, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_8

    .line 1643
    invoke-virtual {v15, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    aget-wide v16, v9, v3

    cmp-long v2, v12, v16

    if-gez v2, :cond_8

    .line 1644
    aget-wide v2, v9, v3

    invoke-virtual {v15, v5, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_5

    .line 1645
    :cond_8
    invoke-virtual {v15, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_9

    .line 1646
    aget-wide v2, v9, v3

    invoke-virtual {v15, v5, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1621
    .end local v1    # "key":I
    .end local v4    # "type":I
    .end local v5    # "aggregatedType":I
    .end local v9    # "rssMeanAndMax":[J
    .end local v10    # "meanTimesDuration":J
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1651
    .end local v0    # "i":I
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1652
    invoke-virtual {v6, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 1653
    .local v1, "aggregatedKey":I
    invoke-virtual {v14, v1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_b

    .line 1655
    goto :goto_8

    .line 1657
    :cond_b
    invoke-virtual {v6, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 1658
    .local v4, "duration":J
    nop

    .line 1659
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-lez v9, :cond_c

    invoke-virtual {v14, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    div-long/2addr v9, v4

    goto :goto_7

    .line 1660
    :cond_c
    invoke-virtual {v14, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    .line 1658
    :goto_7
    invoke-virtual {v14, v1, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1651
    .end local v1    # "aggregatedKey":I
    .end local v4    # "duration":J
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1664
    .end local v0    # "i":I
    :cond_d
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 1665
    .local v12, "token":J
    const-wide v4, 0x10900000001L

    iget-object v9, v8, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget-boolean v0, v8, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_f

    iget v0, v8, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 1666
    move-object/from16 v10, p9

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-le v0, v3, :cond_e

    goto :goto_9

    :cond_e
    move v11, v2

    goto :goto_a

    .line 1665
    :cond_f
    move-object/from16 v10, p9

    .line 1666
    :goto_9
    move v11, v3

    .line 1665
    :goto_a
    move-object/from16 v0, p1

    move-wide v1, v4

    move-object/from16 v3, p4

    move-object v4, v9

    move v5, v11

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;->writeCompressedProcessName(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 1667
    const-wide v0, 0x10500000002L

    move/from16 v11, p5

    invoke-virtual {v7, v0, v1, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1669
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_b
    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_10

    .line 1670
    const-wide v0, 0x20b00000005L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1672
    .local v3, "stateToken":J
    invoke-virtual {v6, v9}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    .line 1674
    .local v5, "aggregatedKey":I
    const-wide v1, 0x10e00000001L

    const-wide v16, 0x10e0000000aL

    move-object/from16 v0, p1

    move-wide/from16 v21, v3

    .end local v3    # "stateToken":J
    .local v21, "stateToken":J
    move-wide/from16 v3, v16

    move/from16 v23, v5

    .end local v5    # "aggregatedKey":I
    .local v23, "aggregatedKey":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAggregatedProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJI)V

    .line 1678
    const-wide v0, 0x10300000004L

    move/from16 v2, v23

    .end local v23    # "aggregatedKey":I
    .local v2, "aggregatedKey":I
    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {v7, v0, v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1680
    const-wide v0, 0x10b00000008L

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    .line 1684
    invoke-virtual {v14, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1685
    invoke-virtual {v15, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1680
    move v5, v9

    .end local v9    # "i":I
    .local v5, "i":I
    move-object/from16 v9, p1

    move-wide v10, v0

    move-wide v0, v12

    const-wide/16 v12, 0x0

    .end local v12    # "token":J
    .local v0, "token":J
    move-object/from16 v23, v14

    move-object/from16 v24, v15

    .end local v14    # "meanRssByState":Landroid/util/SparseLongArray;
    .end local v15    # "maxRssByState":Landroid/util/SparseLongArray;
    .local v23, "meanRssByState":Landroid/util/SparseLongArray;
    .local v24, "maxRssByState":Landroid/util/SparseLongArray;
    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v9 .. v19}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJII)V

    .line 1687
    move-wide/from16 v3, v21

    .end local v21    # "stateToken":J
    .restart local v3    # "stateToken":J
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1669
    .end local v2    # "aggregatedKey":I
    .end local v3    # "stateToken":J
    add-int/lit8 v9, v5, 0x1

    move/from16 v11, p5

    move-object/from16 v10, p9

    move-wide v12, v0

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    .end local v5    # "i":I
    .restart local v9    # "i":I
    goto :goto_b

    .end local v0    # "token":J
    .end local v23    # "meanRssByState":Landroid/util/SparseLongArray;
    .end local v24    # "maxRssByState":Landroid/util/SparseLongArray;
    .restart local v12    # "token":J
    .restart local v14    # "meanRssByState":Landroid/util/SparseLongArray;
    .restart local v15    # "maxRssByState":Landroid/util/SparseLongArray;
    :cond_10
    move v5, v9

    move-wide v0, v12

    .line 1690
    .end local v9    # "i":I
    .end local v12    # "token":J
    .restart local v0    # "token":J
    iget-object v2, v8, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const-wide v3, 0x20b00000007L

    move-wide v9, v0

    .end local v0    # "token":J
    .local v9, "token":J
    move-object v0, v2

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, p6

    move-object v11, v6

    .end local v6    # "durationByState":Landroid/util/SparseLongArray;
    .local v11, "durationByState":Landroid/util/SparseLongArray;
    move-object/from16 v6, p0

    move-object v12, v7

    move-object/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredAssociationStatesProtoForProc(Landroid/util/proto/ProtoOutputStream;JJLcom/android/internal/app/procstats/ProcessState;Landroid/util/SparseArray;)V

    .line 1692
    invoke-virtual {v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1693
    return-void
.end method

.method public blacklist dumpAllPssCheckin(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1424
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    .line 1425
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1426
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    .line 1427
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1428
    .local v3, "type":I
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1429
    invoke-static {p1, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1430
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1431
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v4

    .line 1432
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    .line 1431
    invoke-static {p1, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    .line 1425
    .end local v2    # "key":I
    .end local v3    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1434
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist dumpAllStateCheckin(Ljava/io/PrintWriter;J)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .line 1407
    const/4 v0, 0x0

    .line 1408
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1409
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1410
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1411
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    .line 1412
    .local v4, "time":J
    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v6, v3, :cond_0

    .line 1413
    const/4 v0, 0x1

    .line 1414
    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    .line 1416
    :cond_0
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1408
    .end local v2    # "key":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1418
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1419
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1421
    :cond_2
    return-void
.end method

.method public blacklist dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V
    .locals 29
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J

    .line 1261
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    if-eqz p2, :cond_0

    array-length v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 1262
    .local v5, "NSS":I
    :goto_0
    if-eqz p4, :cond_1

    array-length v6, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    .line 1263
    .local v6, "NMS":I
    :goto_1
    if-eqz p6, :cond_2

    array-length v7, v3

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    .line 1264
    .local v7, "NPS":I
    :goto_2
    const/4 v8, 0x0

    .local v8, "iss":I
    :goto_3
    if-ge v8, v5, :cond_11

    .line 1265
    const/4 v9, 0x0

    .local v9, "ims":I
    :goto_4
    if-ge v9, v6, :cond_10

    .line 1266
    const/4 v10, 0x0

    .local v10, "ips":I
    :goto_5
    if-ge v10, v7, :cond_f

    .line 1267
    if-eqz p2, :cond_3

    aget v12, v1, v8

    goto :goto_6

    :cond_3
    const/4 v12, 0x0

    .line 1268
    .local v12, "vsscreen":I
    :goto_6
    if-eqz p4, :cond_4

    aget v13, v2, v9

    goto :goto_7

    :cond_4
    const/4 v13, 0x0

    .line 1269
    .local v13, "vsmem":I
    :goto_7
    if-eqz p6, :cond_5

    aget v14, v3, v10

    goto :goto_8

    :cond_5
    const/4 v14, 0x0

    .line 1270
    .local v14, "vsproc":I
    :goto_8
    if-eqz p2, :cond_6

    const/4 v15, 0x1

    goto :goto_9

    :cond_6
    array-length v15, v1

    .line 1271
    .local v15, "NSA":I
    :goto_9
    if-eqz p4, :cond_7

    const/4 v4, 0x1

    goto :goto_a

    :cond_7
    array-length v4, v2

    .line 1272
    .local v4, "NMA":I
    :goto_a
    if-eqz p6, :cond_8

    const/4 v11, 0x1

    goto :goto_b

    :cond_8
    array-length v11, v3

    .line 1273
    .local v11, "NPA":I
    :goto_b
    const-wide/16 v16, 0x0

    .line 1274
    .local v16, "totalTime":J
    const/16 v18, 0x0

    move/from16 v19, v5

    move/from16 v20, v6

    move-wide/from16 v5, v16

    move/from16 v16, v7

    move/from16 v7, v18

    .end local v6    # "NMS":I
    .local v5, "totalTime":J
    .local v7, "isa":I
    .local v16, "NPS":I
    .local v19, "NSS":I
    .local v20, "NMS":I
    :goto_c
    if-ge v7, v15, :cond_e

    .line 1275
    const/16 v17, 0x0

    move-wide/from16 v27, v5

    move/from16 v5, v17

    move-wide/from16 v17, v27

    .local v5, "ima":I
    .local v17, "totalTime":J
    :goto_d
    if-ge v5, v4, :cond_d

    .line 1276
    const/4 v6, 0x0

    .local v6, "ipa":I
    :goto_e
    if-ge v6, v11, :cond_c

    .line 1277
    if-eqz p2, :cond_9

    const/16 v21, 0x0

    goto :goto_f

    :cond_9
    aget v21, v1, v7

    .line 1278
    .local v21, "vascreen":I
    :goto_f
    if-eqz p4, :cond_a

    const/16 v22, 0x0

    goto :goto_10

    :cond_a
    aget v22, v2, v5

    .line 1279
    .local v22, "vamem":I
    :goto_10
    if-eqz p6, :cond_b

    const/16 v23, 0x0

    goto :goto_11

    :cond_b
    aget v23, v3, v6

    .line 1280
    .local v23, "vaproc":I
    :goto_11
    add-int v24, v12, v21

    add-int v24, v24, v13

    add-int v24, v24, v22

    mul-int/lit8 v24, v24, 0x10

    add-int v24, v24, v14

    add-int v1, v24, v23

    .line 1282
    .local v1, "bucket":I
    move-object/from16 v2, p0

    move/from16 v24, v4

    move-wide/from16 v3, p8

    .end local v4    # "NMA":I
    .local v24, "NMA":I
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v25

    add-long v17, v17, v25

    .line 1276
    .end local v1    # "bucket":I
    .end local v21    # "vascreen":I
    .end local v22    # "vamem":I
    .end local v23    # "vaproc":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v4, v24

    goto :goto_e

    .end local v24    # "NMA":I
    .restart local v4    # "NMA":I
    :cond_c
    move-object/from16 v2, p0

    move/from16 v24, v4

    move-wide/from16 v3, p8

    .line 1275
    .end local v4    # "NMA":I
    .end local v6    # "ipa":I
    .restart local v24    # "NMA":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v4, v24

    goto :goto_d

    .end local v24    # "NMA":I
    .restart local v4    # "NMA":I
    :cond_d
    move-object/from16 v2, p0

    move/from16 v24, v4

    move-wide/from16 v3, p8

    .line 1274
    .end local v4    # "NMA":I
    .end local v5    # "ima":I
    .restart local v24    # "NMA":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-wide/from16 v5, v17

    move/from16 v4, v24

    goto :goto_c

    .end local v17    # "totalTime":J
    .end local v24    # "NMA":I
    .restart local v4    # "NMA":I
    .local v5, "totalTime":J
    :cond_e
    move-object/from16 v2, p0

    move/from16 v24, v4

    move-wide/from16 v3, p8

    .line 1286
    .end local v4    # "NMA":I
    .end local v7    # "isa":I
    .restart local v24    # "NMA":I
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1266
    .end local v5    # "totalTime":J
    .end local v11    # "NPA":I
    .end local v12    # "vsscreen":I
    .end local v13    # "vsmem":I
    .end local v14    # "vsproc":I
    .end local v15    # "NSA":I
    .end local v24    # "NMA":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move/from16 v7, v16

    move/from16 v5, v19

    move/from16 v6, v20

    goto/16 :goto_5

    .end local v16    # "NPS":I
    .end local v19    # "NSS":I
    .end local v20    # "NMS":I
    .local v5, "NSS":I
    .local v6, "NMS":I
    .local v7, "NPS":I
    :cond_f
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v16, v7

    .line 1265
    .end local v5    # "NSS":I
    .end local v6    # "NMS":I
    .end local v7    # "NPS":I
    .end local v10    # "ips":I
    .restart local v16    # "NPS":I
    .restart local v19    # "NSS":I
    .restart local v20    # "NMS":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    goto/16 :goto_4

    .end local v16    # "NPS":I
    .end local v19    # "NSS":I
    .end local v20    # "NMS":I
    .restart local v5    # "NSS":I
    .restart local v6    # "NMS":I
    .restart local v7    # "NPS":I
    :cond_10
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v16, v7

    .line 1264
    .end local v5    # "NSS":I
    .end local v6    # "NMS":I
    .end local v7    # "NPS":I
    .end local v9    # "ims":I
    .restart local v16    # "NPS":I
    .restart local v19    # "NSS":I
    .restart local v20    # "NMS":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    goto/16 :goto_3

    .line 1291
    .end local v8    # "iss":I
    .end local v16    # "NPS":I
    .end local v19    # "NSS":I
    .end local v20    # "NMS":I
    .restart local v5    # "NSS":I
    .restart local v6    # "NMS":I
    .restart local v7    # "NPS":I
    :cond_11
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V
    .locals 29
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "procName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "now"    # J

    .line 1472
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p6

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1473
    .local v13, "token":J
    const-wide v1, 0x10900000001L

    move-object/from16 v15, p4

    invoke-virtual {v10, v1, v2, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1474
    const-wide v1, 0x10500000002L

    move/from16 v8, p5

    invoke-virtual {v10, v1, v2, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1475
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v3, :cond_0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v3, :cond_1

    .line 1476
    :cond_0
    const-wide v3, 0x10b00000003L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1477
    .local v6, "killToken":J
    const-wide v3, 0x10500000001L

    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v10, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1478
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v10, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1479
    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v1, p1

    move-wide/from16 v16, v2

    const-wide v2, 0x10b00000003L

    move-wide/from16 v18, v6

    .end local v6    # "killToken":J
    .local v18, "killToken":J
    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 1481
    move-wide/from16 v1, v18

    .end local v18    # "killToken":J
    .local v1, "killToken":J
    invoke-virtual {v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1485
    .end local v1    # "killToken":J
    :cond_1
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    move-object v9, v1

    .line 1486
    .local v9, "durationByState":Landroid/util/SparseLongArray;
    const/4 v1, 0x0

    .line 1487
    .local v1, "didCurState":Z
    const/4 v2, 0x0

    move/from16 v16, v1

    .end local v1    # "didCurState":Z
    .local v2, "i":I
    .local v16, "didCurState":Z
    :goto_0
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 1488
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v1

    .line 1489
    .local v1, "key":I
    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1490
    .local v3, "type":I
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    .line 1491
    .local v4, "time":J
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v6, v3, :cond_2

    .line 1492
    const/4 v6, 0x1

    .line 1493
    .end local v16    # "didCurState":Z
    .local v6, "didCurState":Z
    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v7, v11, v7

    add-long/2addr v4, v7

    move/from16 v16, v6

    .line 1495
    .end local v6    # "didCurState":Z
    .restart local v16    # "didCurState":Z
    :cond_2
    invoke-virtual {v9, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1487
    .end local v1    # "key":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1497
    .end local v2    # "i":I
    :cond_3
    if-nez v16, :cond_4

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1498
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, v11, v2

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1501
    :cond_4
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_1
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    const-wide v6, 0x20b00000005L

    const-wide v4, 0x10300000004L

    if-ge v8, v1, :cond_6

    .line 1502
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1, v8}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    .line 1503
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1504
    .restart local v3    # "type":I
    invoke-virtual {v9, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_5

    .line 1506
    move/from16 v17, v8

    goto :goto_2

    .line 1508
    :cond_5
    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1509
    .local v6, "stateToken":J
    const-wide v17, 0x10e00000001L

    const-wide v19, 0x10e00000002L

    const-wide v21, 0x10e00000003L

    move-object/from16 v1, p1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v2    # "key":I
    .end local v3    # "type":I
    .local v23, "key":I
    .local v24, "type":I
    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v25, v6

    .end local v6    # "stateToken":J
    .local v25, "stateToken":J
    move-wide/from16 v6, v21

    move/from16 v17, v8

    .end local v8    # "i":I
    .local v17, "i":I
    move/from16 v8, v24

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 1515
    move/from16 v1, v24

    .end local v24    # "type":I
    .local v1, "type":I
    invoke-virtual {v9, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    .line 1516
    .local v2, "duration":J
    invoke-virtual {v9, v1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1517
    const-wide v4, 0x10300000004L

    invoke-virtual {v10, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1519
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    move/from16 v5, v23

    .end local v23    # "key":I
    .local v5, "key":I
    invoke-virtual {v4, v10, v5}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProtoForKey(Landroid/util/proto/ProtoOutputStream;I)V

    .line 1521
    move-wide/from16 v6, v25

    .end local v25    # "stateToken":J
    .restart local v6    # "stateToken":J
    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1501
    .end local v1    # "type":I
    .end local v2    # "duration":J
    .end local v5    # "key":I
    .end local v6    # "stateToken":J
    :goto_2
    add-int/lit8 v8, v17, 0x1

    .end local v17    # "i":I
    .restart local v8    # "i":I
    goto :goto_1

    :cond_6
    move/from16 v17, v8

    .line 1524
    .end local v8    # "i":I
    const/4 v1, 0x0

    move v8, v1

    .restart local v8    # "i":I
    :goto_3
    invoke-virtual {v9}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_7

    .line 1525
    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1526
    .local v2, "stateToken":J
    const-wide v17, 0x10e00000001L

    const-wide v19, 0x10e00000002L

    const-wide v21, 0x10e00000003L

    .line 1530
    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v23

    .line 1526
    move-object/from16 v1, p1

    move-wide/from16 v27, v2

    .end local v2    # "stateToken":J
    .local v27, "stateToken":J
    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v17, v6

    move-wide/from16 v6, v21

    move v15, v8

    .end local v8    # "i":I
    .local v15, "i":I
    move/from16 v8, v23

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 1531
    invoke-virtual {v9, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v1

    const-wide v3, 0x10300000004L

    invoke-virtual {v10, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1532
    move-wide/from16 v1, v27

    .end local v27    # "stateToken":J
    .local v1, "stateToken":J
    invoke-virtual {v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1524
    .end local v1    # "stateToken":J
    add-int/lit8 v8, v15, 0x1

    move-object/from16 v15, p4

    move-wide v4, v3

    move-wide/from16 v6, v17

    .end local v15    # "i":I
    .restart local v8    # "i":I
    goto :goto_3

    :cond_7
    move-wide v3, v4

    move v15, v8

    .line 1535
    .end local v8    # "i":I
    invoke-virtual {v0, v11, v12}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v1

    .line 1536
    .local v1, "totalRunningDuration":J
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_9

    .line 1537
    const-wide v7, 0x10b00000006L

    invoke-virtual {v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 1538
    .local v7, "stateToken":J
    invoke-virtual {v10, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1539
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v4, 0x0

    aget-wide v17, v3, v4

    cmp-long v5, v17, v5

    if-eqz v5, :cond_8

    .line 1540
    invoke-static {v10, v3, v4}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V

    .line 1542
    :cond_8
    invoke-virtual {v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1545
    .end local v7    # "stateToken":J
    :cond_9
    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1546
    return-void
.end method

.method blacklist dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "reqPackage"    # Ljava/lang/String;
    .param p4, "totalTime"    # J
    .param p6, "now"    # J
    .param p8, "dumpAll"    # Z

    .line 1158
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    if-eqz p8, :cond_2

    .line 1159
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "myID="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1160
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1161
    const-string v1, " mCommonProcess="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1163
    const-string v1, " mPackage="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    .line 1165
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mMultiPackage="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1167
    :cond_0
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, v1, :cond_1

    .line 1168
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Common Proc: "

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1169
    const-string v1, "/"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1170
    const-string v1, " pkg="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    .line 1173
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Aggregated Association Sources:"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "        "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 1176
    move-wide/from16 v11, p4

    move-wide/from16 v8, p6

    invoke-static {v8, v9, v11, v12, v1}, Lcom/android/internal/app/procstats/AssociationState;->createSortedAssociations(JJLandroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v15, 0x1

    .line 1174
    move-object/from16 v1, p1

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    move v11, v15

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/procstats/AssociationState;->dumpSources(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V

    .line 1180
    :cond_2
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-eqz v1, :cond_3

    .line 1181
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mActive="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1183
    :cond_3
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v1, :cond_4

    .line 1184
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDead="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1186
    :cond_4
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-nez v1, :cond_5

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-eqz v1, :cond_6

    .line 1187
    :cond_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mNumActiveServices="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1188
    const-string v1, " mNumStartedServices="

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1189
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1191
    :cond_6
    return-void
.end method

.method public blacklist dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # J
    .param p6, "itemName"    # Ljava/lang/String;
    .param p7, "now"    # J

    .line 1295
    const-string/jumbo v0, "pkgproc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1297
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1301
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1302
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p0, p1, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1304
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1305
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1306
    const-string/jumbo v1, "pkgpss,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1310
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1312
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1313
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1315
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1317
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 1318
    const-string/jumbo v1, "pkgrun,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1322
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1324
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1325
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p0, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1328
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p1, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    .line 1330
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1332
    :cond_1
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_3

    .line 1333
    :cond_2
    const-string/jumbo v1, "pkgkills,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1337
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    .line 1339
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1340
    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1345
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1346
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1347
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1348
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1349
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1350
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1351
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1352
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1353
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1355
    :cond_3
    return-void
.end method

.method public blacklist dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "now"    # J

    .line 1358
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    const-string v1, ","

    if-lez v0, :cond_0

    .line 1359
    const-string/jumbo v0, "proc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1363
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1364
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1367
    const-string/jumbo v0, "pss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1371
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1372
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1374
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 1375
    const-string/jumbo v0, "procrun,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1379
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1381
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {p1, v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamplesCheckin(Ljava/io/PrintWriter;[JI)V

    .line 1383
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1385
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_4

    .line 1386
    :cond_3
    const-string v0, "kills,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1390
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1391
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1393
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1394
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1395
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1396
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1397
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1398
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1399
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1400
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1402
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1404
    :cond_4
    return-void
.end method

.method public blacklist dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .line 992
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-wide/16 v5, 0x0

    .line 993
    .local v5, "totalTime":J
    const/4 v7, -0x1

    .line 994
    .local v7, "printedScreen":I
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_0
    array-length v9, v2

    const-string v11, ": "

    if-ge v8, v9, :cond_8

    .line 995
    const/4 v9, -0x1

    .line 996
    .local v9, "printedMem":I
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "im":I
    :goto_1
    array-length v10, v3

    if-ge v14, v10, :cond_7

    .line 997
    const/4 v10, 0x0

    .local v10, "ip":I
    :goto_2
    array-length v15, v4

    if-ge v10, v15, :cond_6

    .line 998
    aget v15, v2, v8

    .line 999
    .local v15, "iscreen":I
    aget v12, v3, v14

    .line 1000
    .local v12, "imem":I
    add-int v13, v15, v12

    mul-int/lit8 v13, v13, 0x10

    aget v19, v4, v10

    add-int v13, v13, v19

    .line 1001
    .local v13, "bucket":I
    move/from16 v19, v8

    .end local v8    # "is":I
    .local v19, "is":I
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move/from16 v20, v14

    .end local v14    # "im":I
    .local v20, "im":I
    int-to-byte v14, v13

    invoke-virtual {v8, v14}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v21

    .line 1002
    .local v21, "time":J
    const-string v8, ""

    .line 1003
    .local v8, "running":Ljava/lang/String;
    iget v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v14, v13, :cond_0

    .line 1004
    const-string v8, " (running)"

    .line 1005
    move/from16 v23, v13

    .end local v13    # "bucket":I
    .local v23, "bucket":I
    iget-wide v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v13, p6, v13

    add-long v21, v21, v13

    move-wide/from16 v13, v21

    goto :goto_3

    .line 1003
    .end local v23    # "bucket":I
    .restart local v13    # "bucket":I
    :cond_0
    move/from16 v23, v13

    .end local v13    # "bucket":I
    .restart local v23    # "bucket":I
    move-wide/from16 v13, v21

    .line 1007
    .end local v21    # "time":J
    .local v13, "time":J
    :goto_3
    const-wide/16 v17, 0x0

    cmp-long v21, v13, v17

    if-eqz v21, :cond_5

    .line 1008
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1009
    array-length v0, v2

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 1010
    if-eq v7, v15, :cond_1

    .line 1011
    move v0, v15

    goto :goto_4

    :cond_1
    const/4 v0, -0x1

    .line 1010
    :goto_4
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 1012
    move v7, v15

    .line 1014
    :cond_2
    array-length v0, v3

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 1015
    nop

    .line 1016
    if-eq v9, v12, :cond_3

    move v0, v12

    goto :goto_5

    :cond_3
    const/4 v0, -0x1

    .line 1015
    :goto_5
    const/16 v2, 0x2f

    invoke-static {v1, v0, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 1017
    move v0, v12

    move v9, v0

    .line 1019
    :cond_4
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v2, v4, v10

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1020
    invoke-static {v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    add-long/2addr v5, v13

    .line 997
    .end local v8    # "running":Ljava/lang/String;
    .end local v12    # "imem":I
    .end local v13    # "time":J
    .end local v15    # "iscreen":I
    .end local v23    # "bucket":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v8, v19

    move/from16 v14, v20

    goto :goto_2

    .end local v19    # "is":I
    .end local v20    # "im":I
    .local v8, "is":I
    .restart local v14    # "im":I
    :cond_6
    move/from16 v19, v8

    move/from16 v20, v14

    .line 996
    .end local v8    # "is":I
    .end local v10    # "ip":I
    .end local v14    # "im":I
    .restart local v19    # "is":I
    .restart local v20    # "im":I
    add-int/lit8 v14, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .end local v20    # "im":I
    .restart local v14    # "im":I
    goto/16 :goto_1

    .end local v19    # "is":I
    .restart local v8    # "is":I
    :cond_7
    move/from16 v19, v8

    move/from16 v20, v14

    .line 994
    .end local v8    # "is":I
    .end local v9    # "printedMem":I
    .end local v14    # "im":I
    .restart local v19    # "is":I
    add-int/lit8 v8, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .end local v19    # "is":I
    .restart local v8    # "is":I
    goto/16 :goto_0

    :cond_8
    move/from16 v19, v8

    .line 1026
    .end local v8    # "is":I
    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_b

    .line 1027
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v8, 0x1

    if-le v2, v8, :cond_9

    .line 1029
    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_6

    .line 1028
    :cond_9
    const/4 v2, -0x1

    .line 1031
    :goto_6
    array-length v9, v3

    if-le v9, v8, :cond_a

    .line 1032
    const/16 v8, 0x2f

    invoke-static {v1, v2, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 1034
    :cond_a
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1036
    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1037
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_7

    .line 1026
    :cond_b
    move-object/from16 v0, p3

    .line 1039
    :goto_7
    return-void
.end method

.method public blacklist dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .line 1043
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    .line 1044
    .local v5, "printedHeader":Z
    const/4 v6, -0x1

    .line 1045
    .local v6, "printedScreen":I
    const/4 v7, 0x0

    .local v7, "is":I
    :goto_0
    array-length v8, v2

    const-string v9, ": "

    if-ge v7, v8, :cond_8

    .line 1046
    const/4 v8, -0x1

    .line 1047
    .local v8, "printedMem":I
    const/4 v10, 0x0

    .local v10, "im":I
    :goto_1
    array-length v11, v3

    if-ge v10, v11, :cond_7

    .line 1048
    const/4 v11, 0x0

    .local v11, "ip":I
    :goto_2
    array-length v12, v4

    if-ge v11, v12, :cond_6

    .line 1049
    aget v12, v2, v7

    .line 1050
    .local v12, "iscreen":I
    aget v13, v3, v10

    .line 1051
    .local v13, "imem":I
    add-int v14, v12, v13

    mul-int/lit8 v14, v14, 0x10

    aget v15, v4, v11

    add-int/2addr v14, v15

    .line 1052
    .local v14, "bucket":I
    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    move/from16 v16, v7

    .end local v7    # "is":I
    .local v16, "is":I
    int-to-byte v7, v14

    invoke-virtual {v15, v7}, Lcom/android/internal/app/procstats/PssTable;->getKey(B)I

    move-result v7

    .line 1053
    .local v7, "key":I
    const/4 v15, -0x1

    if-ne v7, v15, :cond_0

    .line 1054
    goto/16 :goto_6

    .line 1056
    :cond_0
    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v15, v7}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v15

    .line 1057
    .local v15, "table":[J
    move/from16 v17, v14

    .end local v14    # "bucket":I
    .local v17, "bucket":I
    invoke-static {v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v14

    .line 1058
    .local v14, "tableOffset":I
    if-nez v5, :cond_1

    .line 1059
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1060
    move/from16 v18, v5

    .end local v5    # "printedHeader":Z
    .local v18, "printedHeader":Z
    const-string v5, "PSS/USS ("

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1062
    const-string v5, " entries):"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    const/4 v5, 0x1

    .end local v18    # "printedHeader":Z
    .restart local v5    # "printedHeader":Z
    goto :goto_3

    .line 1058
    :cond_1
    move/from16 v18, v5

    .line 1065
    :goto_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    move/from16 v18, v5

    .end local v5    # "printedHeader":Z
    .restart local v18    # "printedHeader":Z
    const-string v5, "  "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    array-length v5, v2

    const/4 v2, 0x1

    if-le v5, v2, :cond_3

    .line 1068
    nop

    .line 1069
    if-eq v6, v12, :cond_2

    move v5, v12

    goto :goto_4

    :cond_2
    const/4 v5, -0x1

    .line 1068
    :goto_4
    invoke-static {v1, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 1070
    move v6, v12

    .line 1072
    :cond_3
    array-length v5, v3

    if-le v5, v2, :cond_5

    .line 1073
    nop

    .line 1074
    if-eq v8, v13, :cond_4

    move v2, v13

    goto :goto_5

    :cond_4
    const/4 v2, -0x1

    :goto_5
    const/16 v5, 0x2f

    .line 1073
    invoke-static {v1, v2, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 1075
    move v2, v13

    move v8, v2

    .line 1077
    :cond_5
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget v5, v4, v11

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    invoke-static {v1, v15, v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamples(Ljava/io/PrintWriter;[JI)V

    .line 1079
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    move/from16 v5, v18

    .line 1048
    .end local v7    # "key":I
    .end local v12    # "iscreen":I
    .end local v13    # "imem":I
    .end local v14    # "tableOffset":I
    .end local v15    # "table":[J
    .end local v17    # "bucket":I
    .end local v18    # "printedHeader":Z
    .restart local v5    # "printedHeader":Z
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p3

    move/from16 v7, v16

    goto/16 :goto_2

    .end local v16    # "is":I
    .local v7, "is":I
    :cond_6
    move/from16 v18, v5

    move/from16 v16, v7

    .line 1047
    .end local v5    # "printedHeader":Z
    .end local v7    # "is":I
    .end local v11    # "ip":I
    .restart local v16    # "is":I
    .restart local v18    # "printedHeader":Z
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p3

    goto/16 :goto_1

    .end local v16    # "is":I
    .end local v18    # "printedHeader":Z
    .restart local v5    # "printedHeader":Z
    .restart local v7    # "is":I
    :cond_7
    move/from16 v16, v7

    .line 1045
    .end local v7    # "is":I
    .end local v8    # "printedMem":I
    .end local v10    # "im":I
    .restart local v16    # "is":I
    add-int/lit8 v7, v16, 0x1

    move-object/from16 v2, p3

    .end local v16    # "is":I
    .restart local v7    # "is":I
    goto/16 :goto_0

    :cond_8
    move/from16 v16, v7

    .line 1083
    .end local v7    # "is":I
    move-wide/from16 v7, p6

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v10

    .line 1084
    .local v10, "totalRunningDuration":J
    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-eqz v2, :cond_b

    .line 1085
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1086
    const-string v2, "Cur time "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    invoke-static {v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1088
    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    cmp-long v2, v14, v12

    if-eqz v2, :cond_9

    .line 1089
    const-string v2, " (running)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    :cond_9
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    const/4 v14, 0x0

    aget-wide v15, v2, v14

    cmp-long v2, v15, v12

    if-eqz v2, :cond_a

    .line 1092
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-static {v1, v2, v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpPssSamples(Ljava/io/PrintWriter;[JI)V

    .line 1095
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1097
    :cond_b
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-eqz v2, :cond_c

    .line 1098
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed for excessive CPU use: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1099
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    :cond_c
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-eqz v2, :cond_d

    .line 1102
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed from cached state: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times from pss "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1104
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    invoke-static {v1, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    mul-long/2addr v12, v14

    invoke-static {v1, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    mul-long/2addr v12, v14

    invoke-static {v1, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1108
    :cond_d
    return-void
.end method

.method public blacklist dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJ)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J

    .line 941
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 942
    const-string v0, "* "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 943
    if-eqz v14, :cond_0

    .line 944
    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 946
    :cond_0
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    const-string v0, " / "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 948
    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-static {v13, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 949
    const-string v0, " / v"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    iget-wide v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v13, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 951
    const-string v0, ":"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_TOTAL:Ljava/lang/String;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 954
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v3, v0, v15

    new-array v6, v11, [I

    aput v15, v6, v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v15, v11

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 956
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget-object v3, v0, v15

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v15, v6, v0

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 958
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 961
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v3, v0, v11

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v11, v6, v0

    move-object/from16 v0, p0

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 964
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 967
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 970
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 972
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 974
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 977
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 979
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 981
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 983
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v3, v0, v1

    new-array v6, v15, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 985
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABEL_CACHED:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 988
    return-void

    :array_0
    .array-data 4
        0xd
        0xe
        0xf
    .end array-data
.end method

.method public blacklist getCombinedState()I
    .locals 1

    .line 500
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    return v0
.end method

.method public blacklist getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public blacklist getDuration(IJ)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 775
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    .line 776
    .local v0, "time":J
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v2, p1, :cond_0

    .line 777
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    .line 779
    :cond_0
    return-wide v0
.end method

.method public blacklist getDurationsBucketCount()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getOrCreateSourceState(Lcom/android/internal/app/procstats/AssociationState$SourceKey;)Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .locals 4
    .param p1, "key"    # Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 823
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 824
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 827
    .local v0, "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-nez v0, :cond_1

    .line 828
    new-instance v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    move-object v0, v1

    .line 829
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :cond_1
    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 791
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 795
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 787
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssRssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 815
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssRssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 819
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssRssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 811
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssSampleCount(I)J
    .locals 3
    .param p1, "state"    # I

    .line 783
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssUssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 803
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssUssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 807
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPssUssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    .line 799
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTotalRunningDuration(J)J
    .locals 7
    .param p1, "now"    # J

    .line 770
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 771
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v4, p1, v2

    :cond_0
    add-long/2addr v0, v4

    .line 770
    return-wide v0
.end method

.method public blacklist getTotalRunningPss()[J
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    return-object v0
.end method

.method public blacklist getUid()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    return v0
.end method

.method public blacklist getVersion()J
    .locals 2

    .line 260
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    return-wide v0
.end method

.method public blacklist hasAnyData()Z
    .locals 6

    .line 427
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 429
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 427
    :cond_1
    return v1
.end method

.method public blacklist incActiveServices(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 529
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 531
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 532
    return-void
.end method

.method public blacklist incStartedServices(IJLjava/lang/String;)V
    .locals 2
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 560
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 562
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 563
    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 564
    mul-int/lit8 v0, p1, 0x10

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJ)V

    .line 566
    :cond_1
    return-void
.end method

.method public blacklist isActive()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return v0
.end method

.method public blacklist isInUse()Z
    .locals 2

    .line 418
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

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

.method public blacklist isMultiPackage()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return v0
.end method

.method public blacklist makeActive()V
    .locals 1

    .line 409
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 411
    return-void
.end method

.method public blacklist makeDead()V
    .locals 1

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    .line 328
    return-void
.end method

.method public blacklist makeInactive()V
    .locals 1

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 415
    return-void
.end method

.method public blacklist makeStandalone()V
    .locals 0

    .line 248
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 249
    return-void
.end method

.method public blacklist pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 703
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_3

    .line 707
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 708
    .local v0, "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const-string v1, "Didn\'t find package "

    const-string v2, " / "

    if-eqz v0, :cond_2

    .line 712
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 713
    .local v3, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    const-string v4, " vers "

    if-eqz v3, :cond_1

    .line 717
    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 718
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_0

    .line 722
    return-object v1

    .line 719
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Didn\'t create per-package process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 714
    .end local v1    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 709
    .end local v3    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 724
    .end local v0    # "vpkg":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_3
    return-object p0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;IZ)Z
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I
    .param p3, "fully"    # Z

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 367
    .local v0, "multiPackage":Z
    :goto_0
    if-eqz p3, :cond_1

    .line 368
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 371
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 372
    return v1

    .line 375
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/procstats/PssTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 376
    return v1

    .line 378
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v3, 0xa

    if-ge v1, v3, :cond_4

    .line 379
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 381
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 385
    if-lez v1, :cond_5

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_2

    .line 390
    :cond_5
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 394
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 395
    .local v1, "numOfSources":I
    if-lez v1, :cond_6

    .line 396
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    .line 397
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_6

    .line 398
    new-instance v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v4, v5, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)V

    .line 399
    .local v4, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    new-instance v5, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, p0, v4}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    .line 400
    .local v5, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v5, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    .line 401
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .end local v4    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v5    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 405
    .end local v3    # "i":I
    :cond_6
    return v2
.end method

.method public blacklist reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 9
    .param p2, "pss"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;J)V"
        }
    .end annotation

    .line 691
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 692
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v1, 0x1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 693
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    .line 694
    return-void

    .line 697
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    .line 698
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    const/4 v2, 0x1

    move-wide v3, p2

    move-wide v5, p2

    move-wide v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 697
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 700
    .end local v0    # "ip":I
    :cond_1
    return-void
.end method

.method public blacklist reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 660
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 661
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 662
    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    .line 663
    return-void

    .line 666
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    .line 667
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 666
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 669
    .end local v0    # "ip":I
    :cond_1
    return-void
.end method

.method public blacklist resetSafely(J)V
    .locals 3
    .param p1, "now"    # J

    .line 305
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    .line 306
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->resetTable()V

    .line 307
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 309
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 310
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 311
    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 312
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 314
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 317
    .local v1, "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->resetSafely(J)V

    goto :goto_1

    .line 320
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 315
    .end local v1    # "state":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 324
    .end local v0    # "ip":I
    :cond_1
    return-void
.end method

.method public blacklist setCombinedState(IJ)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "now"    # J

    .line 466
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 467
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-eq v0, p1, :cond_3

    .line 469
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 470
    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 472
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 473
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    goto :goto_1

    .line 474
    :cond_0
    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    if-ne v3, v2, :cond_1

    .line 477
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningDuration:J

    .line 478
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningStartTime:J

    .line 479
    const/16 v2, 0x9

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 480
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aput-wide v0, v3, v2

    .line 479
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 483
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurCombinedState:I

    .line 486
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/UidState;

    .line 487
    .local v0, "uidState":Lcom/android/internal/app/procstats/UidState;
    if-nez v0, :cond_2

    .line 488
    new-instance v1, Lcom/android/internal/app/procstats/UidState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-direct {v1, v2, v3}, Lcom/android/internal/app/procstats/UidState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;I)V

    move-object v0, v1

    .line 489
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/UidState;->updateCombinedState(IJ)V

    .line 497
    .end local v0    # "uidState":Lcom/android/internal/app/procstats/UidState;
    :cond_3
    return-void
.end method

.method public blacklist setMultiPackage(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 268
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 269
    return-void
.end method

.method public blacklist setState(IIJLandroid/util/ArrayMap;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "memFactor"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 443
    .local p5, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    if-gez p1, :cond_1

    .line 444
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-lez v0, :cond_0

    .line 445
    mul-int/lit8 v0, p2, 0x10

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move p1, v0

    goto :goto_1

    .line 447
    :cond_1
    sget-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget v0, v0, p1

    mul-int/lit8 v1, p2, 0x10

    add-int p1, v0, v1

    .line 451
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJ)V

    .line 454
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_2

    .line 455
    return-void

    .line 458
    :cond_2
    if-eqz p5, :cond_3

    .line 459
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ip":I
    :goto_2
    if-ltz v0, :cond_3

    .line 460
    invoke-direct {p0, p5, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setCombinedState(IJ)V

    .line 459
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 463
    .end local v0    # "ip":I
    :cond_3
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1461
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1462
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1463
    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const-string v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, p0, :cond_1

    const-string v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;J)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .line 339
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/PssTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mTotalRunningPss:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningDuration(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_1

    .line 350
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 351
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 352
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 356
    .local v1, "numOfSources":I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 358
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 359
    .local v3, "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 360
    .local v4, "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3, v5, p1}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;)V

    .line 361
    invoke-virtual {v4, p1, v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 357
    .end local v3    # "key":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    .end local v4    # "src":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 363
    .end local v2    # "i":I
    :cond_3
    return-void
.end method
