.class public Lcom/android/internal/os/BatteryStatsHistory;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;,
        Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;,
        Lcom/android/internal/os/BatteryStatsHistory$EventLogger;,
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;,
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;,
        Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;
    }
.end annotation


# static fields
.field static final blacklist BATTERY_LEVEL_DETAILS_FLAG:I = 0x1

.field private static final blacklist DEBUG:Z = false

.field static final blacklist DELTA_BATTERY_CHARGE_FLAG:I = 0x1000000

.field static final blacklist DELTA_BATTERY_CURRENT_FLAG:I = 0x40000

.field static final blacklist DELTA_BATTERY_LEVEL_FLAG:I = 0x80000

.field static final blacklist DELTA_BATTERY_SEC_INFO_FLAG:I = 0x20000

.field static final blacklist DELTA_EVENT_FLAG:I = 0x800000

.field static final blacklist DELTA_STATE2_FLAG:I = 0x200000

.field static final blacklist DELTA_STATE_FLAG:I = 0x100000

.field static final blacklist DELTA_STATE_MASK:I = -0x2000000

.field static final blacklist DELTA_TIME_ABS:I = 0x1fffd

.field static final blacklist DELTA_TIME_INT:I = 0x1fffe

.field static final blacklist DELTA_TIME_LONG:I = 0x1ffff

.field static final blacklist DELTA_TIME_MASK:I = 0x1ffff

.field static final blacklist DELTA_WAKELOCK_FLAG:I = 0x400000

.field static final blacklist EXTENSION_POWER_STATS_DESCRIPTOR_FLAG:I = 0x1

.field static final blacklist EXTENSION_POWER_STATS_FLAG:I = 0x2

.field static final blacklist EXTENSION_PROCESS_STATE_CHANGE_FLAG:I = 0x4

.field private static final blacklist EXTRA_BUFFER_SIZE_WHEN_DIR_LOCKED:I = 0x186a0

.field private static final blacklist FILE_SUFFIX:Ljava/lang/String; = ".bh"

.field private static final blacklist HISTORY_DIR:Ljava/lang/String; = "battery-history"

.field static final blacklist HISTORY_TAG_INDEX_LIMIT:I = 0x7ffe

.field private static final blacklist MAX_HISTORY_TAG_STRING_LENGTH:I = 0x400

.field private static final blacklist MIN_FREE_SPACE:I = 0x6400000

.field static final blacklist STATE1_TRACE_MASK:I = 0x3fffffff

.field static final blacklist STATE2_TRACE_MASK:I = -0x1

.field static final blacklist STATE_BATTERY_HEALTH_MASK:I = 0x7

.field static final blacklist STATE_BATTERY_HEALTH_SHIFT:I = 0x1a

.field static final blacklist STATE_BATTERY_MASK:I = -0x1000000

.field static final blacklist STATE_BATTERY_PLUG_MASK:I = 0x3

.field static final blacklist STATE_BATTERY_PLUG_SHIFT:I = 0x18

.field static final blacklist STATE_BATTERY_STATUS_MASK:I = 0x7

.field static final blacklist STATE_BATTERY_STATUS_SHIFT:I = 0x1d

.field static final blacklist STATE_SEC_BATTERY_HEALTH_MASK:I = 0x8

.field static final blacklist STATE_SEC_BATTERY_HEALTH_SHIFT:I = 0xe

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHistory"

.field static final blacklist TAG_FIRST_OCCURRENCE_FLAG:I = 0x8000

.field private static final blacklist VERSION:I = 0xe00d2

.field private static final blacklist VERSION_SEC:I = 0xe0000


# instance fields
.field private blacklist mActiveFile:Landroid/util/AtomicFile;

.field private final blacklist mClock:Lcom/android/internal/os/Clock;

.field private blacklist mCurrentFile:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

.field private blacklist mCurrentParcel:Landroid/os/Parcel;

.field private blacklist mCurrentParcelEnd:I

.field private final blacklist mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

.field private blacklist mHaveBatteryLevel:Z

.field private final blacklist mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryBuffer:Landroid/os/Parcel;

.field private blacklist mHistoryBufferLastPos:I

.field private blacklist mHistoryBufferStartTime:J

.field private final blacklist mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

.field private final blacklist mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field private blacklist mHistoryParcels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHistoryTagPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/BatteryStats$HistoryTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastHistoryStepLevel:B

.field private blacklist mMaxHistoryBufferSize:I

.field private final blacklist mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field private blacklist mMutable:Z

.field private blacklist mNextHistoryTagIdx:I

.field private blacklist mNumHistoryTagChars:I

.field private blacklist mParcelIndex:I

.field private blacklist mRecordingHistory:Z

.field private final blacklist mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

.field private final blacklist mSystemDir:Ljava/io/File;

.field private blacklist mTraceLastState:I

.field private blacklist mTraceLastState2:I

.field private blacklist mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

.field private blacklist mTrackRunningHistoryElapsedRealtimeMs:J

.field private blacklist mTrackRunningHistoryUptimeMs:J

.field private final blacklist mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final blacklist mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final blacklist mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/os/PowerStats$Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smhasFreeDiskSpace(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/internal/os/BatteryStatsHistory;->hasFreeDiskSpace(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    iput-byte v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mSystemDir:Ljava/io/File;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    new-instance v3, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    invoke-direct {v3}, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    array-length v5, v3

    invoke-virtual {v4, v3, v1, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-direct {p0, p1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;Ljava/io/File;IILcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;Ljava/io/File;IILcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;Ljava/io/File;IILcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    iput-byte v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mSystemDir:Ljava/io/File;

    iput p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    iput-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    iput-object p8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    iput-object p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    iput-object p7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    iput-object p9, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    iput-object p10, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    :goto_0
    if-eqz p10, :cond_2

    iget-object v0, p10, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    new-instance v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    new-instance v1, Ljava/io/File;

    const-string v2, "battery-history"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p7, p3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;-><init>(Ljava/io/File;Lcom/android/internal/os/MonotonicClock;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->load()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->getLastFile()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->makeBatteryHistoryFile()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    move-result-object v0

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;)V

    goto :goto_1

    :cond_4
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    :goto_1
    return-void
.end method

.method private blacklist buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 4

    const/4 v0, 0x0

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v2, 0x19

    const/high16 v3, -0x2000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v0

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    const/16 v2, 0xf

    const v3, 0x1ff8000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v0

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x3fff

    :cond_0
    const/4 v2, 0x1

    const/16 v3, 0x7ffe

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v0

    return v0
.end method

.method private blacklist buildBatterySecInfo(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 3

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist buildCurrentNTemperature(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 3

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->current:S

    shl-int/lit8 v1, v1, 0x0

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 4

    const/4 v0, 0x0

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    :cond_2
    :goto_0
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x1d

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x1a

    or-int/2addr v1, v2

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x8

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1
.end method

.method private blacklist buildTemperature2(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 3

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    shl-int/lit8 v0, v0, 0x1d

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    shl-int/lit8 v1, v1, 0x1c

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    shl-int/lit8 v1, v1, 0x1b

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    shl-int/lit8 v1, v1, 0x1a

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    shl-int/lit8 v1, v1, 0x19

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist checkImmutable()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterating over a mutable battery history"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createFromBatteryUsageStatsParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsHistory;
    .locals 1

    new-instance v0, Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private blacklist ensureHistoryTagArray()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, -0x8001

    and-int/2addr v3, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static blacklist hasFreeDiskSpace(Ljava/io/File;)Z
    .locals 5

    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    const-wide/32 v3, 0x6400000

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist hasFreeDiskSpace$ravenwood(Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist initHistoryBuffer()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataCapacity(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;->clear()V

    :cond_0
    return-void
.end method

.method private blacklist maybeFlushBufferAndWriteHistoryItem(Landroid/os/BatteryStats$HistoryItem;JJ)Z
    .locals 10

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const-string v3, "BatteryStatsHistory"

    if-nez v1, :cond_1

    const-string/jumbo v1, "mMaxHistoryBufferSize should not be zero when writing history"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x400

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->tryLock()Z

    move-result v1

    if-nez v1, :cond_3

    iget v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const v5, 0x186a0

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_2

    return v2

    :cond_2
    const-string v2, "History buffer overflow exceeds 100000 bytes"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsHistory;->startNextFile(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    :cond_4
    const/4 v9, 0x0

    move-object v4, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->startRecordingHistory(JJZ)V

    move-object v3, p0

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    const/4 v3, 0x1

    return v3

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    :cond_5
    throw v3
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;Z)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_2

    array-length v5, v4

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    array-length v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private blacklist recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V
    .locals 7

    xor-int v0, p1, p2

    and-int/2addr v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_4

    aget-object v2, p4, v1

    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, v0

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v3, :cond_3

    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    goto :goto_2

    :cond_3
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p2

    iget v4, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v3, v4

    :goto_2
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery_stats."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->traceCounter(Ljava/lang/String;I)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private blacklist recordTraceEvents(ILandroid/os/BatteryStats$HistoryTag;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, -0xc001

    and-int/2addr v0, p1

    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const-string v1, "+"

    goto :goto_0

    :cond_1
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_2

    const-string v1, "-"

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    nop

    sget-object v2, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    if-ltz v0, :cond_4

    array-length v3, v2

    if-lt v0, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battery_stats."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->traceInstantEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist setActiveFile(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;)V
    .locals 1

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    return-void
.end method

.method private blacklist setBitField(IIII)I
    .locals 3

    shl-int v0, p2, p3

    not-int v1, p4

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fit in the bit field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryStatsHistory"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    and-int/2addr v0, p4

    :cond_0
    not-int v1, p4

    and-int/2addr v1, p1

    or-int/2addr v1, v0

    return v1
.end method

.method private blacklist startNextFileLocked(J)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistory()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->makeBatteryHistoryFile()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create history file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatteryStatsHistory"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataCapacity(I)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x8000

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->-$$Nest$mcleanup(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;)V

    return-void
.end method

.method private blacklist verifyVersion(Landroid/os/Parcel;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xe00d2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private blacklist writeHistoryBuffer(Landroid/os/Parcel;)V
    .locals 3

    const v0, 0xe00d2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    return-void
.end method

.method private blacklist writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v3, :cond_39

    iget-byte v5, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v5, :cond_0

    goto/16 :goto_18

    :cond_0
    const/4 v5, 0x0

    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v8, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v6, v8

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v8

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v9

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildCurrentNTemperature(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v10

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildTemperature2(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v11

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatterySecInfo(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v12

    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-ltz v13, :cond_3

    const-wide/32 v13, 0x7fffffff

    cmp-long v13, v6, v13

    if-lez v13, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v13, 0x1fffd

    cmp-long v13, v6, v13

    if-ltz v13, :cond_2

    const v13, 0x1fffe

    goto :goto_1

    :cond_2
    long-to-int v13, v6

    goto :goto_1

    :cond_3
    :goto_0
    const v13, 0x1ffff

    :goto_1
    iget v14, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v15, -0x2000000

    and-int/2addr v14, v15

    or-int/2addr v14, v13

    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v15

    iget-byte v4, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-wide/from16 v16, v6

    iget-byte v6, v0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    if-lt v4, v6, :cond_5

    iget-byte v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-byte v4, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    invoke-interface {v4}, Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;->getHistoryStepDetails()Landroid/os/BatteryStats$HistoryStepDetails;

    move-result-object v4

    iput-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v4, :cond_6

    or-int/lit8 v15, v15, 0x1

    iget-byte v4, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    :cond_6
    :goto_3
    if-eq v15, v8, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_8

    const/high16 v7, 0x80000

    or-int/2addr v14, v7

    :cond_8
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildCurrentNTemperature(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v7

    if-eq v7, v10, :cond_9

    const/16 v18, 0x1

    goto :goto_5

    :cond_9
    const/16 v18, 0x0

    :goto_5
    const/high16 v19, 0x40000

    if-eqz v18, :cond_a

    or-int v14, v14, v19

    :cond_a
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildTemperature2(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v4

    if-eq v4, v11, :cond_b

    const/16 v20, 0x1

    goto :goto_6

    :cond_b
    const/16 v20, 0x0

    :goto_6
    if-eqz v20, :cond_c

    or-int v14, v14, v19

    :cond_c
    move/from16 v19, v8

    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatterySecInfo(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v8

    if-eq v8, v12, :cond_d

    const/16 v21, 0x1

    goto :goto_7

    :cond_d
    const/16 v21, 0x0

    :goto_7
    const/high16 v22, 0x20000

    if-eqz v21, :cond_e

    or-int v14, v14, v22

    :cond_e
    move/from16 v23, v10

    iget v10, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    move/from16 v24, v11

    iget v11, v3, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-eq v10, v11, :cond_f

    const/4 v10, 0x1

    goto :goto_8

    :cond_f
    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_10

    or-int v14, v14, v22

    :cond_10
    iget v11, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    move/from16 v25, v12

    iget v12, v3, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-eq v11, v12, :cond_11

    const/4 v11, 0x1

    goto :goto_9

    :cond_11
    const/4 v11, 0x0

    :goto_9
    if-eqz v11, :cond_12

    or-int v14, v14, v22

    :cond_12
    iget v12, v2, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    move/from16 v26, v8

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    if-eq v12, v8, :cond_13

    const/4 v8, 0x1

    goto :goto_a

    :cond_13
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_14

    or-int v14, v14, v22

    :cond_14
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v12

    if-eq v12, v9, :cond_15

    const/16 v27, 0x1

    goto :goto_b

    :cond_15
    const/16 v27, 0x0

    :goto_b
    if-eqz v27, :cond_16

    const/high16 v28, 0x100000

    or-int v14, v14, v28

    :cond_16
    move/from16 v28, v9

    iget-object v9, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v9, :cond_17

    or-int/lit8 v5, v5, 0x2

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    iget-object v0, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    or-int/lit8 v5, v5, 0x1

    :cond_17
    iget-object v0, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v0, :cond_18

    or-int/lit8 v5, v5, 0x4

    :cond_18
    if-eqz v5, :cond_19

    iget v0, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int v0, v0, v22

    iput v0, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_c

    :cond_19
    iget v0, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v9, -0x20001

    and-int/2addr v0, v9

    iput v0, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    :goto_c
    iget v0, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v9, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v0, v9, :cond_1b

    if-eqz v5, :cond_1a

    goto :goto_d

    :cond_1a
    const/4 v0, 0x0

    goto :goto_e

    :cond_1b
    :goto_d
    const/4 v0, 0x1

    :goto_e
    if-eqz v0, :cond_1c

    const/high16 v9, 0x200000

    or-int/2addr v14, v9

    :cond_1c
    iget-object v9, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v9, :cond_1d

    iget-object v9, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v9, :cond_1e

    :cond_1d
    const/high16 v9, 0x400000

    or-int/2addr v14, v9

    :cond_1e
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v9, :cond_1f

    const/high16 v9, 0x800000

    or-int/2addr v14, v9

    :cond_1f
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    move/from16 v22, v5

    iget v5, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    if-eq v9, v5, :cond_20

    const/4 v5, 0x1

    goto :goto_f

    :cond_20
    const/4 v5, 0x0

    :goto_f
    if-eqz v5, :cond_21

    const/high16 v9, 0x1000000

    or-int/2addr v14, v9

    :cond_21
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    const v9, 0x1fffe

    if-lt v13, v9, :cond_23

    if-ne v13, v9, :cond_22

    move v9, v13

    move/from16 v29, v14

    move-wide/from16 v13, v16

    long-to-int v3, v13

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    :cond_22
    move v9, v13

    move/from16 v29, v14

    move-wide/from16 v13, v16

    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_10

    :cond_23
    move v9, v13

    move/from16 v29, v14

    move-wide/from16 v13, v16

    :goto_10
    if-eqz v6, :cond_24

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    :cond_24
    if-nez v18, :cond_25

    if-eqz v20, :cond_26

    :cond_25
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_26
    if-nez v21, :cond_27

    if-nez v10, :cond_27

    if-nez v11, :cond_27

    if-eqz v8, :cond_28

    :cond_27
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v3, v26

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    nop

    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_28
    if-eqz v27, :cond_29

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    :cond_29
    if-eqz v0, :cond_2a

    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2a
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const v16, 0x8000

    if-nez v3, :cond_2c

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_2b

    goto :goto_11

    :cond_2b
    move/from16 v17, v0

    move/from16 v30, v4

    move/from16 v32, v6

    move-object/from16 v0, p0

    goto :goto_15

    :cond_2c
    :goto_11
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_2d

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v3

    goto :goto_12

    :cond_2d
    move/from16 v17, v0

    move-object/from16 v0, p0

    const v3, 0xffff

    :goto_12
    move/from16 v30, v4

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v4, :cond_2e

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v4

    goto :goto_13

    :cond_2e
    const v4, 0xffff

    :goto_13
    shl-int/lit8 v31, v4, 0x10

    move/from16 v32, v6

    or-int v6, v31, v3

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v6, :cond_2f

    and-int v6, v3, v16

    if-eqz v6, :cond_2f

    iget-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move/from16 v31, v3

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v3}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    goto :goto_14

    :cond_2f
    move/from16 v31, v3

    :goto_14
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_30

    and-int v3, v4, v16

    if-eqz v3, :cond_30

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    :cond_30
    :goto_15
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_31

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v3

    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v6, 0xffff

    and-int/2addr v4, v6

    const/high16 v6, -0x10000

    move/from16 v31, v7

    const/16 v7, 0x10

    invoke-direct {v0, v4, v3, v7, v6}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    and-int v6, v3, v16

    if-eqz v6, :cond_32

    iget-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    goto :goto_16

    :cond_31
    move/from16 v31, v7

    :cond_32
    :goto_16
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v3, :cond_33

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v3, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->writeToParcel(Landroid/os/Parcel;)V

    :cond_33
    if-eqz v5, :cond_34

    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_34
    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    if-eqz v22, :cond_37

    move/from16 v3, v22

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v4, :cond_36

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_35

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v4, v1}, Lcom/android/internal/os/PowerStats$Descriptor;->writeSummaryToParcel(Landroid/os/Parcel;)V

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    iget-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v6, v6, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_35
    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {v4, v1}, Lcom/android/internal/os/PowerStats;->writeToParcel(Landroid/os/Parcel;)V

    :cond_36
    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v4, :cond_38

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    invoke-virtual {v4, v1}, Landroid/os/BatteryStats$ProcessStateChange;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_17

    :cond_37
    move/from16 v3, v22

    :cond_38
    :goto_17
    return-void

    :cond_39
    :goto_18
    const v3, 0x1fffd

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method private blacklist writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V
    .locals 19

    move-object/from16 v7, p0

    move-wide/from16 v0, p1

    move-object/from16 v8, p5

    iget v2, v8, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v2, :cond_0

    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without a name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryStatsHistory"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->tracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v8, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v4, v8, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v7, v2, v4}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceEvents(ILandroid/os/BatteryStats$HistoryTag;)V

    iget v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    iget v4, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v5, 0x3fffffff    # 1.9999999f

    sget-object v6, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-direct {v7, v2, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V

    iget v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    iget v4, v8, Landroid/os/BatteryStats$HistoryItem;->states2:I

    sget-object v5, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-direct {v7, v2, v4, v3, v5}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V

    iget v2, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    iget v2, v8, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    :cond_1
    iget-boolean v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-nez v2, :cond_3

    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-boolean v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v2, :cond_d

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v4

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v9, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v9, v4, v9

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v4, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v11, v2, v4

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v4, v8, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v12, v2, v4

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v4, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v13, v2, v4

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object v4, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v14, v2, v4

    iget v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    if-ltz v2, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v2, :cond_a

    const-wide/16 v4, 0x3e8

    cmp-long v2, v9, v4

    if-gez v2, :cond_a

    and-int v2, v11, v13

    if-nez v2, :cond_a

    and-int v2, v12, v14

    if-nez v2, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean v2, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-nez v2, :cond_a

    iget-boolean v2, v8, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-nez v2, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v2, :cond_4

    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v2, :cond_a

    :cond_4
    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v2, :cond_5

    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v2, :cond_a

    :cond_5
    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-nez v2, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v2, :cond_6

    iget v2, v8, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-nez v2, :cond_a

    :cond_6
    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v4, v8, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-short v4, v8, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v2, v2, Landroid/os/BatteryStats$HistoryItem;->current:S

    iget-short v4, v8, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    iget v4, v8, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    iget-byte v4, v8, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iget v4, v8, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iget v4, v8, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    iget v4, v8, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    if-ne v2, v4, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-nez v2, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-nez v2, :cond_a

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v4, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v4, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    iput v3, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    sub-long/2addr v0, v9

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v2, :cond_7

    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    :cond_7
    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v2, :cond_8

    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    :cond_8
    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v2, :cond_9

    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput v2, v8, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, v8, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    :cond_9
    iget-object v2, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    move-wide v15, v0

    goto :goto_0

    :cond_a
    move-wide v15, v0

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide v2, v15

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHistory;->maybeFlushBufferAndWriteHistoryItem(Landroid/os/BatteryStats$HistoryItem;JJ)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-object v6, v0

    invoke-virtual {v6, v8}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const/4 v0, 0x0

    iput-object v0, v6, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, v6, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    iput v1, v6, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v0, v6, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-boolean v1, v6, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    iput-object v0, v6, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iput-object v0, v6, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    const/16 v17, 0x7

    move-object/from16 v0, p0

    move-wide v1, v15

    move-wide/from16 v3, p3

    move-object v5, v6

    move-object/from16 v18, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    :cond_c
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide v1, v15

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    return-void

    :cond_d
    new-instance v2, Ljava/util/ConcurrentModificationException;

    const-string v3, "Battery history is not writable"

    invoke-direct {v2, v3}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean v0, v0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p6, p5}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Significantly earlier event written to battery history: time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryStatsHistory"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iput-boolean v0, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V

    const/4 v2, 0x0

    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput v1, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-boolean v1, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    return-void

    :cond_3
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Battery history is not writable"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I
    .locals 7

    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v1, "BatteryStatsHistory"

    if-nez v0, :cond_0

    const-string/jumbo v0, "writeHistoryTag called with null name"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iput-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Long battery history tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const v2, 0x8000

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    const v4, -0x8001

    and-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v3

    :cond_3
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    const/16 v4, 0x7ffe

    if-ge v3, v4, :cond_5

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    new-instance v4, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    invoke-virtual {v4, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    iput v3, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    add-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    or-int/2addr v2, v3

    return v2

    :cond_5
    const/4 v2, -0x1

    iput v2, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    const v2, 0xfffe

    return v2
.end method

.method private blacklist writeParcelToFileLocked(Landroid/os/Parcel;Landroid/util/AtomicFile;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v0, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;->writeCommitSysConfigFile(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "BatteryStatsHistory"

    const-string v3, "Error writing battery statistics"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :goto_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->writeToParcel(Landroid/os/Parcel;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist commitCurrentHistoryBatchLocked()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist continueRecordingHistory()V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->getFileCount()I

    move-result v0

    if-gt v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 v7, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    const/4 v13, 0x0

    move-object v8, p0

    move-wide v9, v2

    move-wide v11, v4

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/os/BatteryStatsHistory;->startRecordingHistory(JJZ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist copy()Lcom/android/internal/os/BatteryStatsHistory;
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    new-instance v12, Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mSystemDir:Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v12

    move-object v2, v0

    move-object v11, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;Ljava/io/File;IILcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V

    monitor-exit p0

    return-object v12

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist forceRecordAllHistory()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getActiveFile()Landroid/util/AtomicFile;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method public blacklist getFilesNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->getFileNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHighSpeakerVolumeState()B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getHistoryBufferStartTime(Landroid/os/Parcel;)J
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-wide v1
.end method

.method public blacklist getHistoryStringPoolBytes()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getHistoryStringPoolSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getHistoryTagPoolString(I)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->ensureHistoryTagArray()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getHistoryTagPoolUid(I)I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->ensureHistoryTagArray()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getHistoryUsedSize()I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist getNextParcel(JJ)Landroid/os/Parcel;
    .locals 11

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->checkImmutable()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFile:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->getNextFile(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;JJ)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/os/BatteryStatsHistory;->readFileToParcel(Landroid/os/Parcel;Landroid/util/AtomicFile;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    add-int v5, v4, v3

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    iput-object v9, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    if-ge v4, v5, :cond_4

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFile:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object v1

    :cond_4
    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    move-object v4, v0

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->getNextFile(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;JJ)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v0, :cond_9

    :goto_2
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->verifyVersion(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    add-int v5, v4, v3

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    if-ge v4, v5, :cond_8

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object v1

    :cond_8
    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gtz v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method public blacklist getStartTime()J
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->getFirstFile()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->monotonicTimeMs:J

    monitor-exit p0

    return-wide v1

    :cond_0
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    if-nez v0, :cond_0

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

.method public blacklist isRecordingHistory()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist isResetEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public blacklist iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .locals 7

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->copy()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->lock()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFile:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    new-instance v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;-><init>(Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    return-object v0
.end method

.method blacklist iteratorFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    :cond_0
    return-void
.end method

.method public blacklist maybeUpdateWakelockTag(JJLjava/lang/String;I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    :cond_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist readFileToParcel(Landroid/os/Parcel;Landroid/util/AtomicFile;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    nop

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->verifyVersion(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatteryStatsHistory"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->readHistoryBuffer(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    return-void
.end method

.method public blacklist readHistoryBuffer(Landroid/os/Parcel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0xe00d2

    if-eq v0, v1, :cond_0

    const-string v2, "BatteryStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readHistoryBuffer: version got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; erasing old stats"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    mul-int/lit8 v3, v3, 0x64

    if-ge v1, v3, :cond_2

    and-int/lit8 v3, v1, -0x4

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3, p1, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    add-int v3, v2, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    monitor-exit p0

    return-void

    :cond_1
    new-instance v3, Landroid/os/ParcelFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File corrupt: history data buffer not aligned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v3, Landroid/os/ParcelFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File corrupt: history data buffer too large "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist readSummary()Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    const-string v1, "BatteryStatsHistory"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "readSummary: no history file associated with this instance"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v5

    array-length v6, v5

    if-lez v6, :cond_1

    array-length v6, v5

    invoke-virtual {v0, v5, v2, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readHistoryBuffer(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "Error reading battery history"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v4, v6, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iput v5, v6, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v3, v6, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    if-lt v3, v7, :cond_1

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    :cond_1
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    iget-object v8, v6, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist recordBatteryState(JJIZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p5

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p0, p6}, Lcom/android/internal/os/BatteryStatsHistory;->setPluggedInState(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordCurrentTimeChange(JJJ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 v7, 0x5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordDataConnectionTypeChangeEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v2, 0x9

    const/16 v3, 0x3e00

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordDeviceIdleEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/16 v2, 0x19

    const/high16 v3, 0x6000000

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordEvent(JJILjava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p6, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p7, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordGpsSignalQualityEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v2, 0x7

    const/16 v3, 0x180

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordNrStateChangeEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/16 v2, 0x9

    const/16 v3, 0x600

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordPhoneStateChangeEvent(JJIIII)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    not-int v2, p6

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v0, -0x1

    if-eq p7, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v3, 0x6

    const/16 v4, 0x1c0

    invoke-direct {p0, v2, p7, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v2

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    :cond_0
    if-eq p8, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v2, 0x3

    const/16 v3, 0x38

    invoke-direct {p0, v1, p8, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordPowerStats(JJLcom/android/internal/os/PowerStats;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordProcessStateChange(JJII)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput p5, v0, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput p6, v0, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordScreenBrightnessEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordShutdownEvent(JJJ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v7, 0x8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordState2StartEvent(JJI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordState2StartEvent(JJIILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const v1, 0x8015

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordState2StopEvent(JJI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordState2StopEvent(JJIILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v1, 0x4015

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordStateChangeEvent(JJII)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    not-int v2, p6

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordStateStartEvent(JJI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordStateStartEvent(JJIILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const v1, 0x8015

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordStateStopEvent(JJI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordStateStopEvent(JJIILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v1, 0x4015

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordWakelockStartEvent(JJLjava/lang/String;I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    const/high16 v6, 0x40000000    # 2.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStartEvent(JJI)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordWakelockStopEvent(JJLjava/lang/String;I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz p5, :cond_0

    move-object v1, p5

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    const/high16 v6, 0x40000000    # 2.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJI)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordWakeupEvent(JJLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordWifiConsumedCharge(JJD)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    add-double/2addr v1, p5

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordWifiSignalStrengthChangeEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v2, 0x4

    const/16 v3, 0x70

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordWifiSupplicantStateChangeEvent(JJI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->reset()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->makeBatteryHistoryFile()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setBatteryState(IIIIIII)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p2

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p3

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p4

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short v1, p5

    iput-short v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short v1, p6

    iput-short v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p7, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setBatteryState(IIIIIIIIIIII)V
    .locals 2

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/os/BatteryStatsHistory;->setBatteryState(IIIIIII)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p8, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p9

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p10, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p11, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p12

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setBatteryState(ZIII)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->setChargingState(Z)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p2

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p3

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setBluetoothScanState(Z)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setChargingState(Z)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setHighSpeakerVolumeState(B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-byte p1, v0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setHistoryRecordingEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setMaxHistoryBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    return-void
.end method

.method public blacklist setMaxHistoryFiles(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->setMaxHistoryFiles(I)V

    :cond_0
    return-void
.end method

.method public blacklist setPluggedInState(Z)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setProtectBatteryState(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p1, v0, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setSubScreenState(JJII)V
    .locals 6

    monitor-enter p0

    not-int v0, p6

    and-int/2addr v0, p5

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    not-int v3, p6

    and-int/2addr v3, p5

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    iput-byte v5, v4, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-byte v1, v4, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setTemperatureNCurrent(IIIII)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p2

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p3

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p4

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short v1, p5

    iput-short v1, v0, Landroid/os/BatteryStats$HistoryItem;->current:S

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setWifiApState(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist startNextFile(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsHistory;->startNextFileLocked(J)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist startRecordingHistory(JJZ)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    if-eqz p5, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    move v9, v0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist writeHistory()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BatteryStatsHistory"

    const-string/jumbo v1, "writeHistory: this instance instance is read-only"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->write()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryBuffer(Landroid/os/Parcel;)V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->writeParcelToFileLocked(Landroid/os/Parcel;Landroid/util/AtomicFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist writeHistoryItem(JJ)V
    .locals 18

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    monitor-enter p0

    :try_start_0
    iget-wide v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    sub-long v12, v8, v0

    iget-wide v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    sub-long v14, v10, v0

    const-wide/16 v0, 0x14

    sub-long v0, v12, v0

    cmp-long v0, v14, v0

    if-gez v0, :cond_0

    sub-long v0, v12, v14

    sub-long v16, v8, v0

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v6, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v1, p0

    move-wide/from16 v2, v16

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V

    :cond_0
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput-wide v8, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    iput-wide v10, v7, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    iget-object v6, v7, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;Z)V
    .locals 4

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$HistoryTag;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v3, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist writeToBatteryUsageStatsParcel(Landroid/os/Parcel;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryBuffer(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
